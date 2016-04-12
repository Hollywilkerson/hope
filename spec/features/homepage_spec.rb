require 'rails_helper'

describe "homepage" do
  it "works" do
    visit '/'
    expect(page).to have_content 'Hope'
  end
  it "has a link" do
    visit '/'
    expect(page).to have_link 'Go'
  end

  it 'has a link that goes to the overview page' do
    visit '/'
    click_link 'Go'
    expect(page).to have_content 'Missing People Overview'
  end

  it "has a link" do
    visit '/'
    expect(page).to have_link 'About'
  end

  it 'has a link that goes to the about me page' do
    visit '/'
    click_link 'About'
    expect(page).to have_content 'About Me'
  end
end
