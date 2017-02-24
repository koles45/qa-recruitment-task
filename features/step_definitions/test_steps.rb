    When(/^I visit home page$/) do
      visit "/" #visits the root page
    end

    Then(/^I can see "([^"]*)" page$/) do |text|
      expect(page).to have_text(text) #checks if the page has correct text
    end
