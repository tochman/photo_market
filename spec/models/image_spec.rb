require 'rails_helper'

RSpec.describe Image, type: :model do

  describe 'Factory' do
    it 'is valid' do
      expect(create(:image)).to be_valid
    end
  end
  describe 'Database Table' do
    it {is_expected.to have_db_column(:name).of_type(:string)}
    it {is_expected.to have_db_column(:creator).of_type(:string)}
    it {is_expected.to have_db_column(:price).of_type(:integer)}
    it {is_expected.to have_db_column(:print_size).of_type(:string)}
  end

end
