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
  p "submitted"
  answer = params[:survey_question]
  participation = params[:participation_no]
  Answer.create(participation_id: participation, choice_id: answer)

  # if saved
  #   redirect 'survey/:id'
  # else
    erb :'/surveys/thank'
    # will need to feed a failure msg to the survey page
  # end
end


#read
get '/surveys' do
  if logged_in?
    erb :'/surveys/index'
  else
    redirect '/'
  end
end

get '/surveys/1' do
  # if logged_in?

    erb :'/surveys/show'
  # else
  #   redirect '/'
  # end
end





#update



#delete



#---------------------------
# Survey submission methods

post '/responses' do
  # Update database
  redirect '/surveys'
end















