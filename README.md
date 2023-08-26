# README

This is Weather forecast sample application 

Technology used:
 Ruby: 2.6.6
 Rails: 6.1.7.2
 Database: Postgres

Steps to Set Up:
1. Take a clone 
2. Please make sure the above versions are met. 
3. bundle install
4. rails db:create 
5. rails db:migrate
6. EDITOR=nano rails credentials:edit 
  => to update the weather map API key for security purpose. 

Other Basic Requirements
webpacker
node 

Application OverView:
1. Sign in and Sign Out has been integrated without devise
2. OpwnWeatherMap Api has been integrated using Httparty and personal API ID has been securly saved into rails credentials environment
3. Basic pages and navigation has been set up without bootstrap.
4. this application is all about functionality and UI has not been taken care of so much 
5. further functionality could be developed like 
  a. Error Messages
  b. Password Reset Email
  c. All weather forecast attrbutes. 
  d. role based use table access(custom/cancancan gem)
  e. Using cookies to make sign in and sign out a better functionality, just like devise 

  
