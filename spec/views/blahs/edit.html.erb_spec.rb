require 'spec_helper'

describe "blahs/edit.html.erb" do
  before(:each) do
    @blah = assign(:blah, stub_model(Blah,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit blah form" do
    render

    rendered.should have_selector("form", :action => blah_path(@blah), :method => "post") do |form|
      form.should have_selector("input#blah_name", :name => "blah[name]")
    end
  end
end
