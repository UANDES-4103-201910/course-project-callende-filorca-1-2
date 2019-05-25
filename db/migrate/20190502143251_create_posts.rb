class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :gps
      t.string :title
      t.string :description
      t.string :location
      t.string :country
      t.string :status
      t.string :city
      t.string :files
      t.string :state
      t.references :wall, foreign_key: true
      t.references :user, foreign_key: true
      t.references :admin, foreign_key: true
      t.references :super_admin, foreign_key: true

      t.timestamps
    end
  end
end
