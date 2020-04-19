class Teacher < ApplicationRecord
    has_many :klasses
    has_many :comments
    has_many :documents, through: :klasses
    
    has_many :students, through: :klasses
    has_many :parents, through: :students
    has_many
end
