# Sample App
This project is the Sample App built by following the Ruby on Rails Tutorial by Michael Hartl. 


### Prerequisites
- Docker & Docker Compose installed

To get started with the sample_app follow the below instructions

```
git clone https://github.com/<your-username>/sample_app.git
cd sample_app
docker compose build
```
```
docker compose run web bundle install
docker compose run web rails db:create db:migrate
docker compose run web rails test
```
```
docker compose up
```


### Credits
- Michael Hartl – Ruby on Rails Tutorial 7th Edition (Book)
- Rails community documentation