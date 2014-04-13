#Create

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  @uploaded_file = @user.update(:filepath => params[:upload_image])
  if @user.save!
    @user = User.last
        session[:user_id] = @user.id
        @user.id.to_s
  else
    "error"
  end
end


#update
post '/users/:id' do
  @update_value = params[:update_value]
  @element_id = params[:element_id]
  @original_html = params[:original_html]
    if @element_id == "user-name-edit"
      User.update(session[:user_id], :name => @update_value)
    elsif @element_id == "user-email-edit"
      User.update(session[:user_id], :email => @update_value)
    end
  @update_value
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

post '/logout' do
  session.clear
  redirect '/'
end



#delete

# Can build later













