require 'spec_helper'

describe "Pages" do

  describe "Home page" do
    it "Should have title" do
      visit '/pages/home'
      expect(page).to have_title( website_title )
    end
  end
end
