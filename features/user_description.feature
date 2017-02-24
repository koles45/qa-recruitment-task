Feature: Test user description

Scenario: Ad description

 Given User is on the "Red John" page

 When click "Edit description"
 And add user description as "Test user description"

 Then click description 'Save'
 And see "Test user description"

