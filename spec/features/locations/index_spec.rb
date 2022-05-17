
require 'rails_helper'

RSpec.describe 'user sees all locations' do
  describe 'user visits index page' do
    it 'displays all locations' do
      item1 = Location.create!(name: 'Boise')
      item2 = Location.create!(name: 'Devner')

      visit locations_path
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item2.name)
    end
  end
end
