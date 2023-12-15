require "rails_helper"

RSpec.describe "Root Path" do
  describe "Search functionality" do
    it "can visit get the fire nation members" do
      visit root_path

      select "Fire Nation", from: :nation
      click_button("Search For Members")

      expect(current_path).to eq("/search")

      expect(page).to have_content("Total: 97")
      expect(page).to have_content("Name: Azula")
      expect(page).to have_content("Allies: Ozai and Zuko")
      expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, and Ursa")
      expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      # expect(page).to have_image
    end
  end
end