#Create

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  User.create(params[:user])
  redirect '/'
  # redirect '/users/#{userid}'  # this doesn't work yet
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
  if logged_in?
    erb :'users/show'
  else
    redirect '/'
  end
end

post '/users/logout' do
  session.clear
  redirect '/'
end



#delete

# Can build later













