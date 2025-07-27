#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

readonly cmd="$*"

###########################
echo "Running migrations..."
python manage.py makemigrations
python manage.py migrate

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Creating superuser if not exists..."
python manage.py shell -c "
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(username='${DJANGO_SUPERUSER_USERNAME}').exists():
    User.objects.create_superuser(
       '${DJANGO_SUPERUSER_USERNAME}',
       '${DJANGO_SUPERUSER_EMAIL}',
       '${DJANGO_SUPERUSER_PASSWORD}',
    )
    print('Superuser created successfully')
else:
    print('Superuser already exists')
"

echo "Starting application..."
###########################

exec $cmd
