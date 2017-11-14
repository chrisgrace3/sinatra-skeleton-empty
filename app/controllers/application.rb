
# ***INDEX***
# display a list of all contacts
get '/contacts' do
  @contacts = Contact.all
  erb :'contacts/index'
end

# ***NEW***
# returns an HTML form for creating a new contact
get '/contacts/new' do
  @contact = Contact.new
  erb :'contacts/new'
end

# ***CREATE***
# create a new contact
post '/contacts' do
  @contact = Contact.create(params[:contact])
  redirect '/'
end


# ***SHOW***
# show a specific contact
get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
end

# ***EDIT***
# return an HTML form for editing a contact
get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id])
  erb :'contacts/edit'
end

# ***UPDATE***
# update a specific contact
put '/contacts/:id' do
  @contact = Contact.find(params[:id])
  @contact.update(params[:contact])
  redirect "/contacts/#{@contact.id}"
end

# ***DELETE***
delete '/contacts/:id' do
  "Delete a specific contact"
end
