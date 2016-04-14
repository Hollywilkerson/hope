require 'rails_helper'

describe "homepage" do
  it "works" do
    visit '/'
    expect(page).to have_content 'On average, 90,000 people are missing in the USA at any given time!'
    expect(page).to have_content '50,569 are adults'
    expect(page).to have_content '33,388 are children'
  end

  it "has a link" do
    visit '/'
    expect(page).to have_link 'Help Bring Us Home'
  end

  it 'has a link that goes to the overview page' do
    visit '/'
    click_link 'Help Bring Us Home'
    expect(page).to have_content 'The Missing'
  end

  it "has a link" do
    visit '/'
    expect(page).to have_link 'About Me'
  end

  it 'has a link that goes to the about me page' do
    visit '/'
    click_link 'About Me'
    expect(page).to have_content 'About Me'
  end
end
