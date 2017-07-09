# <img src="/public/record.png" style="height:25px"> Rails Record Store

Rails Record store is a ruby on rails application which demonstrates the core functionality of an online record store.

Anonymous users can:
* Browse the catalog

Authenticated users can:
* Browse the catalog
* Add a review to a record
* Edit or delete their own reviews

Authenticated Admins can:
* Browse the catalog
* Add a new record to the catalog
* Edit or delete a record
* Add a review to a record
* Delete any review

### Dependencies
* <a href="https://www.postgresql.org/">postgresql</a>
* <a href="https://www.ruby-lang.org/en/">ruby</a> 2.4.1 or greater
* <a href="http://rubyonrails.org/">rails</a> 5.1.2 or greater
* <a href="https://bundler.io/">bundler</a>

| Basic user view | Admin view |
| --------------- | ---------- |
| ![](/public/user.gif) | ![](/public/admin.gif)|

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

### Author
Sean Pierce

### Contact
sumler.sean@gmail.com

### License
MIT, &copy; Sean Pierce 2017
