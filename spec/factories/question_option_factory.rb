require 'faker'

FactoryGirl.define do
  factory :question_option do |f|
    f.content { Faker::Lorem.words(2).join(" ") }
    f.correct { Faker::Boolean.boolean }
    f.question_id { 1 }
  end
end
