require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: './db/messages.db'
)

class Message < ActiveRecord::Base
end

get '/' do
    "Number of Messages: #{Message.count}"
end

get '/show' do
    @messages = Message.all
    erb :show
end
