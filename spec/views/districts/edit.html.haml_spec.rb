require 'spec_helper'

describe "districts/edit" do
  before(:each) do
    @district = assign(:district, stub_model(District,
      :state => "",
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit district form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => districts_path(@district), :method => "post" do
      assert_select "input#district_state", :name => "district[state]"
      assert_select "input#district_name", :name => "district[name]"
      assert_select "input#district_code", :name => "district[code]"
    end
  end
end