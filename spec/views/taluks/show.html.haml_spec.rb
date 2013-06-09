require 'spec_helper'

describe "taluks/show" do
  before(:each) do
    @taluk = assign(:taluk, stub_model(Taluk,
      :district => "",
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
