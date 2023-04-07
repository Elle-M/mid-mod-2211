require "rails_helper"

describe "Welcome Index Page" do
  it "has a search form" do
    visit root_path

    expect(page).to have_field(:search)
    expect(page).to have_button("Search")
  end

  it "redirect to /foods when search is submitted" do
    visit root_path

    fill_in :search, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq(foods_path)
  end
end