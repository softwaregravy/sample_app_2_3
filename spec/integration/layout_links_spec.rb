require 'spec_helper'

describe "Layout links" do
  def check_page_links(page)                                                                                                                                                                              
    visit page
    check_link("About", 'pages/about')
    check_link("Help", 'pages/help')
    check_link("Contact", 'pages/contact')
    check_link("Home", 'pages/home')
  end 

  def check_link(link, template)
    click_link link
    response.should render_template(template)
  end 

  it "should have a Home page at '/'" do
    get '/'
    response.should render_template('pages/home')
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should render_template('pages/contact')
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should render_template('pages/about')
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should render_template('pages/help')
  end

  it "should have a signup page at '/signup'" do 
    get '/signup' 
    response.should render_template('users/new')
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
    check_link("Sign up", 'users/new')
  end

end

