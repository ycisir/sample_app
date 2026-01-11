### Prerequisites
- Docker & Docker Compose installed for local development

### Local setup
```
git clone https://github.com/ycisir/sample_app.git
cd sample_app
docker compose build
docker compose run web bundle install
docker compose run web rails db:create db:migrate
docker compose run web rails db:seed
docker compose run web rails test
docker compose up
```
