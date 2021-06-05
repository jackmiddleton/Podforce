class Email < ApplicationRecord
  belongs_to :contact

  include PgSearch::Model
  multisearchable against: [ :subject, :content ]

end
