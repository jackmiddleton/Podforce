class ChangeTaskCompleteToBoolean < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :complete, "boolean USING CAST(complete AS boolean)"
  end
end
