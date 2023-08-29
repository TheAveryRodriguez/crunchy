require "rails_helper"

RSpec.feature "Viewing Studios", type: :feature do
  scenario "I can see the name of each studio in the system" do
    Studio.create(name: "Madhouse")
    Studio.create(name: "Ghibli")

    visit "/studios"

    expect(page).to have_content "Madhouse"
    expect(page).to have_content "Ghibli"
  end
end
