require 'spec_helper'

describe "states/show" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :country => "",
      :name => "Name",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/Code/)
  end
end
