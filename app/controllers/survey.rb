#create
get '/surveys/new' do
  if logged_in?
    erb :'/surveys/new'
  else
    redirect '/'
  end
end

post '/surveys' do
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

get '/surveys/:id' do         # Uncomment prior to submission
  # if logged_in?
    @survey_id = params[:id]
    @question = []
    @choices = []
    Question.where(survey_id: @survey_id).each do |question|
      @question << question
      temp_choices = []
      Choice.where(question_id: question.id).each do |choice|
        temp_choices << choice
      end
      @choices << temp_choices
    end

    @survey_questions = Question.where(survey_id: @survey_id)
    p "questions ====================================================="
    p @question.inspect
    p "choices ======================================================="
    p @choices.inspect
    erb :'/surveys/show'
  # else
  #   redirect '/'
  # end
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
  p "submitted======================================================================="
  p params
  p params[:question][0]
  # answer = params[:choice_id]
  # participation = params[:participation_no]
  # Answer.create(participation_id: participation, choice_id: answer)
  erb :'/surveys/thank'
end















