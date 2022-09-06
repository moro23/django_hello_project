# Pull base image
FROM python:3.9

# Set environmental variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /d4p_Repo

# Install dependencies 
COPY Pipfile Pipfile.lock /d4p_Repo/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /d4p_Repo/