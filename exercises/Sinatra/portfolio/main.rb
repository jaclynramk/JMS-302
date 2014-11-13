require "sinatra"
require "sinatra/reloader" if development?

get "/" do
    erb :home
    @title = "Jaclyn Ramkissoon's Portfolio"
end