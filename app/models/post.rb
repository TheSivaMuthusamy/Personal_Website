class Post < ApplicationRecord
    belongs_to :admin
    validates :user_id, presence: true  
end
