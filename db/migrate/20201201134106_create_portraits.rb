class CreatePortraits < ActiveRecord::Migration[6.0]
  def change
    create_table :portraits do |t|
      t.string :name
      t.text :description
      t.references :cast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
