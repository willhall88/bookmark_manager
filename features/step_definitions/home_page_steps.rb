Given(/^I am on the home page$/) do
  visit ("/")
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |element, text|
  fill_in element, with: text
end

Given(/^I click "(.*?)"$/) do |element|
  find_button(element).click
end

Then(/^I should see "(.*?)" in a link$/) do |text|
  page.should have_link text
end