source 'https://rubygems.org'
#No ruby version - use most recent version of jruby instead

gem 'rails', '4.1.0'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyrhino'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'better_errors'
# OPTIONAL - Improved error messages in chrome
#gem 'binding_of_caller' - no luck getting it to work b/c lack of c extension support
# OPTIONAL - Use console in chrome

gem "neo4j", "3.0.0.alpha.6"

gem 'sdoc', '~> 0.4.0',          group: :doc

platforms :jruby do
  gem 'neo4j-community', '~> 2.0.0'
  # Provides JAR files for Neo4j db
end

group :development do
  gem 'os' 
  # for rake Neo4j Tasks
  gem 'neo4j-admin' 
  #utilize and interface dashboard panel with rails app
end




