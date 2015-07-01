class AddCompletedToUserActivity < ActiveRecord::Migration
  def change
    add_column :user_activities, :completed, :boolean, :default => false
  end
end
