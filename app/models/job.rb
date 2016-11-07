class Job < ApplicationRecord
  belongs_to :company
  
  validates :title, presence: true
end
