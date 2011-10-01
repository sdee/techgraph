require 'spec_helper'

describe "techniques/edit.html.erb" do
  before(:each) do
    @technique = assign(:technique, stub_model(Technique,
      :new_record? => false,
      :name => "MyString",
      :level => 1
    ))
  end

  it "renders the edit technique form" do
    render

    rendered.should have_selector("form", :action => technique_path(@technique), :method => "post") do |form|
      form.should have_selector("input#technique_name", :name => "technique[name]")
      form.should have_selector("input#technique_level", :name => "technique[level]")
    end
  end
end
