require 'rails_helper'

describe "Events", :type => :feature do
  
  let(:user){ create(:user) }
  
  before(:each) do
    create(:events)
  end

  it "lets me view them" do
    visit events_path 
    expect(page).to have_content 'PitchBreakfast'
  end
  
  it "lets me start to create one" do
    visit "/"
    click_link "Events"
    expect(page).to have_link 'New Event'
  end
  
  it "let me create one" do
    visit "/"
    click_link "Events"
    click_link 'New Event'
    within("#new_event") do
      fill_in "Category", with: "Event"
      fill_in "Name", with: "StartCharlotte"
      fill_in "Url", with: "http://www.startcharlotte.com/"
      click_button 'Create Event'
    end
    expect(page).to have_content("StartCharlotte")
  end
end