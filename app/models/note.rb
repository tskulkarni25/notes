class Note < ApplicationRecord
  acts_as_taggable

  validates :title, :body, presence: true
  validates :title, uniqueness: true
end
