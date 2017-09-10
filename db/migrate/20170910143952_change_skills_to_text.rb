class ChangeSkillsToText < ActiveRecord::Migration[5.0]
  def change
    remove_column :consultants, :skills
    add_column :consultants, :skills, :text
  end
end
