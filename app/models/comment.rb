class Comment < ApplicationRecord

    belongs_to :commenter,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User
    
    belongs_to :artworks,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

    # def self.user_or_artwork(id)
    #     Comment.where('user_id = :id OR artwork_id = :id',id: id)
    # end

end