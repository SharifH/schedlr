class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :start
      t.datetime :end
      t.string :day
      t.integer :program_id

      t.timestamps
    end
  end
end