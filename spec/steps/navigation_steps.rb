module NavigationSteps
  def sign_in
    visit '/users/sign_in'
    fill_in :user_email, with: @user.email
    fill_in :user_password, with: 'password'
    click_button "Log in"
  end

  def path_to(page_name)
    case page_name
    when /the home page/
      root_path
    when /the login page/
      new_user_session_path
    when /the logout page/
      destroy_user_session_path
    else
      if path = match_rails_path_for(page_name)
        path
      else
        raise "Can't find mapping from \"#{page_name}\" to a path."
      end
    end
  end

  def match_rails_path_for(page_name)
    if page_name.match(/the (.*) page/)
      return send "#{$1.gsub(" ", "_")}_path" rescue nil
    end
  end

  step "I am logged in" do
    @user = create(:user)
    sign_in
    expect(page).to have_content('Signed in successfully.')
  end

  step "I am on :page_name" do |page_name|
    visit path_to(page_name)
  end

  step "I visit :page_name" do |page_name|
    visit path_to(page_name)
  end
end
