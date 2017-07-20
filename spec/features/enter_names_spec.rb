feature 'players can enter their names' do
  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content "Yulia VS Kat"
  end
end
