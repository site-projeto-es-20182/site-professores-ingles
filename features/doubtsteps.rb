Given("I am in the doubts page") do
  visit 'http://localhost:3000/doubts'
end

Given("I am logged on as student with login {string} password {string}") do |string, string2| visit 'http://localhost:3000/users/sign_in'
  visit 'http://localhost:3000/users/sign_up'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  fill_in 'user[password_confirmation]', :with => string2
  click_button 'Sign up'
  visit 'http://localhost:3000/users/sign_in'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  click_button 'Log in'
  visit 'http://localhost:3000/doubts'
end

When("I click New doubt") do
  click_link 'New Doubt'
end

When("I fill the Title with {string} and Content with {string}") do |string, string2|
  fill_in 'doubt[title]', :with => string
  fill_in 'doubt[content]', :with => string2
end

When("I fill the Content with {string}") do |string|
  fill_in 'doubt[content]', :with => string
end

When("I fill the Title with {string}") do |string|
  fill_in 'doubt[title]', :with => string
end

Then("I see a confirmation message that the doubt is created") do
  expect(page).to have_content('Doubt was successfully created.')
end

Then("I see an error message that the doubt is not created") do
  expect(page).to have_content('prohibited this doubt from being saved:')
end

When("I click edit the doubt with title {string} and Content with {string}") do
|string, string2|
  click_link "e-#{string}"
end

When("I click edit the doubt with title {string}") do |string|
  click_link "e-#{string}"
end

When("I click delete the doubt with title {string} and Content with {string}") do |string, string2|
    click_link "d-#{string}"
end

Given("I am logged on as a teacher with login {string} password {string}") do |string, string2|
  visit 'http://localhost:3000/users/sign_up'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  fill_in 'user[password_confirmation]', :with => string2
  click_button 'Sign up'
  visit 'http://localhost:3000/users/sign_in'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  click_button 'Log in'
  visit 'http://localhost:3000/doubts'
end

When("I click delete doubt the doubt with title {string} and Content with {string}") do |string, string2|
  click_link "d-#{string}"
end

When("I click Create doubt") do
  click_button 'Create Doubt'
end

When("I click Update doubt") do
  click_button 'Update Doubt'
end

Then("I see a confirmation message that the doubt has been edited") do
  expect(page).to have_content('Doubt was successfully updated.')
end

When("I erase the title") do
  fill_in 'doubt[content]', :with => ""
end

Then("I see an error message that the doubt has not been edited") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I erase Content") do
  fill_in 'doubt[content]', :with => ""
end

When("I click Ok") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see a confirmation message that the doubt has been deleted") do
  expect(page).to have_content('Doubt was successfully destroyed.')
end