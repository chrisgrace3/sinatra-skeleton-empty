get '/' do
  redirect '/contacts'
end

get '/contacts' do
  "display a list of all contacts"
end

# **NEW**
get '/contacts/new' do
  "returns an HTML form for creating a new contact"
end

# **CREATE**
post '/contacts' do
  "create a new contact"
end


# **SHOW**
get '/contacts/:id' do
  "show a specific contact"
end

# **EDIT**
get '/contacts/:id/edit' do
  "return an HTML form for editing a contact"
end

# **UPDATE**
put '/contacts/:id' do
  "update a specific contact"
end

# **DELETE**
delete '/contacts/:id' do
  "Delete a specific contact"
end
