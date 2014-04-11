#login

get '/' do
  erb :index
end

post '/login' do
  # Get user information, authenticate, redirect
  if # success login
    redirect 'users/:id'  # This don't work yet neither
  else
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
