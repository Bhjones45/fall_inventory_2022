# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:location_inventories) }
    it { should have_many(:inventory_items).through(:location_inventories) }
  end
end
