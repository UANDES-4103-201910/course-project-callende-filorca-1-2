class CreateAdminProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_profiles do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :type
      t.string :lastname
      t.string :location

      t.timestamps
    end
  end
end
