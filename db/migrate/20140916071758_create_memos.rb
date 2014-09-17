class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :coffee_shop
      t.string :kind_of_coffee
      t.string :origin
      t.string :taste
      t.string :aroma
      t.string :mood
      t.string :barrista
      t.references :user, index: true

      t.timestamps
    end
  end
end
