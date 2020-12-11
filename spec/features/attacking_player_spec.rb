feature "Attacking player" do
  scenario 'Getting confirmation that player_1 attacked player_2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_text("Sarah attacked Aman")
  end

  scenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_link 'P1 Attack'
    expect(page).to have_text('Amans HP is now 90')
  end

  scenario 'reduces player 1 hp by 10' do
    sign_in_and_play
    click_link 'P2 Attack'
    expect(page).to have_text('Sarahs HP is now 90')
  end 
end
