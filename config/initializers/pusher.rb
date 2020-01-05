# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '926806'
Pusher.key = 'ef097b65970872a24f93'
Pusher.secret = 'ef3dfa27437c987b49c5'
Pusher.cluster = 'us3'
Pusher.logger = Rails.logger
Pusher.encrypted = true
