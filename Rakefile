# Rakefile
require "./app/app.rb"
require "sinatra/activerecord/rake"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new :specs do |task|
  task.pattern = Dir['spec/**/*_spec.rb']
end

task :default => ['specs']
