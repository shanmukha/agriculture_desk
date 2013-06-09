require 'spec_helper'

describe "community_levels/index" do
  before(:each) do
    assign(:community_levels, [
      stub_model(CommunityLevel,
        :name => "Name",
        :code => "Code"
      ),
      stub_model(CommunityLevel,
        :name => "Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of community_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
