User.create! :name => 'Admin',
             :email => 'admin@example.com',
             :password => 'password',
             :password_confirmation => 'password',
             :confirmed_at => Time.zone.now

10.times do |n|
  Question.create!(prompt: Faker::Lorem.sentence(1),
                   incorrect_feedback: "incorrect",
                   correct_feedback: "correct")
end

questions = Question.all
3.times do
  content = Faker::Lorem.words(2).join(" ")
  questions.each { |question| question.question_options.create!(
    content: content,
    correct: true
    ) }
end
