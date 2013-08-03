class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.timestamps
    end
  end
end
