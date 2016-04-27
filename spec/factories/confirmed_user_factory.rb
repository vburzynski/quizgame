FactoryGirl.define do

  factory :confirmed_user, :parent => :user do
    after(:create) { |user| user.confirm }
  end

end
