class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
