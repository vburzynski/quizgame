def sign_in
  visit '/users/sign_in'
  fill_in :user_email, with: @user.email
  fill_in :user_password, with: 'password'
  click_button "Log in"
end

Given(/^I am logged in$/) do
  @user = create(:user)
  sign_in
  expect(page).to have_content('Signed in successfully.')
end

Given(/^I am on the home page$/) do
  visit root_path
end
