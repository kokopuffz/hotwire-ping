# Hotwire Magic

[Click me to try app!](https://spring-sky-5834.fly.dev/)

Built on [Fly.io](https://fly.io/)


Simple self-serve diagnostic tool to measure network pingtime between the browser and the server rendering the page

 <img src="https://cdn.discordapp.com/attachments/919468128432455700/983967619096903680/aaa.PNG" alt="page frame" width="500">
 
## User Stories
- As a user, I want to see that the entire page is not rerendering.
- As a user, I want to see the timestamp of the request.
- As a user, I want to see the timestamp of the response.
- As a user, I want to see the ping time. 

## MVP
- [x] shows ping
- [x] shows frames updating independently
- [x] show the timestamps of the GET request
- [x] shows timestamp of the response


## STRETCH GOALS
- [x] visual indication of server response


## Tech used
- Rails
- Ruby 
- Hotwire

## requirements
* Ruby version
  ruby 2.7.3
* Rails version
  Rails 7.0.2.3
* Github

## installation instructions
1. git clone
```
git@github.com:kokopuffz/hotwire-ping.git
```
2. run 
```
bundle install
```
3. start servers
```
bin/dev
```
5. go to localhost:3000
