class Assignment < ApplicationRecord
  enum :allowed_gender, { male: 0, female: 1, both: 2 }, validate: true
end
