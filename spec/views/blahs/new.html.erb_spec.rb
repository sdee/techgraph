require 'spec_helper'

describe "blahs/new.html.erb" do
  before(:each) do
    assign(:blah, stub_model(Blah,
      :new_record? => true,
      :name => "MyString"
    ))
  end

  it "renders new blah form" do
    render

    rendered.should have_selector("form", :action => blahs_path, :method => "post") do |form|
      form.should have_selector("input#blah_name", :name => "blah[name]")
    end
  end
end
