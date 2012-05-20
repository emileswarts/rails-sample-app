require 'spec_helper'

describe "Static Pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App"}

	describe "Home page" do
		before { visit root_path }
		it "should have the content 'Sample App'" do
			page.should have_selector('h1', :text => 'Sample App')
		end
		it "should have the base title" do
			page.should have_selector('title',
									 :text => "#{base_title}")
		end
		it "should not have a custom page title" do
			page.should_not have_selector('title', :text => '| Home')
		end
	end

	describe "Help page" do
		before { visit help_path }
		it "should have the content 'Help'" do
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the right title" do
			page.should have_selector('title',
									 :text => "#{base_title} | Help")
		end
	end

	describe "About page" do
		before { visit about_path }
		it "should have the content 'About'" do
			page.should have_selector('h1', :text => 'About')
		end
		it "should have the right title" do
			page.should have_selector('title',
									 :text => "#{base_title} | About")
		end
	end

	describe "Contact page" do
		before { visit contact_path }
		it "should have the h1 'Contact'" do
			page.should have_selector('h1', :text => 'Contact')
		end
		it "should have the right title" do
			page.should have_selector('title',
									 :text => "#{base_title} | Contact")
		end
	end
end

