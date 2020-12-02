class AddUrlToCasts < ActiveRecord::Migration[6.0]
  def change
    add_column :casts, :url, :string
  end
end
