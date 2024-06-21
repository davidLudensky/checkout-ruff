# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the pyproject.toml and poetry.lock files to the container
COPY pyproject.toml poetry.lock /app/

# Install Poetry
RUN pip install poetry

# create .venv in project directory
RUN poetry config virtualenvs.in-project true

# Install the project dependencies
RUN poetry install --no-root

# Copy the rest of the application code to the container
COPY checkout_ruff /app/checkout_ruff

# Set the default command for the container
CMD ["poetry", "run", "python", "-m", "checkout_ruff"]
