Feature: User signs up

	Scenario: Happy path
	When I go to the homepage
	And I click "Sign up"
	And I fill in "bob@example.com" for "Email"
	And I fill in "password1" for "Password"
	And I fill in "password1" for "Password confirmation"
	And I press "Sign up"
	Then I should see "Signed in as"
	When I click "Sign out"
	Then I should see "Signed out successfully."

	Scenario: Skipping password
	When I go to the homepage
	And I click "Sign up"
	And I fill in "bob@example.com" for "Email"
	And I fill in "" for "Password"
	And I press "Sign up"
	Then I should see "Password can't be blank"

	Scenario: Invalid email
	When I go to the homepage
	And I click "Sign up"
	And I fill in "bobexample.com" for "Email"
	And I fill in "password1" for "Password"
	And I press "Sign up"
	Then I should see "Email is invalid"