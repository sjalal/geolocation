When(/^I go to the homepage$/) do
 visit "/"
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link_or_button arg1
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_name|
  fill_in field_name, with: value
  fill_in field_name, with: value 
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should_not have_content("Sign in")
end

When "show me the page" do
	save_and_open_page
end