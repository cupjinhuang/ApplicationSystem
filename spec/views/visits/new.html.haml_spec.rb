require 'spec_helper'

describe "visits/new" do
  before(:each) do
    assign(:visit, stub_model(Visit,
      :type => 1
    ).as_new_record)
  end

  it "renders new visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visits_path, "post" do
      assert_select "input#visit_type[name=?]", "visit[type]"
    end
  end
end
