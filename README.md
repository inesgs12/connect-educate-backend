# README

Connected Learning is a platform that helps parents to access mentors and online resources to support their children’s needs and wellbeing. The app is one of the solutions presented at the Women Driven Development #UKvsCovidHack

We placed the parent’s experience at the heart of the design, providing:

- An easy-to-use landing page where parents can raise questions for mentors.
- Simple registration so busy parents can submit requests quickly.
  An offline SMS journey for parents who do not have access to the internet.
- UI for parents who do not speak English to increase accessibility.

# Prerequisites

## Backend (this repo)

**Ruby on Rails API / device for authentication**

- Ruby version 2.6.1
- git clone https://github.com/inesgs12/connect-educate-backend.git
- cd connect-educate-backend
- git checkout dev
- gem install rails
- bundle install
- rails db:migrate
- rails db: seed if you want to start working with some data
- rails s (this will start your server on port 3000)

### API Endpoints

[![View in Postman](https://run.pstmn.io/button.svg)](https://documenter.getpostman.com/view/8137617/Szf25VvH?version=latest)

To link frontend & backend read the following:

## Frontend

**React & Redux**

- git clone https://github.com/WinSanPang/connect-educate-frontend.git
- cd connect-educate-frontend
- yarn install && yarn start (this will start your server on port 3001)

## To Do's

Please check both repos (front and backend) for raised issues. We achieved so much during the hackathon but there's still a lot to do!

- One of our priorities is to link backend and frontend properly.
- Deploy both repos to heroku: we think there is an issue with our db being sqlite and also have a single-inheritance table for users.

### Please always create a new branch of dev and raise a pull request once you are done. Thanks!
