class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true, allow_blank: false, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
