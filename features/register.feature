Feature: Test registration process on herokuapp

Scenario: Correctly register on herokuapp

 Given User is on register page

 When fill in email as "test_email@mail.com"
 And password "test_password123"

 Then he can "Sign up"
 And no "error" is present
 And account is created

