require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

Slack::Web::Client.config do |config|
  config.user_agent = 'Slack Ruby Client/1.0'
end

Slack::RealTime::Client.config do |config|
  config.start_method = :rtm_start
end
