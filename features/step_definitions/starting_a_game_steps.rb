Given(/^I am on the homepage$/) do
  visit '/' 
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content? arg1 
end

Then(/^I enter "(.*?)"$/) do |arg1|
  fill_in("name", :with => arg1) 
end

Then(/^I shall be redirected to "(.*?)"$/) do |arg1|
  visit(arg1)
end

Then(/^I shall see "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

# All tests passing but not sure why... Prob with last two tests