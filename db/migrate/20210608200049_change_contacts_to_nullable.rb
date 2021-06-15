class ChangeContactsToNullable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tasks, :contact_id, true
  end
end
