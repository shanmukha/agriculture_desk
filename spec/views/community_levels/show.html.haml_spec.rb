require 'spec_helper'

describe "community_levels/show" do
  before(:each) do
    @community_level = assign(:community_level, stub_model(CommunityLevel,
      :name => "Name",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
  end
end
