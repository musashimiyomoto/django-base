[![Python 3.12](https://img.shields.io/badge/python-3.12-blue.svg)](https://www.python.org/downloads/release/python-3110/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Imports: isort](https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336)](https://pycqa.github.io/isort/)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![Pyright](https://img.shields.io/badge/pyright-checked-informational.svg)](https://github.com/microsoft/pyright/)

------------------------------------------------------------------------

# Django Base

This project is a base template for Django applications.

## Prerequisites

- **Docker & Docker Compose** - for containerized development
- **Poetry** - for local development and dependency management

## Quick Start with Docker

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <project-folder>
   ```
2. Copy the example environment variables:
   ```bash
   cp .env.example .env
   # Edit .env as needed
   ```
3. Build and start the containers:
   ```bash
   docker-compose up --build
   ```
4. The application will be available at http://localhost:8000
