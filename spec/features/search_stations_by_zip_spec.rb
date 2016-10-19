describe "logged in user visits root", :type => :feature do
  it 'visits root' do
    # create(:user)
    visit '/'
    # fill_in(search), with: '80203',
    click_link 'locate'
    expect(current_path).to eq('/search')
    # expect(params).to eq("?")
    expect(page).to have_content("Name")
    expect(page).to have_content("Address")
    expect(page).to have_content("Fuel Types")
  end
end




    # As a user
    # When I visit "/"
    # And I fill in the search form with 80203
    # And I click "Locate"
    # Then I should be on page "/search" with parameters visible in the url
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
