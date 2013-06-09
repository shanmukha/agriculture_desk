require 'spec_helper'

describe "states/index" do
  before(:each) do
    assign(:states, [
      stub_model(State,
        :country => "",
        :name => "Name",
        :code => "Code"
      ),
      stub_model(State,
        :country => "",
        :name => "Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
