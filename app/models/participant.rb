class Participant < ApplicationRecord
  validates :name, :gender, presence: true

  enum :gender, { male: 0, female: 1 }, validate: true
end
