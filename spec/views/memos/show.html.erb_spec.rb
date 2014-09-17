require 'rails_helper'

RSpec.describe "memos/show", :type => :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :coffee_shop => "Coffee Shop",
      :kind_of_coffee => "Kind Of Coffee",
      :origin => "Origin",
      :taste => "Taste",
      :aroma => "Aroma",
      :mood => "Mood",
      :barrista => "Barrista"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Coffee Shop/)
    expect(rendered).to match(/Kind Of Coffee/)
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Taste/)
    expect(rendered).to match(/Aroma/)
    expect(rendered).to match(/Mood/)
    expect(rendered).to match(/Barrista/)
  end
end
