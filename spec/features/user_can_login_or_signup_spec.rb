require 'rails_helper'

RSpec.feature "User can login and signup", type: :feature do
  scenario 'user visits root and is redirected to login page' do
    visit '/'
    expect(page).to have_content('Sign in to access your Thought Box')
  end
end
