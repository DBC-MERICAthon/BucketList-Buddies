class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table :user_activities do |t|
      t.belongs_to :user
      t.belongs_to :activity

      t.timestamps
    end
  end
end
