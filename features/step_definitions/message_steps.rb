Given /^I have messages$/ do
  Message.find_or_create_default
end

When /^I fill first message form with "(.+)"$/ do |message|
  fill_in "message_content_#{Message.first.id}", :with => message
  click_button "Send"
end

When /^I access the new tab$/ do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

Then /^I should see "(.+)" in first form$/ do |message|
  page.should have_content("hello")
end