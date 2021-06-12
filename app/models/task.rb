class Task < ApplicationRecord

  belongs_to :contact, optional: true
  belongs_to :user

  include PgSearch::Model
  multisearchable against: [ :description ]

  CATEGORY = ["email", "appointment", "finance", "review" ]
  PRIORITY = ["Super Important", "High", "Medium", "Low" ]

  validates :category, inclusion: {in: CATEGORY}, allow_nil: true

  validates :priority, inclusion: {in: PRIORITY}, allow_nil: true

  #validates :contact_id, allow_nill: true

  def self.categories
    return CATEGORY
  end

  def self.priorities
    return PRIORITY
  end

end
