# Caching in Rabl

This repo gives you a baseline to play around with different caching scenraios of rabl. 

**Infra**
- Rails 3.2.22
- Ruby 2.1.5


**Setup process**
- Clone the repo
- rake db:create
- rake db:migrate
- rake populator:run # popoulates dummy data 
- rails s


**Config**
- Caching is enabled in developement environment and the storage is set to file_store
- Currently logging is enabled for Rails Cache

**Models**
- User has_many articles
- Article belongs_to user


**Urls**
- localhost:3000/user/1 # user show
- localhost:3000/user # user index
