class RemoveCompletedFromActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :completed
  end
end
