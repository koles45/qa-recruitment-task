Given(/^User is on register page$/) do
  visit '/users/sign_up#/'
end

When(/^fill in email as "([^"]*)"$/) do |email|
  find_by_id('user_email').send_keys(email)
end

And(/^password "([^"]*)"$/) do |password|
  find_by_id('user_password').send_keys(password)
  find_by_id('user_password_confirmation').send_keys(password)
end

Then(/^he can "([^"]*)"$/) do |button_value|
  find_button({value: button_value}).click
end

And(/^no "([^"]*)" is present$/) do |error|
  sleep 2 # I've added this sleep as for some reason option passed to assert didn't do it's job
  assert_no_text(error, {:wait => 2})
end

And(/^account is created$/) do
  pending # This stays pending as I have never been able to see correct
	  # account creation and futher more I'm not able to define what
	  # to verify
end


