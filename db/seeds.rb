User.create! :name => 'Admin',
             :email => 'admin@example.com',
             :password => 'password',
             :password_confirmation => 'password'

10.times do |n|
  Question.create!(prompt: Faker::Lorem.sentence(1),
                   incorrect_feedback: "incorrect",
                   correct_feedback: "correct")
end

questions = Question.all
3.times do
  content = Faker::Lorem.word(2)
  questions.each { |question| question.question_options.create!(
    content: content
    ) }
end
