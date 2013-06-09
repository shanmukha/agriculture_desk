require 'spec_helper'

describe "taluks/new" do
  before(:each) do
    assign(:taluk, stub_model(Taluk,
      :district => "",
      :name => "MyString",
      :code => "MyString"
    ).as_new_record)
  end

  it "renders new taluk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taluks_path, :method => "post" do
      assert_select "input#taluk_district", :name => "taluk[district]"
      assert_select "input#taluk_name", :name => "taluk[name]"
      assert_select "input#taluk_code", :name => "taluk[code]"
    end
  end
end
