Feature: Test incorrect user login action

Scenario: Try to login on Home page with invalid email

 Given User is on the homepage

 When enter invalid "email" as "invalid@email.com"

 Then click "Log in"
 And is still on "Log in" page

Scenario: Try to login on Home page with invalid password

 Given User is on the homepage

 When enter invalid "password" as "invalid_password"

 Then click "Log in"
 And is still on "Log in" page

Scenario: Try to login on Home page with invalid empty email

 Given User is on the homepage

 When enter invalid "email" as ""

 Then click "Log in"
 And is still on "Log in" page

Scenario: Try to login on Home page with invalid empty password

 Given User is on the homepage

 When enter invalid "password" as ""

 Then click "Log in"
 And is still on "Log in" page
