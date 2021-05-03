class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
