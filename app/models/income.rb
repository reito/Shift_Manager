class Income < ApplicationRecord
    validates :name, presence: true
    validates :receipt, presence: true
end
