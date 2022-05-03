#  A public API for a project tracker app

In this project, we're set up a simple Rails API-only-application where Programmers can have multiple
projects that work on and projects can belong to multiple programmers.
Programmers can be assigned to or removed from projects.

## Built With

- Ruby v2.7.1
- Ruby on Rails v6.1.4


## Current API Endpoints

The API will expose the following RESTful endpoints.
### BaseUrl: {Host-URL}/api/v1

| Endpoint                       | Functionality                |
|--------------------------------|------------------------------|
| GET    /api/v1/programmers     | Get all programmers          |
| POST /api/v1/programmers       | Add new programmer           |
| GET /api/v1/projects           | Get all projects             |
| GET /api/v1/programmers/:id    | Get a specific programmer    |
| DELETE /api/v1/programmers/:id | Delete a programmer          |  
| POST  /api/v1/projects         | Add a new project            |
| DELETE /api/v1/projects/:id    | Delete a project             |
| PUT /api/v1/projects/:id       | Update a project             |
| GET /api/v1/vendors            | Get all assign project       |
| POST api/v1/vendors            |Assign  programmer to project |
| DELETE api/v1/vendors/:id      |Remove programmer from project|
| GET /api/v1/Vendors/:id        | GET a specific assign project|

--CHALLENGE REMAINING ---
DELETE PROGRAMMER FROM PROJECT

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.1
Rails: 6.1.4
Postgres: >=9.5

### Setup

~~~bash
$ git clone https://github.com/billodiallo/track-project-api.git
$ cd track-project-api.git
~~~

Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine

```bash
heroku create
heroku rename app-new-name
git push heroku $BRANCH_NAME:master 
```
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`

```bash
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

Enjoy your newly deployed rails API


## Author

👤 Billo Dallio

- GitHub: [@billodiallo](https://github.com/billodiallo)
- Twitter: [@BilloDi83547008](https://twitter.com/BilloDi83547008)
- LinkedIn: [Billo Diallo](https://www.linkedin.com/in/mabillodiallo/)



## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgement
[Microverse Inc](https://www.microverse.org/)


