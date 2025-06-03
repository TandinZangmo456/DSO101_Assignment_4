# Secure CI/CD Pipeline with Docker and GitHub Actions

## Introduction

This project implements a secure CI/CD pipeline using Docker and GitHub Actions. It follows best practices to ensure that sensitive credentials are protected and that containerized applications are securely built and deployed.

## Steps to Implement GitHub Actions Secure Deployment

### Step 1: Set up a Python Application in GitHub
Created minimal Flask web application and committed to a GitHub repository naming secure-ci-cd-app. The application includes a basic route to test deployment.

### Step 2: Create Dockerfile
Created a secure Dockerfile to containerize the app and it :
 - Uses a lightweight python image.
 - Installs dependencies
 - Creates and runs as a non-root user for security
 

### Step 3: Secure Docker Hub Credentials
To ensure credentials are never exposed:

A Docker Hub access token is created.

Two secrets were added in the GitHub repository : 

- DOCKERHUB_USERNAME 

- DOCKERHUB_TOKEN

### Step 4: Configure GitHub Actions Workflow
A GitHub Actions workflow file is added. This file defines the CI/CD pipeline. It performs the following:

- Runs only when code is pushed to the main branch.

- Logs into Docker Hub using secrets.

- Builds the Docker image.

- Pushes the image to Docker Hub automatically.

