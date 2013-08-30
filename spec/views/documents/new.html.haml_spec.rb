require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :name => "MyString",
      :slug => "MyString",
      :doc => "MyString"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input#document_name[name=?]", "document[name]"
      assert_select "input#document_slug[name=?]", "document[slug]"
      assert_select "input#document_doc[name=?]", "document[doc]"
    end
  end
end
