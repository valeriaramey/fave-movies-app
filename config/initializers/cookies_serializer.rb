# Be sure to restart your server when you modify this file.

# Specify a serializer for the signed and encrypted cookie jars.
# Valid options are :json, :marshal, and :hybrid.
Rails.application.config.action_dispatch.cookies_serializer = :json

#config/initializers/session_store.rb
if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_name-of-your-app', domain: 'name-of-you-app-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_name-of-your-app'
end
