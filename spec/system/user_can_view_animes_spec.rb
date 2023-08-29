require "rails_helper"

RSpec.feature "Viewing Animes", type: :feature do
  scenario "I can see each anime in the system" do
    Anime.create(name: "Madhouse")
    Anime.create(name: "Ghibli")

    visit "/studios"

    expect(page).to have_content "Madhouse"
    expect(page).to have_content "Ghibli"
  end
end
