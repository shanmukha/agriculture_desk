require 'spec_helper'

describe "states/edit" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :country => "",
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => states_path(@state), :method => "post" do
      assert_select "input#state_country", :name => "state[country]"
      assert_select "input#state_name", :name => "state[name]"
      assert_select "input#state_code", :name => "state[code]"
    end
  end
end
