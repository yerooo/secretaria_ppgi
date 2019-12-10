
Feature: Login
	To use application resources
	As a system user
	I would like to log in with my account

	Scenario: Log in a valid user
		Given I am on the log in page
		And I fill in 'email' with 'admin@admin.com'
		And I fill in 'password' with '123456'
		When I press 'Entrar' button
		Then i should be on "root_path" page
