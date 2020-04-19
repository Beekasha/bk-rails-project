class Parent < ApplicationRecord
    has_many :students
    has_many :klasses, through: :students
    has_many :comments, through: :students
end
