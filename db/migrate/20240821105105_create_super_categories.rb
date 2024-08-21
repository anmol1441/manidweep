class CreateSuperCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :super_categories do |t|
      t.bigint :user_id
      t.string :name_en
      t.string :name_hi
      t.text :details_en
      t.text :details_hi
      t.string :slug
      t.boolean :status
      t.integer :order

      t.timestamps
    end
  end
end
