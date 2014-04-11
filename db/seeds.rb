require 'faker'

4.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "123", password_confirmation: "123", image_url: Faker::Internet.url)
  Survey.create!(title: Faker::Team.creature, creator_id: rand(1..4), image_url: Faker::Internet.url)
  Question.create!(survey_id: rand(1..4), text: Faker::Lorem.words(9).join(' '), image_url: Faker::Internet.url)
  Choice.create!(question_id: rand(1..4), option: Faker::Lorem.words(2).join(' '))
  Participation.create!(taker_id: rand(1..4), survey_id: rand(1..4))
  Answer.create!(participation_id: rand(1..4), choice_id: rand(1..4))
end









# Test Codes
#--------------------------------------------------
# john = User.first
# test = Survey.first
# question = Question.first
# choice = Choice.first
# p User.first.nil? == false
# p Survey.first.nil? == false
# p Question.first.nil? == false
# p Choice.first.nil? == false
# p Participation.first.nil? == false
# p Answer.first.nil? == false

# p User.first.created_surveys
# p User.first.taken_surveys
# p Survey.first.creator
# p Survey.first.takers.first


# p !test.questions.nil?
# p question.choices
# p choice.answers
