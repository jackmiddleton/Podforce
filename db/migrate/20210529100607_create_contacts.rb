class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.date :birth
      t.string :company
      t.string :email
      t.text :note
      t.text :instagram
      t.text :twitter
      t.text :linkedin
      t.text :tag

      t.timestamps
    end
  end
end
