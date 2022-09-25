# trusty32

## 1. Project Description

This project builds a Vagrant box for Ubuntu Trusty 14.04 LTS 32bit based on hashicorp/ubuntu32.

Available on Vagrant Cloud https://app.vagrantup.com/pharazon/boxes/trusty32

### 1.1. Business Vision

### 1.2. Task Management

### 1.3. Personas

### 1.4. Use Cases

### 1.5. Non-Functional Requirements

## 2. Architecture

### 2.1. Technologies

All PHZ Full Stack -projects should encapsulate all environments by virtualization. Choose one of the following for your project:

Dev
* Vagrant/Virtualbox

CI
* use dev -env on ci.in.phz.fi + Jenkins executors running Docker or Vagrant/Virtualbox.
* Jenkins

Staging
* N/A

Production
* N/A

### 2.2. Naming, Terms and Key Concepts

Environments and the configs should be named as
* dev: docker-compose.yml (i.e. use the default names for dev env), but .env.dev
* (ci): use the dev -env on CI
* stg: docker-compose.stg.yml, .env.stg
* prod: docker-compose.prod.yml, .env.prod

### 2.3. Coding Convention

Directory structure
* doc/ for UML documents
* etc/ for nginx, ssh etc configs. Can be cp -pr etc/ /etc to the virtual machine during provisioning and matches the os directory structure
* results/ test results
* reports/ for e.g. code coverage reports
* src/ for source code
** Note! Source code should be placed under a single folder (src) that can be mounted over Docker -volume or Vagrant -shared folder inside the virtual machine so that node_modules or vendor directory are not on the shared folder. See https://wiki.phz.fi/Docker and https://wiki.phz.fi/Vagrant for further details how to circumvent the problems.
* tests/ for tests

### 2.4. Development Guide

Add here examples and hints of good ways how to code the project. Convert the silent knowledge as tacit knowledge here.
* See https://en.wikipedia.org/wiki/Knowledge_management

## 3. Development Environment
Note! PHZ Coding Convention: name this environment as dev.

### 3.1. Prerequisites

### 3.2. Start the Application

./up.sh

Tear down

./down.sh

Status

./status.sh

### 3.3. Access the Application

### 3.4. Run Tests

### 3.5. IDE Setup and Debugging

### 3.6. Version Control

### 3.7. Databases and Migrations

### 3.8. Continuous Integration

## 4. Staging Environment
Note! PHZ Coding Convention: name this environment as stg.

### 4.1. Access

### 4.2. Deployment

### 4.3. Smoke Tests

#### 4.3.1. Automated Test Cases

#### 4.3.2. Manual Test Cases

### 4.4. Rollback

### 4.5. Logs

### 4.6. Monitoring

## 5. Production Environment
Note! PHZ Coding Convention: name this environment as prod.

### 5.1. Access

### 5.2. Deployment

### 5.3. Smoke Tests

#### 5.3.1. Automated Test Cases

#### 5.3.2. Manual Test Cases

### 5.4. Rollback

### 5.5. Logs

### 5.6. Monitoring

## 6. Operating Manual

### 6.1 Scheduled Jobs

### 6.2 Manual Processes

## 7. Problems

### 7.1. Environments

### 7.2. Coding

### 7.3. Dependencies

Add here TODO and blockers that you have found related to upgrading to newer versions.
List the library/framework/service, version, and then the error message.

