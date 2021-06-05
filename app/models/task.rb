class Task < ApplicationRecord
  
  belongs_to :contact
  belongs_to :user

  include PgSearch::Model
  multisearchable against: [ :description ]

end
