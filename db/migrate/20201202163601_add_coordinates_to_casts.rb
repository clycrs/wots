class AddCoordinatesToCasts < ActiveRecord::Migration[6.0]
  def change
    add_column :casts, :latitude, :float
    add_column :casts, :longitude, :float
  end
end
