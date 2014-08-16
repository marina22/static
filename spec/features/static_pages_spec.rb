require 'spec_helper'
require 'capybara/rspec'

feature "Static pages" do
  scenario "Home page" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    expect(page).not_to have_title('| Home')
  end

  scenario "Help page" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end

  scenario "About page" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  end
end
