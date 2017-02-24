When(/^enter invalid email as "([^"]*)"$/) do |email|
  find_by_id('user_email').send_keys(email)
  find_by_id('user_password').send_keys('123456')
end

And(/^is still on "([^"]*)" page$/) do |text|
  assert_text(text)
end

When(/^enter invalid "([^"]*)" as "([^"]*)"$/) do |param, value|
  email = 'qa2@monterail.com'
  password = '123456'
  if param == 'email'
    find_by_id('user_email').send_keys(value)
    find_by_id('user_password').send_keys(password)
  else
    find_by_id('user_email').send_keys(email)
    find_by_id('user_password').send_keys(value)
  end
end

