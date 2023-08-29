require "rails_helper"

RSpec.feature "Viewing Animes in a Studio", type: :feature do
  scenario "I can see all anime associated with a studio" do
    madhouse = Studio.create(
      name: "Madhouse",
      japanese: true,
      rank: 15,
      founded_on: "1992-11-17"
    )

    death_note = madhouse.animes.create(
      name: "Death Note",
      streamable: true,
      season_count: 1,
      total_episodes: 37,
      rank: 75
    )

    onepunch_man = madhouse.animes.create(
      name: "One-Punch Man",
      streamable: true,
      season_count: 2,
      total_episodes: 24,
      rank: 127
    )

    visit "/studios/#{madhouse.id}/animes"

    save_and_open_page

    expect(page).to have_content death_note.name
    expect(page).to have_content death_note.streamable
    expect(page).to have_content death_note.season_count
    expect(page).to have_content death_note.total_episodes
    expect(page).to have_content death_note.rank

    expect(page).to have_content onepunch_man.name
    expect(page).to have_content onepunch_man.streamable
    expect(page).to have_content onepunch_man.season_count
    expect(page).to have_content onepunch_man.total_episodes
    expect(page).to have_content onepunch_man.rank
  end
end
