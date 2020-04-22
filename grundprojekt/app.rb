require 'sinatra'
require 'slim'

enable :sessions



before do
  session["password"] = "abc123"
  session["user"] = "John Smith"
end

#Startsida
get('/') do
  slim(:index)
end

#Visa formulär som lägger till en note
get('/notes/new') do
  slim(:"notes/new")
end


#Skapa note
post('/notes/create') do
  if session["notes"] == nil
    session["notes"] = []
    session["notes"] << params["ny_note"]
  else
    session["notes"] << params["ny_note"]
  end
  redirect('/notes')
end

#Visa alla notes
get('/notes') do
  slim(:"notes/show")
end