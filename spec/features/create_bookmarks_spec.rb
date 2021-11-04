feature 'Adds a new bookmark' do
  scenario 'Adding a new bookmark to bookmark manager' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://w3.org')
    click_button('Submit')

    expect(page).to have_content('http://w3.org')
  end
end