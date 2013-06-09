require 'spec_helper'

describe "communities/show" do
  before(:each) do
    @community = assign(:community, stub_model(Community,
      :name => "Name",
      :community_type => "",
      :status => false,
      :area => "",
      :community_level => "",
      :description => "MyText",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/Code/)
  end
end
