class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id}
    validates :image_url, presence: true, uniqueness: true
    validates :title, presence: true


    belongs_to :artist, 
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :User

    has_one :artwork_share,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork_share,
        source: :viewer


end