class Camper < ApplicationRecord
    AGES = (8..18).to_a

    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, inclusion: {
        in: AGES,
        message: "must have an age between #{AGES.first} and #{AGES.last}"
    }
end
