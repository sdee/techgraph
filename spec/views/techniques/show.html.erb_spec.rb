require 'spec_helper'

describe "techniques/show.html.erb" do
  before(:each) do
    @technique = assign(:technique, stub_model(Technique,
      :name => "Name",
      :level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain(1.to_s)
  end
end
