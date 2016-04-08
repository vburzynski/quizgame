Given(/^I am logged in$/) do
  @user = create(:user)
  visit new_user_session_path
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: 'password'
  click_on 'Log In'
  save_and_open_page
  expect(page).to have_content('Signed in successfully.')
end

Then(/^I should be logged in$/) do
  Fail "not logged in" unless user_logged_in?
end

Given(/^I am on the home page$/) do
  visit root_path
end
