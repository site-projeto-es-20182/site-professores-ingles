Given("I am in the texts page") do
  visit 'http://localhost:3000/texts'
end

Given("I am logged on as student {string} with password {string}") do |string, string2|
  visit 'http://localhost:3000/users/sign_up'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  fill_in 'user[password_confirmation]', :with => string2
  click_button 'Sign up'
  visit 'http://localhost:3000/users/sign_in'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  click_button 'Log in'
  visit 'http://localhost:3000/texts'
end

When("I click New Text") do
  click_link 'New Text'
end

When("I fill Title with {string} and Content with {string}") do |string, string2|
  fill_in 'text[title]', :with => string
  fill_in 'text[content]', :with => string2
end

When("I click Create Text") do
  click_button 'Create Text'
end

Then("I see a confirmation message that the text is created") do
  expect(page).to have_content('Text was successfully created.')
end

Then("I see an error message that the text is not created") do
  expect(page).to have_content('prohibited this text from being saved:')
end

When("I fill Content with {string}") do |string|
  fill_in 'text[content]', :with => string
end

When("I click Create text") do
  click_button 'Create Text'
end

When("I fill Title with {string}") do |string|
  fill_in 'text[title]', :with => string
end

When("I click Edit on the text titled {string}") do |string|
  click_link "e-#{string}"
end

When("I fill title with {string}") do |string|
  fill_in 'text[title]', :with => string
end

When("I click Update Text") do
  click_button 'Update Text'
end

Then("I  see a confirmation message that the text is edited") do
  expect(page).to have_content('Text was successfully updated.')
end

When("I fill content with {string}") do |string|
  fill_in 'text[content]', :with => string
end

Then("I see a confirmation message that the text is edited") do
  expect(page).to have_content('Text was successfully updated.')
end

When("I click Delete on the text titled {string}") do |string|
  click_link "d-#{string}"
end

Then("I see the log in page") do
  visit 'http://localhost:3000/users/sign_in'
end

Then("I see an error message that the text is not deleted") do
  expect(page).to have_content('You do not have permission to do this.')
end

Given("I am logged on as admin {string} with password {string}") do |string, string2|
  visit 'http://localhost:3000/users/sign_in'
  fill_in 'user[email]', :with => string
  fill_in 'user[password]', :with => string2
  visit 'http://localhost:3000/texts'
end

When("I see a message to confirm deletion") do
  page.driver.browser.switch_to.alert
  #expect(page).to have_content('Are you sure?')
  #page.accept_confirm do
   # expect(page).to have_content('Are you sure?')
  #end
end

When("I click Ok") do
  #click_button 'Ok'
  page.accept_confirm do
    click_link 'Ok'
  end
end

Then("I see a confirmation message that the text is deleted") do
  expect(page).to have_content('Text was successfully destroyed.')
end

