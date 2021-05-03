require 'rails_helper'

RSpec.describe "photos index page" do
  it 'can see a link to add a new photo' do
    visit photos_path
    expect(page).to have_content("Title")
    expect(page).to have_content("Description")
    expect(page).to have_content("Url")
    expect(page).to have_link("New Photo")
  end

  it "can see a link to delete an exisiting photo" do
    visit photos_path

    click_on 'New Photo'

    expect(current_path).to eq(new_photo_path)

    fill_in 'Title', with: "My new photo"
    fill_in 'Description', with: "Here is my new photo."
    fill_in 'Url', with: "./assets/images/giraffe_eye.jpg"

    click_on 'Submit'
    
    expect(page).to have_link("Delete Photo")
  end
end
