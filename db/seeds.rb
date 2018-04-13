# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cnt = 0
20.times do
  Meeting.create(
    title: "#{cnt}'s title",
     sales_user: "sales_#{cnt}",
     customer: "#{cnt}_custormer",
     meeting_place: "japan_#{cnt}",
     body: "hogehoge#{cnt}",
  )
  cnt += 1
end
