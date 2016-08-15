class AddJobFieldToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :job_name, :string
  	add_column :users, :field_id, :integer
  end
end
