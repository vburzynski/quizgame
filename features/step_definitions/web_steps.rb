Then(/^save and open page$/) do
  save_and_open_page
end

When(/^I follow "(.*?)"$/) do |link_text|
  click_link link_text
end

When(/^I press "(.*?)"$/) do |button_text|
  click_button button_text
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |label, text|
  fill_in label, with: text
end

When(/^I select "(.*?)" from "(.*?)"$/) do |menu_choice, label|
  select menu_choice, from: label
end

When(/^I select "(.*?)" from the "(.*?)" drop down$/) do |name, dropdown|
  select name, from: dropdown
end

When(/^I press "(.*?)"$/) do |button_text|
  click_on button_text
end

Then(/^I see "(.*?)"$/) do |text|
  expect(page.body).to have_text(text)
end

Then(/^I should see "(.*?)"$/) do |target_text|
  expect(page).to have_content(target_text)
end

Then(/^I should not see "(.*?)"$/) do |target_text|
  expect(page).to_not have_content(target_text)
end

Then(/^I should see #(.*?)$/) do |element_id|
  fail "No DOM element exists with id '#{element_id}''" if has_no_css?("\##{element_id}")
end

Then(/^I should see a (.*?) tag$/) do |element_tag|
  fail "No #{element_tag} DOM element exists" if has_no_css?(element_tag.to_s)
end

When(/^I confirm$/) do
  page.execute_script 'window.confirm = function () { return true }'
end
