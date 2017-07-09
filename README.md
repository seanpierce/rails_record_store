# <img src="/public/record-small.png"> Rails Record Store

Rails Record Store is a <a href="http://rubyonrails.org/">ruby on rails</a> application which demonstrates the core functionality of an online record store.

**Anonymous Users** can:
* Browse the catalog

**Authenticated Users** can:
* Browse the catalog
* Add a review to a record
* Edit or delete their own reviews

**Authenticated Admins** can:
* Browse the catalog
* Add a new record to the catalog
* Edit or delete a record
* Add a review to a record
* Delete any review

| Basic user view | Admin view |
| --------------- | ---------- |
| ![](/public/user.gif) | ![](/public/admin_2.gif)|

### Dependencies
* <a href="https://www.postgresql.org/">postgresql</a>
* <a href="https://www.ruby-lang.org/en/">ruby</a> 2.4.1 or greater
* <a href="http://rubyonrails.org/">rails</a> 5.1.2 or greater
* <a href="https://bundler.io/">bundler</a>

### Installation
````
$ postgres
$ git clone https://github.com/seanpierce/rails_record_store
$ cd rails_record_store
$ bundle
$ rails db:setup
$ rails s
````
Visit <a href="http://localhost:3000/">localhost:3000</a>


### Usage
You can log in using the credentials provided below, or sign up with your own information.

| Type | Email | Password |
| ---- | ----- | -------- |
| Basic | user@email.com | 1234567 |
| Admin | admin@email.com | 1234567 |


### Testing
This application is tested using <a href="http://rspec.info/">rspec</a>. 92.33% of the application is successfully covered according to <a href="https://github.com/colszowka/simplecov">simplecov</a>

### Author
Sean Pierce

### Contact
sumler.sean@gmail.com

### License
MIT, &copy; Sean Pierce 2017
