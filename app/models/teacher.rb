class Teacher < ApplicationRecord
    has_many :klasses
    has_many :reviews
    has_many :students, through: :klasses
end
