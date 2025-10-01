require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/'
    
    # Ensure page is fully loaded before proceeding
    expect(page).to have_content('Hello, Thank you for accessing to this website.', wait: 10)
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    
    click_on 'Greeting!'
    
    # Add explicit waits for asynchronous JavaScript execution
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.', wait: 10)
    expect(page).to have_content('Hi, Thank you for touch me!', wait: 10)
  end
end
