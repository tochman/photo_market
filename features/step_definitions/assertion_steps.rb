Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see an image named "([^"]*)"$/) do |image_name|
  within '#images' do
    expect(page).to have_content image_name
  end
end
