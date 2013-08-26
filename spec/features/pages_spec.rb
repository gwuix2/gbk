# coding: UTF-8
require 'spec_helper'

 describe "Static pages" do

  describe "About page" do

    it "should have the content 'Bemutatkozás'" do
      visit '/bemutatkozas'
      expect(page).to have_content('Bemutatkozás')
    end
  end

  describe "Posts page" do
  
  	it "should have the content 'Hírek'" do
  	  visit '/hirek'
  	  expect(page).to have_content('Hírek')
  	end
  end
  
end
