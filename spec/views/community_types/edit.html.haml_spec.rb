require 'spec_helper'

describe "community_types/edit" do
  before(:each) do
    @community_type = assign(:community_type, stub_model(CommunityType,
      :name => "MyString"
    ))
  end

  it "renders the edit community_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => community_types_path(@community_type), :method => "post" do
      assert_select "input#community_type_name", :name => "community_type[name]"
    end
  end
end
