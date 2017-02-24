And(/^add user description as "([^"]*)"$/) do |description|
  fill_in('aboutMeInput', with: '')
  fill_in('aboutMeInput', with: description)
end

Then(/^click description 'Save'$/) do
  all('.crs-button').first.click
end
