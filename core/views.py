from django.http import HttpRequest, HttpResponse
from django.shortcuts import render


def index(request: HttpRequest) -> HttpResponse:
    """Render main page.

    Args:
        request: HTTP request.

    Returns:
        HTTP response with rendered template.

    """
    return render(request=request, template_name="index.html")
