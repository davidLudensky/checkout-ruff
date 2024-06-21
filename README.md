
# 🌍 Hello World Poetry + Ruff Project

This is a simple Python project that prints "Hello, World!" using Poetry for dependency management.
It also includes `ruff`, a fast Python linter, and a pre-commit hook setup to ensure code quality.

## 📋 Project Structure

```
checkout-ruff/
├── checkout_ruff/
│   └── hello_world.py       # Main application code
│   └── __init__.py
├── tests/
│   └── test_hello_world.py  # Test code
├── pyproject.toml       # Poetry configuration file
├── poetry.lock          # Locked dependencies
├── Dockerfile           # Docker configuration
├── .dockerignore        # Docker ignore file
├── .pre-commit-config.yaml  # Pre-commit configuration
├── ruff.toml            # Ruff configuration
└── README.md            # Project documentation
```

## 🚀 Getting Started

### 🛠️ Installation

First, install Poetry if you haven't already:

```powershell
python -m pip install poetry
```

Then, install the project dependencies:

```sh
poetry install --no-root
```

### 🐳 Docker Setup

To build the Docker image:

```sh
docker build -t checkout-ruff .
```

To run the Docker container:

```sh
docker run --rm checkout-ruff
```

## 📝 Usage

To run the project:

```sh
poetry run python -m checkout_ruff
```

## ✅ Running Tests

To run the tests:

```sh
poetry run pytest
```

## 🧹 Code Quality with Ruff

### 📋 What is Ruff?

`Ruff` is a fast Python linter, written in Rust. It is designed to provide linting and code quality checks for Python codebases. Using Ruff helps maintain consistent code style and catch potential errors before they make it into your codebase.

### 🛠️ Configuration

The Ruff linter is configured in the `ruff.toml` file. You can customize it to fit your project's needs.

### 💻 Running Ruff

You can run Ruff manually:

```sh
poetry run ruff check .
```

### 🔄 Pre-commit Hook

This project uses `pre-commit` to automatically run Ruff before each commit, ensuring that all code meets the specified standards.

To manually run the pre-commit hooks on all files:

```sh
poetry run pre-commit run --all-files
```

## 📚 About Poetry

### 📋 What is Poetry?

`Poetry` is a dependency management tool for Python that simplifies the process of managing dependencies, packaging, and publishing Python projects. It creates a virtual environment for the project and handles dependencies in a more organized way compared to traditional methods.

### 🛠️ Key Features

- **Dependency Management**: Automatically resolves and installs dependencies.
- **Project Management**: Provides a standard structure and format for Python projects.
- **Publishing**: Simplifies the process of publishing packages to PyPI.

### 📖 Documentation

You can find more information and detailed documentation on the [Poetry website](https://python-poetry.org/docs/).

## 📂 Additional Resources

- [Poetry Documentation](https://python-poetry.org/docs/)
- [Ruff GitHub Repository](https://github.com/charliermarsh/ruff)
- [Docker Documentation](https://docs.docker.com/get-started/)

---

Feel free to contribute to this project by submitting issues or pull requests. Let's make coding more efficient and fun! 🎉
