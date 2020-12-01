class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.string :type
      t.string :title
      t.text :description
      t.string :localisation
      t.date :published_date

      t.timestamps
    end
  end
end
