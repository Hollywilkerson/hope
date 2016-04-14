require 'rails_helper'

describe "About Me" do
  it "works" do
    visit "/About"
    expect(page).to have_content 'About Me'
    expect(page).to have_content 'My name is Holly Wilkerson. I have a passion for helping others and would
love to bring awareness to how many people go missing every year. The statistics are crazy.
I created this project with the hopes of helping others bring their
loved ones home. Helping make the difference in even one families life would mean the world to me.'
  end
end

