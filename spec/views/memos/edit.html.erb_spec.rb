require 'rails_helper'

RSpec.describe "memos/edit", :type => :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :coffee_shop => "MyString",
      :kind_of_coffee => "MyString",
      :origin => "MyString",
      :taste => "MyString",
      :aroma => "MyString",
      :mood => "MyString",
      :barrista => "MyString"
    ))
  end

  it "renders the edit memo form" do
    render

    assert_select "form[action=?][method=?]", memo_path(@memo), "post" do

      assert_select "input#memo_coffee_shop[name=?]", "memo[coffee_shop]"

      assert_select "input#memo_kind_of_coffee[name=?]", "memo[kind_of_coffee]"

      assert_select "input#memo_origin[name=?]", "memo[origin]"

      assert_select "input#memo_taste[name=?]", "memo[taste]"

      assert_select "input#memo_aroma[name=?]", "memo[aroma]"

      assert_select "input#memo_mood[name=?]", "memo[mood]"

      assert_select "input#memo_barrista[name=?]", "memo[barrista]"
    end
  end
end
