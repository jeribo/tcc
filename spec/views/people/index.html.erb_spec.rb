require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :active => false,
        :email_person => "Email Person",
        :federal_reg => "Federal Reg",
        :last_name => "Last Name",
        :name => "Name",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :slug => "Slug",
        :state_reg => "State Reg",
        :type_person => "Type Person"
      ),
      stub_model(Person,
        :active => false,
        :email_person => "Email Person",
        :federal_reg => "Federal Reg",
        :last_name => "Last Name",
        :name => "Name",
        :phone_1 => "Phone 1",
        :phone_2 => "Phone 2",
        :slug => "Slug",
        :state_reg => "State Reg",
        :type_person => "Type Person"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Email Person".to_s, :count => 2
    assert_select "tr>td", :text => "Federal Reg".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone 2".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "State Reg".to_s, :count => 2
    assert_select "tr>td", :text => "Type Person".to_s, :count => 2
  end
end
