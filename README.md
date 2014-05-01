#README


A sample template application using Rails and Neo4j. Demonstrates simple RESTful features of a typical rails app, with the abilty to CRUD new posts and add comments to the posts.

Documentation here will serve as a guide for setting up Neo4j for future uses.

###Dependencies
* Jruby 1.7.12
* Rails 4.1
* OpenJDK 64-Bit Server VM
* Neo4j.rb v3.0 (unstable alpha but seems to work so far)

###Setup
1. Clone project

2. Install and switch to jruby
 
 `rvm install jruby-1.7.12`

 `rvm use jruby-1.7.12`

3. Run `bundle` to install gems
4. Start neo4j

    `rake neo4j:install[community-2.0.2]`

    `rake neo4j:start`
    
    You should be able to start `rails server` and also utilize the Neo4j dashboard at `localhost:7474`


###Deploy with Heroku
1. Modify `config/application.rb` 
	`config.neo4j.session_type = :server_db`
	`config.neo4j.session_path = ENV["GRAPHENEDB_URL"] ||'http://localhost:7474'`
2. Ensure working application is deployed to git repo
3. Create a new heroku application

	`heroku apps:create --stack cedar`
	
	`heroku addons add graphenedb`
4. Push to heroku

    `git push heroku master`
5. Verify database url is valid

	`heroku config:get GRAPHENEDB_URL`

    You can also access the Neo4j dashboard from this url.


###Resources

* https://github.com/andreasronge/neo4j/wiki/Neo4j-v3

* https://devcenter.heroku.com/articles/graphenedb

* http://docs.neo4j.org/
