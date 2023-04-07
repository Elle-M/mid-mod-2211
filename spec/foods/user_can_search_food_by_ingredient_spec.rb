require "rails_helper"

describe "Food Search" do
  it "returns a list of foods that contain the ingredient" do
    visit root_path

    fill_in :search, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Total Results: 44128")
    expect(page).to have_css(".food", count: 10)

    within(first(".food")) do
      expect(page).to have_css(".code")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brand")
      expect(page).to have_css(".ingredients")
    end
  end

  describe "sad path" do
    it "returns an error message if no ingredient is entered" do
      visit root_path

      fill_in :search, with: ""
      click_on "Search"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Please enter an ingredient")
    end
  end
end