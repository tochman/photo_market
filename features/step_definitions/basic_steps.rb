Given(/^I am on the index page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following images exists$/) do |table|
  table.hashes.each do |attr|
    Image.create(attr)
  end
end
