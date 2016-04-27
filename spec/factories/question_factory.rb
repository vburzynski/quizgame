require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.prompt {Faker::Lorem.sentence}
    f.correct_feedback {Faker::Lorem.words(3)}
    f.incorrect_feedback {Faker::Lorem.words(3)}

    factory :question_with_options do |f|
      after(:create) do |question|
        3.times do |n|
          create(:question_option, question: question)
        end
      end
    end
  end
end
