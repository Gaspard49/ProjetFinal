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
=end

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'monsite.fr',
  :address => "ses-smtp-user.20190921-130833",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}