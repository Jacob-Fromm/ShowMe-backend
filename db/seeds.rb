# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Comedian.destroy_all
Fan.destroy_all

 $genres = ["Alternative Comedy", "Anecdotal Comedy", "Anti-comedy", "Dark Comedy", "Blue Comedy", "Character Comedy", "Cringe Comedy", "Deadpan Comedy", "Heritage Comedy", "Improvisational Comedy", "Insult Comedy", "Musical Comedy", "Observational Comedy", "One-Liner Comedy", "Prop Comedy", "Shock Humor", "Sketch", "Surreal Comedy", "Topical Comedy", "Political Comedy", "Satire", "Crowdwork-Heavy Comedy", "Word Play", "Impression-Based Comedy", "Storytelling Comedy", "Andrew Casertano"]
def create_genres
    $genres.each do |genre|
        Genre.create(name: genre)
    end
end

create_genres

shrubino = Comedian.create(name: "Stephen Rubino", email: "rubino.stephen@gmail.com", password: "creekandcave", city: "New York")
ComedianGenre.create(comedian_id: shrubino.id, genre_id: Genre.all.find {|genre| genre.name == "Insult Comedy"}.id)
