class HomesController < ApplicationController
  before_action :set_home, only: %i[show edit update destroy]

  # GET /homes
  # GET /homes.json
  def index
    @channel_history = web_client.channels_history(
      channel: '#general',
      oldest: (Time.now - (60 * 60 * 24)).to_i,
      count: 1000
    )
  end

  def delete_chats
    params['history'].each do |ts|
      web_client.chat_delete(
        channel: '#general',
        ts: ts
      )
    end
    redirect_to action: 'index'
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def home_params
    params.fetch(:home, {})
  end

  def web_client
    @web_client ||= Slack::Web::Client.new
  end
end
