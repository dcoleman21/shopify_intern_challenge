require 'rails_helper'

RSpec.describe "Add new photo" do
  describe 'visit photos' do
    it "can add a new photo" do
      visit photos_path

      click_on 'New Photo'

      expect(current_path).to eq(new_photo_path)

      fill_in 'Title', with: "My new photo"
      fill_in 'Description', with: "Here is my new photo."
      fill_in 'Url', with: "./assets/images/giraffe_eye.jpg"

      click_on 'Submit'

      expect(current_path).to eq(photos_path)
      expect(page).to have_content("My new photo")
    end
  end
end
