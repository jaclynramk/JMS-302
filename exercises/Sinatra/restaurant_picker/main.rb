require 'sinatra'
require 'sinatra/reloader' if development?

get "/" do
    @title = "Home"
    erb :home
end