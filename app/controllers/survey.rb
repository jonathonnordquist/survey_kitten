#create
get '/surveys/new' do
  if logged_in?
    erb :'/surveys/new'
  else
    redirect '/'
  end
end

post '/surveys' do
  # Save information to db
  if saved
    redirect 'survey/:id'
  else
    redirect 'survey/new'
    # will need to feed a failure msg to the survey page
  end
end


#read
get '/surveys' do
  if logged_in?
    erb :'/surveys/index'
  else
    redirect '/'
  end
end

get '/surveys/:id'
  if logged_in?
    erb :'/surveys/show'
  else
    redirect '/'
  end
end

#update



#delete



#---------------------------
# Survey submission methods

post '/responses'
  # Update database
  redirect '/surveys'
end















