require 'spec_helper'

describe "community_levels/new" do
  before(:each) do
    assign(:community_level, stub_model(CommunityLevel,
      :name => "MyString",
      :code => "MyString"
    ).as_new_record)
  end

  it "renders new community_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => community_levels_path, :method => "post" do
      assert_select "input#community_level_name", :name => "community_level[name]"
      assert_select "input#community_level_code", :name => "community_level[code]"
    end
  end
end
