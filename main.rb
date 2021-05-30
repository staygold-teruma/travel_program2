require "./methods.rb"

# 旅行プラン
plan_params = [
  {name:"沖縄旅行", price:10000},
  {name:"北海道旅行", price:20000},
  {name:"九州旅行", price:15000}
]

# 定数定義
DISCOUNT＿STANDARD＿QUANTITY = 5
DISCOUNT＿RATE = 10

# プランの表示
introduce_plans(plan_params)
# プランの選択
chosen_plan = choose_plan(plan_params)
# 利用人数の決定
number_of_guests = ask_number
# 料金の計算
calculate_fee(chosen_plan, number_of_guests)