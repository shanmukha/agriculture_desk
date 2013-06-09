require 'spec_helper'

describe "communities/index" do
  before(:each) do
    assign(:communities, [
      stub_model(Community,
        :name => "Name",
        :community_type => "",
        :status => false,
        :area => "",
        :community_level => "",
        :description => "MyText",
        :code => "Code"
      ),
      stub_model(Community,
        :name => "Name",
        :community_type => "",
        :status => false,
        :area => "",
        :community_level => "",
        :description => "MyText",
        :code => "Code"
      )
    ])
  end

  it "renders a list of communities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
