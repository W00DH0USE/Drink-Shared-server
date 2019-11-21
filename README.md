**Drinkspiration Server**
----
  Drinkspiration is an App that allows people to look up and share drinks recipes. Each recipe will include a name, ingredients list and directions on how to make the recipe. Users will be able to create an account that will give them access to all of the drinks recipes, create and share their own drinks recipes and comment on other users recipes.

* **URL**

  GitHub Repo: [Drinkspiration Client](https://github.com/W00DH0USE/Drinkspiration)

* **Method:**
  
`/api/articles`
  - GET -> Gets all articles (Requires Auth)
  - POST -> Inserts new article into database (Requires Auth)
  
`/api/articles/:article_id`
  - GET -> Gets an article that belong to the specified id (Requires Auth)

`/api/articles/:article_id/comments/`
  - GET -> Gets all the comments that belong to a specific article id (Requires Auth)
  
`/api/auth/login`
  - POST -> Compares to users in database, if matching creates and sends JWT token

`/api/auth/refresh`
  - POST -> Refreshes JWT token

`/api/comments/`
  - POST -> Inserts new comment into database (Requires Auth)
  
`/api/users`
  - POST -> Adds user to database

* **Technologies Used:**
- bcryptjs
- cors
- helmet
- jsonwebtoken
- morgan
- Jest
- Express
- Node.js
- PostgreSQL
- Knex
- Mocha, Chai & Supertest

