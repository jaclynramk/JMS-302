require 'sinatra'
require 'sinatra/reloader' of development? 

get '/' do
    erb :home
end



# get "/throw/:choice" do
post "/throw" do
        @title = "Rock, Paper, Scissors: Your Results"
        # hash of what beats what
        beats = {
            "Rock" => "Scissors",
            "Scissors" => "Paper",
            "Paper" => "Rock"
        }
    
    # got a random choice for the computer
    computer = beats.keys[rand(beats.keys.size)]
    
    player = params[:choice]
    
    if !beats.keys.include?(player.capitalize)
        halt 403, "Please choose one of the following #{ beats.keys }."
        exit
    end
    
    
    if player.capitalize == computer
        @results = "You tied the computer. Try again."
    elsif computer == beats[player.capitalize]
        @results = "Congrats. #{ player } beats #{ computer}."
    else
        @results = "Sorry. #{ computer } beats #{ player }."
    end
    
    
    # @results = whoever won
    erb :throw
end

    

__END__


@@layout
<DOCTYPE! html>
    <html>
        <head><title><%= @title || "Rock, Paper, Scissors" %></title></head>
        <body>
            <!-- put logo here -->
            <%= yield %>
        </body>
</html>


@@home
        <p>Enter Rock, Paper, or Scissors</p>
        <form action="/throw" method="post">
            <input type="text" name="choice" />
        </form>
        <%= @results %>


@@throW
        <h2>Your results:</h2>
        <%= @results %