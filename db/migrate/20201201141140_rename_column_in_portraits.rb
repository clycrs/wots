class RenameColumnInPortraits < ActiveRecord::Migration[6.0]
  def change
    rename_column :portraits, :name, :title
  end
end
