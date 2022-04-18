class UserComic < ActiveRecord::Base
    belongs_to :user
    belongs_to :comic

    validates :quantity, presence: true
end