class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  validates :title, presence: true
end
