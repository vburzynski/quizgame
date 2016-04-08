FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@bendyworks.com" }
    password 'password'
    password_confirmation 'password'
    confirmed_at Time.zone.now
  end
end
