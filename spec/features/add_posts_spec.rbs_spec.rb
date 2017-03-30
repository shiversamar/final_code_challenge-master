require 'rails_helper'

RSpec.feature "message board", type: :feature do
  context 'On website' do
    Steps 'to view message board ' do
      Given 'I am on landing page of message board' do
        visit '/'
      end # Given
      Then 'I see Message Board' do
        expect(page).to have_content ("Message Board")
        expect(page).to have_content ("Sign up")
        expect(page).to have_content ("Log In")
      end #Then
    end # Steps

    Steps 'to View Post' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can click the view post button' do
        click_link('View Post')
      end
      And 'I can see the view page' do
        expect(page).to have_content ("Post Message")
        expect(page).to have_content ("Posted by:")
        expect(page).to have_content ("Comments")
        expect(page).to have_content ("Reply to Post")
        expect(page).to have_content ("black space area")
        expect(page).to have_content ("button Comment")
        expect(page).to have_content ("back button")
      end#end of And
    end#Steps

    Steps 'signup' do
      Given 'I that I am on the sign up page' do
        visit '/'
        click_link('sign_up')
        expect(page).to have_content("Sign up")
      end
      Then 'I can sign up' do
        fill_in('first_name', :with => 'testfirstname')
        fill_in('last_name', :with => 'testlastname')
        fill_in('about_me', :with => 'web developer')
        fill_in('Email', :with => 'test@gmail.com')
        fill_in('user_password', :with => 'password')
        fill_in('user_password_confirmation', :with => 'password')
        click_button('Sign up')
        expect(page).to have_content("Welcome You have signed up successfully.")
      end
    end

    Then 'I can creste new post' do
      fill_in('Post Title', :with => 'Test Title')
      fill_in('Body', :with => 'Test Body')
      click_button('Create Post')
    end

    Then 'I can create comment to the post' do
      fill_in('Reply to Message', :with => 'Test reply')
      click_button('Create Comment')
    end

    Steps 'log in' do
      Given 'I that I am on the log in page' do
        visit '/'
        click_link('log in')
        expect(page).to have_content("log in")
      end
      Then 'I can log in' do
        fill_in('Email', :with => 'test@gmail.com')
        fill_in('user_password', :with => 'password')
        click_button('Remember me')
        click_button('log in')
        expect(page).to have_content("forgot your password")
        expect(page).to have_content("Signed up successfully.")
      end
    end
  end

Then 'I can Sign out' do
    click_link('sign out')
    expect(page).to have_content("Signed out successfully.")
  end

  end # Context
end # RSpec
