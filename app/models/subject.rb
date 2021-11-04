class Subject < ApplicationRecord
  belongs_to :student
  has_many :students
end