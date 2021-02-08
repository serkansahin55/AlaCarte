class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price, precision: 20, scale: 2
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end

    add_column :favorites, :menu_item_id, :integer, null: false, foreign_key: true
  end
end
