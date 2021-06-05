class Contact < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :emails, dependent: :destroy
end
