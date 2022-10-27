# README For: Reportcard

[![reportcard-org](https://circleci.com/gh/reportcard-org/reportcard-rails.svg?style=shield)](https://app.circleci.com/pipelines/github/reportcard-org/reportcard-rails)

 # Project Overview
Reportcard is an application that is designed to help teachers gather information about school districts to help them make a more informed decision about potential places to work.

Check out the front-end repo [here](https://github.com/reportcard-org/reportcard-fe)

Check out the deployed application [here](https://reportcard-8xtook7k8-report-card.vercel.app/)

## Built With
[<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white"/>](https://www.ruby-lang.org/en/) <br>
[<img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/>](https://rubyonrails.org/) <br>
<img src="https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white"/><br>
<img src="https://img.shields.io/badge/GraphQl-E10098?style=for-the-badge&logo=graphql&logoColor=white"/><br>
<img src="https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white"/><br>
[<img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white"/>](https://www.postman.com/product/what-is-postman/)<br>



# Schema

![image](https://user-images.githubusercontent.com/102967531/198375622-a56a406f-8371-4022-ad63-c97f3e59c61c.png)

# Data Sources
Data on school districts has been sourced from the [US Census](https://www.census.gov/data.html), the [National Center for Education Statistics](https://nces.ed.gov/datatools/), and the Urban Institute's [Education Data Portal](https://educationdata.urban.org/documentation/index.html).

# API Endpoints
The following endpoints are exposed, and all endpoints begin with this base URL: [https://reportcard-rails.herokuapp.com/](https://reportcard-rails.herokuapp.com/) , and all Graphql endpoints respond to POST /graphql requests only. Query information will need to be sent in the body of the request.

### Look up school district info by school district LEA ID:
![image](https://user-images.githubusercontent.com/102967531/198355976-25e50dcb-364e-412f-83ee-c66c7d2c83ff.png)

### Create a favorite district:
![image](https://user-images.githubusercontent.com/102967531/198360771-6021b780-cda0-4994-ac7a-dd2678156466.png)

### Query a favorite district:
![image](https://user-images.githubusercontent.com/102967531/198360951-31b0acfd-d118-473a-b6de-d6b7df3d7fa6.png)

### Query a user:
![image](https://user-images.githubusercontent.com/102967531/198361105-f19eeeaa-c06b-40bd-98d0-87335537757a.png)

### Look up school district info by address:
![image](https://user-images.githubusercontent.com/102967531/198361534-d109c5bb-b4da-4721-92d6-ffc2c72e14aa.png)



### Local Setup

1. Fork and clone the repo to your local machine with SSH: `git@github.com:reportcard-org/reportcard-rails.git`
2. Install gems and dependencies: `bundle install`
3. Set up your machine's local database: 
  1. Drop current db with rails db:drop
  2. Create the db with rails db:create
  3. Migrate the db with rails db:migrate
  4. Run the rake task with rails csv_load:districts
  5. THEN you can run rails db:seed`rails db:{drop,create,migrate,seed}`
4. Run test suite: `bundle exec rspec`
5. Start up your local server: `rails s`
6. Visit the endpoint url  `http://localhost:3000/graphiql` to consume the API locally.


### Contributors

## Back-End Team
   Alex Boyd

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/alepbloyd)  [![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/boydal/)

   Drew MacNicholas  

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/dmacnicholas) 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/drew-macnicholas-20b75660/)

   Ben Silverstein

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/bensjsilverstein) 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/benjamin-silverstein-42545a109/)


## Front-End Team
  Maia Cochran 

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Maia-Cochran) 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/maiaecochran/)

  Eddie Rodriguez 

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/edjrodriguez) 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/edward-rodriguez-1b497423b/)

  Patrick Becker 

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/PatrickGBecker) 
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/patrickgarrettbecker/)
