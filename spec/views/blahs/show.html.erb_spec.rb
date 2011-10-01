require 'spec_helper'

describe "blahs/show.html.erb" do
  before(:each) do
    @blah = assign(:blah, stub_model(Blah,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
  end
end
