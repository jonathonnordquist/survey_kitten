#Create

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  User.create(params[:user])
  redirect '/users/#{userid}'  # this doesn't work yet
end


#update
post '/users/:id' do
  # get post data
  # update db w/ helper method
  # feed back to ajax
end

#read
get '/users/:id' do
  # Get user id
  if logged_in
    erb :'users/show'
  else
    redirect '/'
  end
end



#delete

# Can build later













