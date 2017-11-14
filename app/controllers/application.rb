# ***INDEX***
get '/contacts' do
  @contacts = Contact.all
  erb :'contacts/index'
end

# ***NEW***
get '/contacts/new' do
  @contact = Contact.new
  erb :'contacts/new'
end

# ***CREATE***
post '/contacts' do
  @contact = Contact.create(params[:contact])
  if @contact.valid?
    redirect '/'
  else
    status 422
    @errors = @contact.errors.full_messages
    erb :'contacts/new'
  end
end


# ***SHOW***
get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
end

# ***EDIT***
get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id])
  erb :'contacts/edit'
end

# ***UPDATE***
put '/contacts/:id' do
  @contact = Contact.find(params[:id])
  @contact.update(params[:contact])
  if @contact.valid?
    redirect "/contacts/#{@contact.id}"
  else
    status 422
    @errors = @contact.errors.full_messages
    erb :'contacts/edit'
  end
end

# ***DELETE***
delete '/contacts/:id' do
  @contact = Contact.find(params[:id]).destroy!
  redirect '/contacts'
end
