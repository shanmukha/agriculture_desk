require 'spec_helper'

describe "community_types/new" do
  before(:each) do
    assign(:community_type, stub_model(CommunityType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new community_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => community_types_path, :method => "post" do
      assert_select "input#community_type_name", :name => "community_type[name]"
    end
  end
end
