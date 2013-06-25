@wip
Feature: Users can signs in and signs out
In order to save locations
As a user
I want to sign in

	Scenario: Happy Path
	Given the user "bob@example.com" with password "password1"
	When I go to the homepage
	And I click "Sign in"
	And I fill in "bob@example.com" for "Email"
	And I fill in "password1" for "Password"
	And I press "Sign in"

	Then I should see "Signed in as"
	And I should not see "Sign in"


	Scenario: Wrong Password
	Given the user "bob@example.com" with password "password1"
	When I go to the homepage
	And I click "Sign in"
	And I fill in "bob@example.com" for "Email"
	And I fill in "wrong password" for "Password"
	And I press "Sign in"
	Then I should see "Invalid email or password."

	Scenario: Wrong Username
	Given the user "bob@example.com" with password "password1"
	When I go to the homepage
	And I click "Sign in"
	And I fill in "betty@example.com" for "Email"