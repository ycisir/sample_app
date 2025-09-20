# sample_app

### requirements
- postgresql
- ruby-3.3.9

### steps for local dev setup
- `git clone https://github.com/ycisir/sample_app`
- `cd sample_app`
- `bundle install`
- configure database.yml
  in default section after pool paste this
  `host: localhost`
  `username: <%= ENV["DB_USERNAME"] || "postgres" %>`
  `password: <%= ENV["DB_PASSWORD"] || "" %>`
- create .env in root dir and paste this
  `DB_USERNAME=postgres`
  `DB_PASSWORD=yourpassword`
- create db and migrate
  `rails db:create db:migrate`
- start dev server
  `rails s`
