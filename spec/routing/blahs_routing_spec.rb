require "spec_helper"

describe BlahsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/blahs" }.should route_to(:controller => "blahs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/blahs/new" }.should route_to(:controller => "blahs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/blahs/1" }.should route_to(:controller => "blahs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/blahs/1/edit" }.should route_to(:controller => "blahs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/blahs" }.should route_to(:controller => "blahs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/blahs/1" }.should route_to(:controller => "blahs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/blahs/1" }.should route_to(:controller => "blahs", :action => "destroy", :id => "1")
    end

  end
end
