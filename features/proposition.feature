Feature: Test propositions
 In order to add proposition User have to be Loged in
 To test complete correctly no propositions should be present
 when starting test

Scenario: Ad proposition

 Given User is on the "Red John" page

 When enter title as "Added Test Title"
 And description as "Test proposition description"
 And value as "123"

 Then he can "Save"
 And see "Added Test Title by"

Scenario: Comment added proposition

 Given User is on the "Red John" page
 And see "Added Test Title by"

 When comment proposition with "Test comment"

 Then click "Submit comment"
 And see "Test comment"



Scenario: Remove added proposition

 Given User is on the "Red John" page
 And see "Added Test Title by"

 When click "Delete"

 Then "Added Test Title by" is no longer present
