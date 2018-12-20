Given("the text entitled {string} exists") do |string|
  expect(page).to have_content(string)
end

When("I click Show on the text titled {string}") do |string|
  click_link "s-#{string}"
end

When("I fill comment Content with {string}") do |string|
  fill_in 'comment[content]', :with => string
end

When("I click Create Comment") do
  click_button 'Create Comment'
end

Then("I see a confirmation message that the comment is created") do
  expect(page).to have_content('Comment succesfully created.')
end

Given("the doubt entitled {string} exists") do |string|
  expect(page).to have_content(string)
end

When("I click Show on the doubt titled {string}") do |string|
  click_link "s-#{string}"
end

Then("I see an error message that the comment is not created") do
  expect(page).to have_content('Comment not created.')
end


And("And  the text entitled {string} exists") do |string|
end

When("When  I click Show on the text titled {string}") do |string|
end

And("And  I fill comment Content with {string}") do |string|
end

And("And  I click Create Comment") do
end

Then("Then  I see a confirmation message that the comment is created") do
end

Then("Then  I see an error message that the comment has not been created") do
end

And("And  the doubt entitled {string} exists") do |string|
end

When("When  I click Show on the doubt titled {string}") do |string|
end