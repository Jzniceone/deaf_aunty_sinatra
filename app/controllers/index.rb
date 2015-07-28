get '/' do
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' do #create something
  speech = params[:user_input]
  puts speech #WILL SHOW ON TERMINAL
  puts params[:user_input] #WILL SHOW ON TERMINAL
  if speech == speech.upcase
    speech = "Hello sexy!"
  else
    speech = "Speak up, Kiddo!"
  end
  redirect to("/?aunty=#{speech}")

# get '/demo' do
#   "This is a demo"
# end

# get '/hello/:name' do |n|
#    "Hello #{n}!"
#   redirect to("https://www.google.com")
# end