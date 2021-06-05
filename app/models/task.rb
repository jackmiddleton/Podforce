class Task < ApplicationRecord
  
  belongs_to :contact
  belongs_to :user

  include PgSearch::Model
  multisearchable against: [ :description ]

  CATEGORY = ["email", "appointment", "finance", "review" ]
  
  validates :category, inclusion: {in: CATEGORY}, allow_nil: true

  def self.categories
    return CATEGORY
  end
  
end
