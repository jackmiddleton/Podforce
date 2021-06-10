class Contact < ApplicationRecord

  # include PgSearch::Model
  #   multisearchable against: [ :first_name, :last_name, :company ]

  include PgSearch::Model
    pg_search_scope :search_by_contact,
      against: [ :first_name, :last_name, :company ],
      using: {
        tsearch: { prefix: true }
      }

  has_many :tasks, dependent: :destroy
  has_many :emails, dependent: :destroy

  belongs_to :user

  def full_name
    return  self.first_name + " " + self.last_name
  end

end
