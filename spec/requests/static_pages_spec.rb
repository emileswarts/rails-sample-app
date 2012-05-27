require 'spec_helper'
include ApplicationHelper

describe "Static Pages" do
	subject { page }

	describe "Home page" do
		before { visit root_path }
		it { should have_selector('h1', :text => 'Sample App') }
		it { should have_selector('title', :text => full_title('')) }
	end

	describe "Help page" do
		before { visit help_path }
		it { should have_selector('h1', :text => 'Help')}
		it { should have_selector('title', :text => full_title('Help'))}
	end

	describe "About page" do
		before { visit about_path }
		it { should have_selector('h1', :text => 'About') }
		it { should have_selector('title', :text => full_title('About')) }
	end

	describe "Contact page" do
		before { visit contact_path }
		it { should have_selector('h1', :text => 'Contact') }
		it { should have_selector('title', :text => full_title('Contact')) }
	end

	describe "signup page" do
		before { visit signup_path }
		it { should have_selector('h1', text: 'Sign up') }
		it { should have_selector('title', text: 'Sign up') }
	end

	describe "profile page" do
		#code to make a user variable
		before { visit user_path(user)}
		it { should have_selector('h1', text: user.name) }
		it { should have_selector('title', text: user.name) }
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact')
		click_link "Home"
		click_link "Sign up now!"
		page.should have_selector 'title', text: full_title('Sign up')
		click_link "sample app"
		page.should have_selector 'title', text: full_title('')
	end
end

