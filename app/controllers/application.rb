get '/' do
  redirect '/contacts'
end

# **INDEX**
# Display a list of all contacts
get '/contacts' do
  @contacts = Contact.all
  erb :'contacts/index'
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
# show a specific contact
get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
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
