require 'spec_helper'

describe "blahs/index.html.erb" do
  before(:each) do
    assign(:blahs, [
      stub_model(Blah,
        :name => "Name"
      ),
      stub_model(Blah,
        :name => "Name"
      )
    ])
  end

  it "renders a list of blahs" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
