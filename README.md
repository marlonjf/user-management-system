# User Management Project

- UMP is a user management application for Rails.

# Stack

- ruby 2.7.1
- rails 6.0.3

# Most Important Gems

- bootstrap
- devise
- redis
- webpacker

# Getting started

- Be sure to have [docker] installed on your machine

- Clone this repository
```
git clone https://github.com/marlonjf/user-management-system.git
```
- Go to project folder
```
cd user-management-system
```
- Create .env file in the project root directory
- variables in .env file below:
```
DATABASE_NAME=fullstack
DATABASE_USER=postgres
DATABASE_PASSWORD=fullstack-password
DATABASE_HOST=database
DATABASE_PORT=5432
RAILS_MAX_THREADS=5
REDIS_HOST=redis
REDIS_URL=redis://redis:6379/1
DATABASE_NAME_TEST=fullstack_test

```
- run docker to start the server
```
docker-compose up
```

[docker]: https://docs.docker.com/get-docker/
