class User < ApplicationRecord
    validates :username, :email, presence: true, uniqueness: true

    has_many :artworks,
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy
      

    has_one :artwork_share,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    
    has_many :shared_artworks,
        through: :artwork_share,
        source: :artwork,
        dependent: :destroy

    has_many :comments_made,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Comment,
        dependent: :destroy

    

end