class Publication < ApplicationRecord
  
  #enums
  enum category: {love: 0, fantasy: 1, action: 2, real_life: 3}

  #add relations
  has_many :comments, dependent: :destroy

  #validations
  validates :category, presence: true, inclusion: {in: categories.keys}
end
