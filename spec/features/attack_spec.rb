feature "attacking" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Yulia attacks Kat"
  end

  scenario "player 2 reduced by 10 after attack" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).not_to have_content "Kat: 60HP"
    expect(page).to have_content "Kat: 50HP"
  end
end
