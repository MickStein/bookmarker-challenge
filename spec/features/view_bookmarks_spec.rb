require 'spec_helper'

feature 'view bookmarks' do
  scenario 'click on page to view bookmarks list' do
    visit '/bookmarks'
    expect(page).to have_content(['bookmark 1', "bookmark 2","bookmark 3", "bookmark 4"])
  end
end