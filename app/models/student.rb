class Student < ApplicationRecord
    belongs_to :subject
    has_many :subjects
end