require 'spec_helper'

describe "documents/index" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :name => "Name",
        :slug => "Slug",
        :doc => "Doc"
      ),
      stub_model(Document,
        :name => "Name",
        :slug => "Slug",
        :doc => "Doc"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Doc".to_s, :count => 2
  end
end
