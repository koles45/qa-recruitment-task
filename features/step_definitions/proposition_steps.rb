Given(/^User is on the "([^"]*)" page$/) do |username|
  visit '/'
  find_by_id('user_email').send_keys('qa2@monterail.com')
  find_by_id('user_password').send_keys('123456')
  click_on 'Log in'
  click_on username
end

When(/^enter title as "([^"]*)"$/) do |title|
  fill_in('propositionTitle', with: title)
end

When(/^description as "([^"]*)"$/) do |desc|
  fill_in('propositionDescription', with: desc)
end

When(/^value as "([^"]*)"$/) do |value|
  fill_in('propositionValue', with: value)
end

And(/^see "([^"]*)"$/) do |assert_text|
  assert_text(assert_text)
end

When(/^click "([^"]*)"$/) do |delete|
  click_on delete
end

Then(/^"([^"]*)" is no longer present$/) do |title|
  assert_no_text(title, {:wait => 2})
end

When(/^comment proposition with "([^"]*)"$/) do |comment|
  fill_in('commentNew', with: comment)
end

