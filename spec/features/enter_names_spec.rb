feature 'players can enter their names' do
  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content "Yulia VS Kat"
  end

  scenario "player can switch turns" do
    sign_in_and_play
    expect(page).to have_content "Yulia plays now"
  end

  scenario "after firt attack" do
    sign_in_and_play
    click_button "Attack!"
    click_link "OK"
    expect(page).not_to have_content "Yulia plays now"
    expect(page).to have_content "Kat plays now"
  end
end
