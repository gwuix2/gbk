require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :name => "MyString",
      :image => "MyString",
      :post_id => 1
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "input#photo_name[name=?]", "photo[name]"
      assert_select "input#photo_image[name=?]", "photo[image]"
      assert_select "input#photo_post_id[name=?]", "photo[post_id]"
    end
  end
end
