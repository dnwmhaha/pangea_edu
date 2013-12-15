require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome to Pangea Physics'" do
      visit root_path
      expect(page).to have_content('Everything is connected')
    end
  

   it "should have the title 'Pangea Physics - Everything is connected'" do
    	visit root_path
      expect(page).to have_title("Pangea Physics")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title(' - Everything is connected')
    end
  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact Us')
    end
  

   it "should have the title 'Pangea Physics - Contact Us'" do
      visit contact_path
      expect(page).to have_title("Pangea Physics - Contact Us")
    end
  end


end
