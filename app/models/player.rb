class Player < ApplicationRecord

    validates :first_name, presence: { message: "Hard luck mann!!!!!!!!!!!!!!!!!!!!"}
    validates :age, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100}

    validate :first_name_length

    belongs_to :team
    has_one :address
    has_many :appearances
    has_many :games, through: :appearances

    def first_name_length
        errors.add(:first_name, "should be less than 5 characters") if self.first_name.length > 5
    end
end
