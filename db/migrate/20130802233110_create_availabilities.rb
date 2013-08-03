class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :start
      t.datetime :end
      t.string :availabilityblocks

      t.timestamps
    end
  end
end
