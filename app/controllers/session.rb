#login

get '/' do
  erb :index
end

post '/login' do
  # Get user information,
  @user = User.find_by email: params[:email]

  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "users/#{session[:user_id]}"
  else
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
