# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['AWS_SES_LOGIN'],
  :password => ENV['AWS_SES_PWD'],
  :domain => 'https://projet-final-caen.herokuapp.com/',
  :address => 'email-smtp.eu-west-1.amazonaws.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}