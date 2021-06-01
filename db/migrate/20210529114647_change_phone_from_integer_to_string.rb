class ChangePhoneFromIntegerToString < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :phone, :string
  end
end
