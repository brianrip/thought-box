require 'rails_helper'

RSpec.feature "User can logout from links landing page", type: :feature do
  scenario 'logged in user logs out from links page and is redirected to signin' do
    user = User.create(email: "example@gmail.com", password: "password")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/links'

    click_on 'Log out'

    expect(page).to have_content('Sign in to access your Thought Box')
    expect(current_path).to eq(root_path)

  end
end
