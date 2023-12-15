require "rails_helper"

RSpec.describe Member do
  it "exists" do
    azula = {
      "_id": "5cf5679a915ecad153ab68da",
      "allies": [
          "Ozai",
          "Zuko "
      ],
      "enemies": [
          "Iroh",
          "Zuko",
          "Kuei",
          "Long Feng",
          "Mai",
          "Ty Lee",
          "Ursa "
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      "name": "Azula",
      "affiliation": " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
  }
    
    @member = Member.new(azula)

    expect(@member).to be_a Member
    expect(@member.name).to eq("Azula")
    expect(@member.allies).to eq("Ozai and Zuko ")
    expect(@member.enemies).to eq("Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, and Ursa ")
    expect(@member.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(@member.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
  end
end