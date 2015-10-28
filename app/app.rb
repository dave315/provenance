ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/flash'

require_relative 'routes/base_routes'
require_relative 'helpers'

class ReplaceWithName < Sinatra::Base

  register Sinatra::Flash
  enable :inline_templates


  configure do
    set :public_folder, 'public'
  end

  use Rack::Session::Cookie,
    key: 'rack.session',
    secret: 'ownyoursh*t',
    expire_after: 36000


  helpers Sinatra::ReplaceWithName::Helpers
  register Sinatra::ReplaceWithName::Routing::AppBase
end
