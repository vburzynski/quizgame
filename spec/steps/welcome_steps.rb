step "I should see the welcome message" do
  expect(page).to have_content("Welcome to the quiz game")
end

step "I should see a sign in link" do
  expect(page).to have_content('Sign In')
end

step "I should see a registration link" do
  expect(page).to have_content('Register')
end

step "I should not see a log out link" do
  expect(page).to_not have_content('Log out')
end

step "I should see a log out links" do
  expect(page).to have_content('Log out')
end

step "I should see my user name" do
  expect(page).to have_content(@user.email)
end

step "I should see a profile link" do
  expect(page).to have_content('Profile')
end

step "I should not see a sign in link" do
  expect(page).to_not have_content('Sign In')
end

step "I should not see a registration link" do
  expect(page).to_not have_content('Registration')
end
