require "rails_helper"

RSpec.feature "Viewing Studios", type: :feature do
  scenario "I can see a studio in the system" do
    madhouse = Studio.create(
      name: "Madhouse",
      japanese: true,
      rank: 15,
      founded_on: "1992-11-17"
    )

    visit "/studios/#{madhouse.id}"

    expect(page).to have_content "Madhouse"
    expect(page).to have_content "true"
    expect(page).to have_content "15"
    expect(page).to have_content "1992-11-17"
    #    expect(page).to have_content madhouse.created_at
    #    expect(page).to have_content madhouse.updated_at
  end
end
