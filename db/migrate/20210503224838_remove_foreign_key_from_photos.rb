class RemoveForeignKeyFromPhotos < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :photos, :users
    remove_reference :photos, :user
  end
end
