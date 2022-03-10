class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id}
    validates :image_url, presence: true, uniqueness: true
    validates :title, presence: true


    belongs_to :artist, 
        primary_key: :id, 
        foreign_key: :artist_id,
        class_name: :User

    has_one :artwork_shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer

    has_many :comments,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Comment,
        dependent: :destroy

    def self.owned_and_shared(user_id)
        Artwork.left_outer_joins(:artwork_shares).where('artist_id = :user_id OR viewer_id = :user_id', user_id: user_id).distinct
    end

end