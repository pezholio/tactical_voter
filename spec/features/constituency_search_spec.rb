require "rails_helper"

RSpec.describe "Searching for a Constituency" do
  scenario "when postcode exists" do
    visit "/"

    postcode = "SW1A1AA"
    fill_in "postcode", with: postcode
    click_on "Go!"

    expect(page).to have_content("Westminster")
    expect(page).to have_content("JUST BLOODY VOTE LABOUR")
  end

  scenario "when postcode does not exist" do
    visit "/"

    postcode = "AAAAA"
    fill_in "postcode", with: postcode
    click_on "Go!"

    expect(page).to have_content("Postcode doesn't exist")
  end
end
