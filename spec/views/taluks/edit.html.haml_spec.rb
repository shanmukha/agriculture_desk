require 'spec_helper'

describe "taluks/edit" do
  before(:each) do
    @taluk = assign(:taluk, stub_model(Taluk,
      :district => "",
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit taluk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taluks_path(@taluk), :method => "post" do
      assert_select "input#taluk_district", :name => "taluk[district]"
      assert_select "input#taluk_name", :name => "taluk[name]"
      assert_select "input#taluk_code", :name => "taluk[code]"
    end
  end
end
