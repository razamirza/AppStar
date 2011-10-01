require 'spec_helper'

describe PagesController do

  describe "Get 'home'" do
    it "should return a successful response" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
				    :content => 'cout << "AppStar | Home"')
    end

    it "should not have empty body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end 
  end

end
