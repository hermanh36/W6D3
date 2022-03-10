class User < ApplicationRecord
    validates :username, :email, presence: true, uniqueness: true

    has_many :artworks,
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :Artwork
      

    has_one :artwork_share,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare
    
    has_many :shared_artworks,
        through: :artwork_share,
        source: :artwork
end