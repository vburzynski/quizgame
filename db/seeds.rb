User.create! :name => 'Admin',
             :email => 'admin@example.com',
             :password => 'password',
             :password_confirmation => 'password',
             :confirmed_at => Time.zone.now

10.times do |n|
  Question.create! :prompt => Faker::Lorem.sentence(1),
                   :correct_feedback => "correct",
                   :incorrect_feedback => "incorrect"
end

questions = Question.all

3.times do
  content = Faker::Lorem.words(2).join(" ")
  questions.each do |question|
    question.question_options.create! :content => content,
                                      :correct => true
  end
end
