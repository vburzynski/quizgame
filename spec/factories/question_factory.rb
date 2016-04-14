require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.prompt {Faker::Lorem.sentence}
    f.correct_feedback {Faker::Lorem.words(3)}
    f.incorrect_feedback {Faker::Lorem.words(3)}
  end
end
