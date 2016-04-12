require 'rails_helper'

describe "homepage" do
  it "works" do
    visit '/'
    expect(page).to have_content 'Welcome Hope'
  end
  it "has a link" do
    visit '/'
    expect(page).to have_link 'Log In'
  end

  it "has a link that goes to the overview page" do
    visit '/'
    click_link ''
    expect(page).to have_content 'Missing People'
  end

  it "has a link" do
    visit '/'
    expect(page).to have_link 'About'
  end
end
