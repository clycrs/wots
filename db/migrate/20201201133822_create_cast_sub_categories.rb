class CreateCastSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :cast_sub_categories do |t|
      t.references :sub_category, null: false, foreign_key: true
      t.references :cast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
