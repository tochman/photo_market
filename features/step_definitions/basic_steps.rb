Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^the following images exists$/) do |table|
  table.hashes.each do |attr|
    #attr[:file] = "../spec/images/#{attr[:file]}"
    file = attr[:file]
    attr.delete('file')
    image = create(:image, attr)
    #image.fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png')
    image.file = File.new("spec/images/#{file}")
    image.save
  end
end

Given(/^there are no images in the system$/) do
  Image.destroy_all
end

Then(/^show me the page$/) do
  save_and_open_page
end