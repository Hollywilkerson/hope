require 'rails_helper'

describe "homepage" do
  it "works" do
    visit '/'
    expect(page).to have_content 'Welcome Hope'
  end
end
