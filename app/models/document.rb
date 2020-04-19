class Document < ApplicationRecord
    belongs_to :klass
    has_many :students, through: :klasses
end
