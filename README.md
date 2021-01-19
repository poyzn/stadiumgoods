# Coding challenge solution for Stadium Goods

The solution is built with Ruby version 2.7.1 and Ruby on Rails 6.1

### Main functionality

The app has a single root route. When the route is accessed it requests
social platforms' endpoint specified in a passed source and returns a json object
with twitter tweets, facebook statuses and instagram photos. Example

```
{"twitter":["If you live to be 100, you should make up some fake reason why, just to mess with people... like claim you ate a pinecone every single day.","STOP TELLING ME YOUR NEWBORN'S WEIGHT AND LENGTH I DON'T KNOW WHAT TO DO WITH THAT INFORMATION."],"facebook":["Here's some photos of my holiday. Look how much more fun I'm having than you are!","I am in a hospital. I will not tell you anything about why I am here."],"instagram":[]}
```

if for some reason there is an error while accessing an endpoint the result of the request
fallbacks to empty array.

### Features

- Social platforms logic is aggregated in SocialPlatforms context
- Dependency injection of a source object into fetch service object
- Customizable presenter class to decorate social platform stats
- Using DB allows to persist stats if it's needed

### How to run the app locally

1. Clone the repo
2. Make sure ruby ver. 2.7.1 is installed
3. Run `bundle install` to install gems
4. Run `rails db:setup` to setup db
5. (Optional) Run `rspec` to launch test suite
6. Run `rails s` to start rails server

Access `curl localhost:3000` to view the result.