require 'spec_helper'

describe "placements/index" do
  before(:each) do
    assign(:placements, [
      stub_model(Placement,
        :type_address => "Type Address",
        :address => "Address",
        :city => "City",
        :district => "District",
        :complement => "Complement",
        :zip => "Zip",
        :state => "State",
        :person => nil
      ),
      stub_model(Placement,
        :type_address => "Type Address",
        :address => "Address",
        :city => "City",
        :district => "District",
        :complement => "Complement",
        :zip => "Zip",
        :state => "State",
        :person => nil
      )
    ])
  end

  it "renders a list of placements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Complement".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
