# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ClassTask.create!(
			id: 1,
            teacher_name: "佐藤 公俊",
            name: "サプライチェーンマネジメント2",
    )
ClassTask.create!(
			id: 2,
            teacher_name: "佐藤 公俊",
            name: "数理的計画研究室",
    )
# AdminUser.create!(
# 	email: "a@bc",
# 	password:"123321"
# )