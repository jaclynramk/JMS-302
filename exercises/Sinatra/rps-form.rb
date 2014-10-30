require 'sinatra'

get '/' do
    erb :home
end



# get "/throw/:choice" do
get "/throw" do
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


@@home
<DOCTYPE! html>
    <html>
        <head><title>Rock, Paper, Scissors (Form)</title></head>
        <body>
            <h1>Rock, Paper, Scissors (Form)</h1>
            <p>Enter Rock, Paper, or Scissors</p>
            <form action="/throw" method="get">
                <input type="text" name="choice" />
            </form>
            <%= @results %>
        </body>
</html>


@@throw
<DOCTYPE! html>
    <html>
        <head><title>Rock, Paper, Scissors (URL)</title></head>
        <body>
            <h1>Rock, Paper, Scissors (URL)</h1>
            <h2>Your results:</h2>
            <%= @results %>
        </body>
</html>