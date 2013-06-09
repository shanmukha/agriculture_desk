require 'spec_helper'

describe "areas/new" do
  before(:each) do
    assign(:area, stub_model(Area,
      :taluk => "",
      :name => "MyString",
      :code => "MyString"
    ).as_new_record)
  end

  it "renders new area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path, :method => "post" do
      assert_select "input#area_taluk", :name => "area[taluk]"
      assert_select "input#area_name", :name => "area[name]"
      assert_select "input#area_code", :name => "area[code]"
    end
  end
end
