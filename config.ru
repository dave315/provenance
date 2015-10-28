require 'rubygems'
require 'bundler'
Bundler.require(:default, :development)
$LOAD_PATH << __dir__

if Gem::Specification.find_all_by_name('dotenv').any?
  Dotenv.load
end

require 'app/app'

ReplaceWithName.run!
