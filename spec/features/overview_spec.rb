require 'rails_helper'

describe "overview" do
  it "works" do
    visit overview_path
    expect(page).to have_content 'Missing People'
  end
end
