require 'spec_helper'

describe "community_types/index" do
  before(:each) do
    assign(:community_types, [
      stub_model(CommunityType,
        :name => "Name"
      ),
      stub_model(CommunityType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of community_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
