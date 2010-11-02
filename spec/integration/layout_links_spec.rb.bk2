require 'spec_helper'


describe "LayoutLinks" do
  def check_page_links(page)
    visit page
    check_link("About")
    check_link("Help")
    check_link("Contact")
    check_link("Home")
  end 

  def check_link(link, content = link)
    click_link link
    response.should have_selector('title', :content => content)
  end

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should have a signup page at '/signup'" do 
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

  it "should have the right links on the layout" do
    check_page_links(about_path)
  end

  it "should have the right links on the layout" do
    check_page_links(help_path)
  end

  it "should have the right links on the layout" do
    check_page_links(contact_path)
  end

  it "should have the right links on the layout" do
    check_page_links(root_path)
    check_link("Sign up")
  end


end
