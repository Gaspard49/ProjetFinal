# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
=begin
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'monsite.fr',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
https://dashboard.heroku.com/apps/projet-final-caen


SMTP username: Your Gmail address
SMTP password: Your Gmail password
SMTP server address: smtp.gmail.com
Gmail SMTP port (TLS): 587
SMTP port (SSL): 465
SMTP TLS/SSL required: yes
=end
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['GMAIL_LOGIN'],
  :password => ENV['GMAIL_PWD'],
  :domain => 'gmail.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}