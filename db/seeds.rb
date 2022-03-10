# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.destroy_all
    Artwork.destroy_all
    ArtworkShare.destroy_all
    user_1 = User.create({username: 'Luke', email:'Luke@test.come'})
    user_2 = User.create({username: 'Steph', email:'Steph@test.come'})
    user_3 = User.create({username: 'Jake', email:'Jake@test.come'})
    user_4 = User.create({username: 'Kate', email:'Kate@test.come'})
    
    artwork_1 = Artwork.create({title:'Artwork_1',image_url:'Artwork_1.com',artist_id:user_1.id})
    artwork_2 = Artwork.create({title:'Artwork_2',image_url:'Artwork_2.com',artist_id:user_1.id})
    artwork_3 = Artwork.create({title:'Artwork_3',image_url:'Artwork_3.com',artist_id:user_2.id})
    artwork_4 = Artwork.create({title:'Artwork_4',image_url:'Artwork_4.com',artist_id:user_2.id})
    artwork_5 = Artwork.create({title:'Artwork_5',image_url:'Artwork_5.com',artist_id:user_3.id})
    artwork_6 = Artwork.create({title:'Artwork_6',image_url:'Artwork_6.com',artist_id:user_3.id})
    artwork_7 = Artwork.create({title:'Artwork_7',image_url:'Artwork_7.com',artist_id:user_4.id})
    artwork_8 = Artwork.create({title:'Artwork_8',image_url:'Artwork_8.com',artist_id:user_4.id})

    ArtworkShare.create({artwork_id:artwork_1.id,viewer_id:user_2.id})
    ArtworkShare.create({artwork_id:artwork_2.id,viewer_id:user_3.id})
    ArtworkShare.create({artwork_id:artwork_4.id,viewer_id:user_1.id})
    ArtworkShare.create({artwork_id:artwork_4.id,viewer_id:user_3.id})
    ArtworkShare.create({artwork_id:artwork_5.id,viewer_id:user_2.id})

    

