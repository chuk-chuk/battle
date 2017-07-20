def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: "Yulia"
  fill_in :player_2_name, with: "Kat"
  click_button "START GAME"
end
