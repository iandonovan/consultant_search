class AddSummaryToConsultants < ActiveRecord::Migration[5.0]
  def change
    add_column :consultants, :summary, :text
  end
end
