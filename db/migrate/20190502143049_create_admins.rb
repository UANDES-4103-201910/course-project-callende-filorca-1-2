class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.references :admin_profile, foreign_key: true
      t.references :super_admin, foreign_key: true

      t.timestamps
    end
  end
end
