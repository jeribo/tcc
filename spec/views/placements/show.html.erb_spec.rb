require 'spec_helper'

describe "placements/show" do
  before(:each) do
    @placement = assign(:placement, stub_model(Placement,
      :type_address => "Type Address",
      :address => "Address",
      :city => "City",
      :district => "District",
      :complement => "Complement",
      :zip => "Zip",
      :state => "State",
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type Address/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/District/)
    rendered.should match(/Complement/)
    rendered.should match(/Zip/)
    rendered.should match(/State/)
    rendered.should match(//)
  end
end
