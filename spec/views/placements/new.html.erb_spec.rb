require 'spec_helper'

describe "placements/new" do
  before(:each) do
    assign(:placement, stub_model(Placement,
      :type_address => "MyString",
      :address => "MyString",
      :city => "MyString",
      :district => "MyString",
      :complement => "MyString",
      :zip => "MyString",
      :state => "MyString",
      :person => nil
    ).as_new_record)
  end

  it "renders new placement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => placements_path, :method => "post" do
      assert_select "input#placement_type_address", :name => "placement[type_address]"
      assert_select "input#placement_address", :name => "placement[address]"
      assert_select "input#placement_city", :name => "placement[city]"
      assert_select "input#placement_district", :name => "placement[district]"
      assert_select "input#placement_complement", :name => "placement[complement]"
      assert_select "input#placement_zip", :name => "placement[zip]"
      assert_select "input#placement_state", :name => "placement[state]"
      assert_select "input#placement_person", :name => "placement[person]"
    end
  end
end
