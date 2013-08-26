require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :name => "MyString",
      :image => "MyString",
      :post_id => 1
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_name[name=?]", "photo[name]"
      assert_select "input#photo_image[name=?]", "photo[image]"
      assert_select "input#photo_post_id[name=?]", "photo[post_id]"
    end
  end
end
