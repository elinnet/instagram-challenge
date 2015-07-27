require 'rails_helper'

feature 'likes' do
  before {Picture.create description: 'berries'}

  context 'likes can be added' do
      scenario 'a user like a picture, which increments the like count' do
      visit '/pictures'
      click_link 'Sign up'
      fill_in 'Email', with: 'test123@gmail.com'
      fill_in 'Password', with: '123password'
      fill_in 'Password confirmation', with: '123password'
      click_button 'Sign up'
      click_link 'Like'
      expect(page).to have_content('1 Like')
      end
  end

end
