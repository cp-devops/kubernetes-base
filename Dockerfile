FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY . app.py/ app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN makefile

## Step 4:
EXPOSE port 80

## Step 5:
RUN app.py

