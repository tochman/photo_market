Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^the following images exists$/) do |table|
  table.hashes.each do |attr|
    create(:image, attr)
  end
end
