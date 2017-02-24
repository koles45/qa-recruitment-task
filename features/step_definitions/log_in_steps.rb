Given(/^User is on the homepage$/) do
  visit '/'
end

When(/^enter valid details for Login$/) do
  find_by_id('user_email').send_keys('qa2@monterail.com')
  find_by_id('user_password').send_keys('123456')
end

Then(/^he can "([^"]*)" and see "([^"]*)"$/) do |button_value, text|
  find_button({value: button_value}).click
  assert_text(text)
end
