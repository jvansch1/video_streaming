# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Video.create(name: "Test Video", description: 'Just testing nbd', s3_url: '"https://jvs-video-dev.s3.amazonaws.com/Waterfall+-+6998.mp4"')
Video.create(name: "Second Video", description: 'Addining a video so theres more than one on the index', s3_url: '"https://jvs-video-dev.s3.amazonaws.com/Waterfall+-+6998.mp4"')
