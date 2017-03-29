require 'rails_helper'

RSpec.feature "adding posts" do

  scenario " allow a user to add a post" do

    visit new_post_path

    fill_in "title", with: "First Title"
    fill_in "body", with: "First Body"

    click_on("Create Post")

    expect(page).to have_content("First Title")
    expect(page).to have_content("First Body")

  end

end
