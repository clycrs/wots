class AddUserReferencesToCasts < ActiveRecord::Migration[6.0]
  def change
    add_reference :casts, :user, null: false, foreign_key: true
  end
end
