require "application_system_test_case"

class IntegrationsTest < ApplicationSystemTestCase
  def setup
    @main = User.create(first_name: "Isaac", last_name: "Asimov", email: "isaac.asimov@thp.org", password: "terminus", password_confirmation: "terminus")
  end
  
  def login
    visit new_user_session_path
    fill_in 'session_email', with: 'isaac.asimov@thp.org'
    fill_in 'session_password', with: 'terminus'
    find('input[type="submit"]').click
  end
  
  test "Homepage should display logout when logged in" do
    login
    visit root_path
    assert_selector("#navbarTogglerDemo03 > ul > li:nth-child(1) > a", text: 'Logout')
  end
  
  test "Homepage should display login when logged out" do
    visit root_path
    assert_selector("#navbarTogglerDemo03 > ul > li:nth-child(1) > a", text: 'Login')
  end
  
  test "Carousel should have at least one point" do
    visit root_path
    assert_selector "#point"
  end
  
  test "Carousel should have at least one image" do
    visit root_path
    assert_selector "#carousel > div:nth-child(1) > img"
  end
  
end
