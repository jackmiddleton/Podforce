class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :contact, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :priority
      t.date :date_time
      t.string :ownership
      t.string :complete
      t.string :category

      t.timestamps
    end
  end
end
