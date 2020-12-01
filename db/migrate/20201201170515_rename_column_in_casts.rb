class RenameColumnInCasts < ActiveRecord::Migration[6.0]
  def change
    rename_column :casts, :type, :format
  end
end
