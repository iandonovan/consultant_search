class CreateConsultants < ActiveRecord::Migration[5.0]
  def change
    create_table :consultants do |t|
      t.string :locality
      t.string :given_name
      t.string :full_name
      t.text :skills, array: true
      t.string :unique_id
      t.timestamps
    end
  end
end
