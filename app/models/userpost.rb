class Userpost < ApplicationRecord
    validates :content, presence: true
    
    belongs_to :user, required: false
end
