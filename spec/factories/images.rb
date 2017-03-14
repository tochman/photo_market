FactoryGirl.define do
  factory :image do
    name "MyString"
    creator "MyString"
    price 1
    print_size "MyString"
    file { File.new("#{Rails.root}/spec/images/my_cat.png") }
  end
end
