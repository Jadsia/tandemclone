module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end

  require 'pusher'

pusher = Pusher::Client.new(
  app_id: 'APP_ID',
  key: 'APP_KEY',
  secret: 'APP_SECRET',
  cluster: 'APP_CLUSTER'
)

  class HelloWorldController < ApplicationController
    def hello_world
      pusher.trigger('my-channel', 'my-event', {:message => 'hello world'})
    end
  end
end
