class RemoveColumnsFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :default
    remove_column :tasks, :false
  end
end
