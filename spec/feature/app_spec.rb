require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
    puts page.driver.browser
    sleep 5
  end

  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
    sleep 5
  end

  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
    sleep 5
  end

  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
    sleep 5
  end
end
