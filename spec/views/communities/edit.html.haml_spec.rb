require 'spec_helper'

describe "communities/edit" do
  before(:each) do
    @community = assign(:community, stub_model(Community,
      :name => "MyString",
      :community_type => "",
      :status => false,
      :area => "",
      :community_level => "",
      :description => "MyText",
      :code => "MyString"
    ))
  end

  it "renders the edit community form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => communities_path(@community), :method => "post" do
      assert_select "input#community_name", :name => "community[name]"
      assert_select "input#community_community_type", :name => "community[community_type]"
      assert_select "input#community_status", :name => "community[status]"
      assert_select "input#community_area", :name => "community[area]"
      assert_select "input#community_community_level", :name => "community[community_level]"
      assert_select "textarea#community_description", :name => "community[description]"
      assert_select "input#community_code", :name => "community[code]"
    end
  end
end
