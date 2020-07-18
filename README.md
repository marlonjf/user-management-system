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

- Be sure to have [docker](https://docs.docker.com/get-docker/) installed on your machine

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
- Build the container image and create the services running the command below, -d flag runs the containers in background.
```
docker-compose up -d
```
- Check if build is done
```
docker-compose logs
```
- After the build is done, create the database and run migrations on it with the following
```
docker-compose exec app bundle exec rake db:setup db:migrate
```
- Finally, check [localhost:3000](localhost:3000) to see the application running
