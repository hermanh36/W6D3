class ArtShare 
    validates :viewer_id, :artwork_id, presence: true


    belongs_to :artworks
        primary_key: :id
        foreign_key: :artwork_id
        class_name: :Artwork

    belongs_to :viewer_id
        primary_key: :id
        foreign_key: :viewer_id
        class_name: :User
end