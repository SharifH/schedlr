class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :director_id

      t.timestamps
    end
  end
end


