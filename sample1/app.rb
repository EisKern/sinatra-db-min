require 'bundler'
Bundler.require

require 'sinatra/reloader'


config = YAML.load_file('db/database.yml')
ActiveRecord::Base.establish_connection(config['development'])

class Comment < ActiveRecord::Base
end

get '/' do
    "Hello! #{ Comment.count } Comments."
end

get '/show' do
    @comments = Comment.all
    erb :show
end
