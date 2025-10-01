require 'spec_helper'

describe 'app', type: :feature, js: true do
  it 'clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.', wait: 10)
    expect(page).to have_no_content('Hi, Thank you for touch me!', wait: 10)
    click_on 'Greeting!'
    expect(page).to have_no_content('Hello, Thank you for accessing to this website.', wait: 10)
    expect(page).to have_content('Hi, Thank you for touch me!', wait: 10)
  end
end
