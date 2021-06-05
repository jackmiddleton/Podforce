class Contact < ApplicationRecord

  include PgSearch::Model
    multisearchable against: [ :first_name, :last_name, :company ]

  # include PgSearch::Model
  #   pg_search_scope :search_by_contact,
  #     against: [ :first_name, :last_name, :company ],
  #     using: {
  #       tsearch: { prefix: true }
  #     }

end
