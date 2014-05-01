README
===

About
---
A sample template application using Neo4j. Documentation here will serve as a guide for setting up Neo4j for future uses.

Dependencies
---
* Jruby 1.7.12
* Rails 4.1
* OpenJDK 64-Bit Server VM 1.7.0_51-b31
* Neo4j.rb - see gem (to come)

Setup
---

1. Clone project
	`git clone https://github.com/jdcalvin/neo4j_starter.git`

2. Install and switch to jruby
	`rvm install jruby-1.7.12`
	`rvm use jruby-1.7.12`
3. Run `bundle` to install gems
4. Start neo4j
	`rake neo4j:install[community-2.0.2]`
	`rake neo4j:start`

At this point you should be able to start `rails server` and use `rails console`. `localhost:7474` will point to the Neo4j admin panel.



To Come

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...