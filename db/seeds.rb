# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
clips = [
  'https://d15t3vksqnhdeh.cloudfront.net/videos/1.mp4',
  'https://d15t3vksqnhdeh.cloudfront.net/videos/2.mp4',
  'https://d15t3vksqnhdeh.cloudfront.net/videos/3.mp4'
]

clips.each do |clip|
  Clip.create! url: clip
end
