step "save and open page" do
  save_and_open_page
end

step "I follow :link_text" do |link_text|
  click_link link_text
end

step "I press :button_text" do |button_text|
  click_button button_text
end

step "I fill in :label with :text" do |label, text|
  fill_in label, with: text
end

step "I select :menu_choice from :label" do |menu_choice, label|
  select menu_choice, from: label
end

step "I select :name from the :dropdown drop down" do |name, dropdown|
  select name, from: dropdown
end

step "I press :button_text" do |button_text|
  click_on button_text
end

step "I see :text" do |text|
  expect(page.body).to have_text(text)
end

step "I should see :target_text" do |target_text|
  expect(page).to have_content(target_text)
end

step "I should not see :target_text" do |target_text|
  expect(page).to_not have_content(target_text)
end

step "I should see #:element_id" do |element_id|
  fail "No DOM element exists with id '#{element_id}''" if has_no_css?("\##{element_id}")
end

step "I should see a :element_tag tag" do |element_tag|
  fail "No #{element_tag} DOM element exists" if has_no_css?(element_tag.to_s)
end

step "I confirm" do
  page.execute_script 'window.confirm = function () { return true }'
end
