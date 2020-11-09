# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ClassTask.create!(
# 			id: 1,
#             teacher_name: "佐藤 公俊",
#             name: "サプライチェーンマネジメント2",
#     )
# ClassTask.create!(
# 			id: 2,
#             teacher_name: "佐藤 公俊",
#             name: "数理的計画研究室",
#     )
# TaskContent.create!(
# 	[
# 		{
# 			content: "1回目の授業はこんな内容を行なっていきます",
# 			name: "サプライチェーンマネジメント2 1回目",
# 			class_task_id: 1,
# 			 task_times: "2020/09/02",
# 			start_time: "2005, 2, 21, 10, 11, 12",
# 			finish_time: "2005, 2, 21, 10, 11, 12,"
# 		},
# 			{
# 			content: "2回目の授業はこんな内容を行なっていきます",
# 			name: "サプライチェーンマネジメント2 2回目",
# 			class_task_id: 1,
# 			 task_times: "2020/09/02",
# 			start_time: "2020/09/08/13/00/00",
# 			finish_time: "2020/09/08/13/30/00"
# 		}
# 	]
# 	)
# TaskContent.create!(
# 	[
# 		{
# 			content: "1回目の授業はこんな内容を行なっていきます",
# 			name: "実験 1回目",
# 			class_task_id: 2,
# 			# task_times: "2020/09/02"
# 		},
# 			{
# 			content: "2回目の授業はこんな内容を行なっていきます",
# 			name: "実験 2回目",
# 			class_task_id: 2,
# 			# task_times: "2020/09/09"
# 		}
# 	]
	# )
# AdminUser.create!(
# 	email: "a@bc",
# 	password:"123321"
# )
AdminUser.create!(
	email: "qq@gmail.com",
	password:"1234567",
	my_number:"123456789"
)
