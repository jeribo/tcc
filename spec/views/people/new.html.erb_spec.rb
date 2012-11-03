require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :active => false,
      :email_person => "MyString",
      :federal_reg => "MyString",
      :last_name => "MyString",
      :name => "MyString",
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :slug => "MyString",
      :state_reg => "MyString",
      :type_person => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_active", :name => "person[active]"
      assert_select "input#person_email_person", :name => "person[email_person]"
      assert_select "input#person_federal_reg", :name => "person[federal_reg]"
      assert_select "input#person_last_name", :name => "person[last_name]"
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_phone_1", :name => "person[phone_1]"
      assert_select "input#person_phone_2", :name => "person[phone_2]"
      assert_select "input#person_slug", :name => "person[slug]"
      assert_select "input#person_state_reg", :name => "person[state_reg]"
      assert_select "input#person_type_person", :name => "person[type_person]"
    end
  end
end
