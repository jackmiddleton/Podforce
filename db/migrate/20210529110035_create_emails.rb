class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.references :contact, null: false, foreign_key: true
      t.string :to
      t.text :subject
      t.text :content
      t.string :cc
      t.date :date_time

      t.timestamps
    end
  end
end
