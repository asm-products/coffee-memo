require 'rails_helper'

RSpec.describe "memos/index", :type => :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :coffee_shop => "Coffee Shop",
        :kind_of_coffee => "Kind Of Coffee",
        :origin => "Origin",
        :taste => "Taste",
        :aroma => "Aroma",
        :mood => "Mood",
        :barrista => "Barrista"
      ),
      Memo.create!(
        :coffee_shop => "Coffee Shop",
        :kind_of_coffee => "Kind Of Coffee",
        :origin => "Origin",
        :taste => "Taste",
        :aroma => "Aroma",
        :mood => "Mood",
        :barrista => "Barrista"
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "Coffee Shop".to_s, :count => 2
    assert_select "tr>td", :text => "Kind Of Coffee".to_s, :count => 2
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Taste".to_s, :count => 2
    assert_select "tr>td", :text => "Aroma".to_s, :count => 2
    assert_select "tr>td", :text => "Mood".to_s, :count => 2
    assert_select "tr>td", :text => "Barrista".to_s, :count => 2
  end
end
