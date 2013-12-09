require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome to Pangea Physics'" do
      visit '/static_pages/home'
      expect(page).to have_content('Welcome to Pangea Physics')
    end
  

   it "should have the title 'Pangea Physics - Everything is connected'" do
      visit '/static_pages/home'
      expect(page).to have_title("Pangea Physics")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' - Everything is connected')
    end
  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
  

   it "should have the title 'Pangea Physics - Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Pangea Physics - Contact Us")
    end
  end


end
