require 'rails_helper'

RSpec.describe InventoryItem, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:unit_price) }
  end
end
