require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/Email Person/)
    rendered.should match(/Federal Reg/)
    rendered.should match(/Last Name/)
    rendered.should match(/Name/)
    rendered.should match(/Phone 1/)
    rendered.should match(/Phone 2/)
    rendered.should match(/Slug/)
    rendered.should match(/State Reg/)
    rendered.should match(/Type Person/)
  end
end
