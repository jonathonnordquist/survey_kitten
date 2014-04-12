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
get '/surveys/' do
  if logged_in?
    @surveys = Survey.all
    erb :'/surveys/index'
  else
    redirect '/'
  end
end

get '/surveys/:id' do
  if logged_in?
    erb :'/surveys/show'
  else
    redirect '/'
  end
end


get '/surveys/:survey_id/stats' do
  @survey = Survey.find(params[:survey_id])
  erb :'/surveys/stats'
end

#update



#delete



#---------------------------
# Survey submission methods

post '/responses' do
  # Update database
  redirect '/surveys'
end















