class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :picture
      t.string :location
      t.string :name
      t.string :biography
      t.string :password
      t.string :email
      t.string :city
      t.string :country
      t.string :lastname
      t.references :blacklist, foreign_key: true
      t.references :admin, foreign_key: true
      t.references :super_admin, foreign_key: true

      t.timestamps
    end
  end
end
