require 'spec_helper'

describe "community_types/show" do
  before(:each) do
    @community_type = assign(:community_type, stub_model(CommunityType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
