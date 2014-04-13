require 'faker'

# 4.times do
  # User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "123", password_confirmation: "123", image_url: Faker::Internet.url)
  # Survey.create!(title: Faker::Team.creature, creator_id: rand(1..4), image_url: Faker::Internet.url)
  # Question.create!(survey_id: rand(1..4), text: Faker::Lorem.words(9).join(' '), image_url: Faker::Internet.url)
  # Choice.create!(question_id: rand(1..4), option: Faker::Lorem.words(2).join(' '))
  # Participation.create!(taker_id: rand(1..4), survey_id: rand(1..4))
  # Answer.create!(participation_id: rand(1..4), choice_id: rand(1..4))
# end

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


#Test Seeds for answer stats.

  # User.create!(name: "tester", email: "test@test.com", password: "123", password_confirmation: "123", image_url: "http://i.imgur.com/8oLKVUV.jpg")
  # Survey.create!(title: "cats are ok", creator_id: 1, image_url: "http://i.imgur.com/8oLKVUV.jpg")
  # Question.create!(survey_id: 1, text: "Are cats cool?", image_url: "http://i.imgur.com/8oLKVUV.jpg")


  # Choice.create!(question_id: 1, option: "sure")
  # Choice.create!(question_id: 1, option: "meh")

  # #this forces the outcome of stats for answer 2.
  # Participation.create!(taker_id: 1, survey_id: 1)
  # Answer.create!(participation_id: 1, choice_id: 2)

  # #add more answers to display different percentages.
  # Answer.create!(participation_id: 1, choice_id: 2)
  # Answer.create!(participation_id: 1, choice_id: 2)
  # Answer.create!(participation_id: 1, choice_id: 2)
  # Answer.create!(participation_id: 1, choice_id: 1)
  # Answer.create!(participation_id: 1, choice_id: 1)
  # Answer.create!(participation_id: 1, choice_id: 1)
  # Answer.create!(participation_id: 1, choice_id: 2)
  # Answer.create!(participation_id: 1, choice_id: 2)


6.times do |x|
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "123", password_confirmation: "123", image_url: Faker::Internet.url)
  Survey.create!(title: Faker::Team.creature, creator_id: x, image_url: Faker::Internet.url)
  4.times do |y|
    Question.create!(survey_id: x + 1, text: Faker::Lorem.words(9).join(' '), image_url: Faker::Internet.url)
  end

  # Participation.create!(taker_id: rand(1..4), survey_id: rand(1..4))
  # Answer.create!(participation_id: rand(1..4), choice_id: rand(1..4))
end

16.times do |x|
  4.times do
    Choice.create!(question_id: x + 1, option: Faker::Lorem.words(2).join(' '))
  end
end

4.times do
  Choice.create!(question_id: 23, option: Faker::Lorem.words(2).join(' '))
  Choice.create!(question_id: 24, option: Faker::Lorem.words(2).join(' '))
end









