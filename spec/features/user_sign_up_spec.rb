require "rails_helper"

feature "User can sign up" do
  scenario "successfully" do
    visit root_path
    fill_in "user[name]", with: "example"
    fill_in "user[email]", with: "example@gmail.com"
    fill_in "user[password]", with: "123123"
    fill_in "user[password_confirmation]", with: "123123"
    click_on "Submit"
    expect(page).to have_content('hi, example@gmail.com') #target html value
  end
end
