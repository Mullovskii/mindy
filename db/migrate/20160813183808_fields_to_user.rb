class FieldsToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
  	add_column :users, :about, :string
  	add_column :users, :nickname, :string
  	add_column :users, :image, :string
  	add_column :users, :user_work_history, :string
  end
end
