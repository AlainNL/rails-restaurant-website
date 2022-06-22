class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
