require 'spec_helper'

describe 'app_1', type: :feature, js: true do
  it 'app_1 clicks greeting to change welcome message' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 1' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 2' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 3' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 4' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 5' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 6' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 7' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 8' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 9' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')
    click_on 'Greeting!'
    expect(page).not_to have_content('Hello, Thank you for accessing to this website.')
    expect(page).to have_content('Hi, Thank you for touch me!')
  end

  it 'app_1 clicks greeting to change welcome message 10' do
    visit '/'
    expect(page).to have_content('Hello, Thank you for accessing to this website.')
    expect(page).not_to have_content('Hi, Thank you for touch me!')

    # Click and wait for DOM update with retry logic for transient server errors
    max_retries = 3
    retry_count = 0
    begin
      click_on 'Greeting!'
      # Wait for the old content to disappear first
      expect(page).not_to have_content('Hello, Thank you for accessing to this website.', wait: 10)
      # Then check for new content
      expect(page).to have_content('Hi, Thank you for touch me!', wait: 10)
    rescue RSpec::Expectations::ExpectationNotMetError => e
      retry_count += 1
      if retry_count < max_retries
        # Retry by refreshing and clicking again
        visit '/'
        expect(page).to have_content('Hello, Thank you for accessing to this website.')
        retry
      else
        raise e
      end
    end
  end
end
