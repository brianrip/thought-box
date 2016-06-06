require 'rails_helper'

RSpec.feature "User can login and signup", type: :feature do
  scenario 'user visits root and is redirected to login page' do
    visit '/'
    expect(page).to have_content('Sign in to access your Thought Box')
  end

  scenario 'user signs up for account and is redirected to links index' do
    visit '/'
    click_on "Haven't Registered? Sign up here!"
    expect(page).to have_content('Please sign up for Thought Box')

    fill_in "Email", with: "example@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_on "Sign up"

    expect(current_path).to eq("/links")
  end

  scenario 'existing user logs in and is redirected to links path' do
    user = User.create(email: "example@gmail.com", password: "password")

    visit '/'

    fill_in "Email", with: "example@gmail.com"
    fill_in "Password", with: "password"

    click_on "Log in"

    expect(current_path).to eq("/links")
  end
end
