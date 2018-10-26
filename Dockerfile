FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /srv

COPY requirements requirements
RUN pip install -r requirements/production.txt

# Copy the whole project (use .dockerignore to exclude files)
COPY . .
