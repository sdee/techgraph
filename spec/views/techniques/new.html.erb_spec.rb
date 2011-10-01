require 'spec_helper'

describe "techniques/new.html.erb" do
  before(:each) do
    assign(:technique, stub_model(Technique,
      :new_record? => true,
      :name => "MyString",
      :level => 1
    ))
  end

  it "renders new technique form" do
    render

    rendered.should have_selector("form", :action => techniques_path, :method => "post") do |form|
      form.should have_selector("input#technique_name", :name => "technique[name]")
      form.should have_selector("input#technique_level", :name => "technique[level]")
    end
  end
end
