require 'spec_helper'

describe "techniques/index.html.erb" do
  before(:each) do
    assign(:techniques, [
      stub_model(Technique,
        :name => "Name",
        :level => 1
      ),
      stub_model(Technique,
        :name => "Name",
        :level => 1
      )
    ])
  end

  it "renders a list of techniques" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
