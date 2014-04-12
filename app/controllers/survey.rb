#create
get '/surveys/new' do
  if logged_in?
    erb :'/surveys/new'
  else
    redirect '/'
  end
end

post '/surveys' do
<<<<<<< HEAD
  # Save information to db


  if saved
=======
  @survey = Survey.new(creator_id: session[:user_id],
                       title: params[:title])
  if @survey.save
    @question = Question.new(survey_id: @survey.id,
                             text: params[:text])
  end

  if @question.save
    params[:choice].each do |key, value|
      @choices = Choice.create(question_id: @question.id,
                            option: value)
    end
>>>>>>> 0a67be2a40909982f4e5215cde8e857eb5c4096d
    redirect 'survey/:id'
  else
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
    @survey_id = params[:id]

    @question_choices = Choice.where(question_id: Question.where(survey_id: @survey_id).first.id)
    erb :'/surveys/show'
  else
    redirect '/'
  end
end


<<<<<<< HEAD


=======
get '/surveys/:survey_id/stats' do
  @survey = Survey.find(params[:survey_id])
  erb :'/surveys/stats'
end
>>>>>>> 0a67be2a40909982f4e5215cde8e857eb5c4096d

#update



#delete



#---------------------------
# Survey submission methods

post '/responses' do
  p "submitted"
  answer = params[:choice_id]
  participation = params[:participation_no]
  Answer.create(participation_id: participation, choice_id: answer)
  erb :'/surveys/thank'
end















