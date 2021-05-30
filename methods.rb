# プランの表示-----------------
def introduce_plans(plan_params)
  puts "旅行プランを選択して下さい"

  plan_params.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:name]}(#{plan[:price]}円)"
  end
end

# プランの選択-----------------
def choose_plan(plan_params)
  while true
    print "プラン番号を選択 >"
    chosen_plan_id = gets.to_i
    chosen_plan = plan_params[chosen_plan_id - 1] 
  break if (1..3).include? (chosen_plan_id)
    puts "1~3の番号を入力して下さい"
  end
  puts "#{chosen_plan[:name]}ですね"
  chosen_plan
end

# 利用人数の決定-----------------
def ask_number
  puts "何名でご予約されますか？"

  while true
  print "予約人数を入力 >"
    number_of_guests = gets.to_i
  break if  number_of_guests >= 1
    puts "ご利用人数を1以上の半角数字で入力して下さい"
  end
  puts "#{number_of_guests}名様ですね"
  number_of_guests
end

# 料金の計算-----------------
def calculate_fee(chosen_plan, number_of_guests)
  total_price = chosen_plan[:price] * number_of_guests
  discount_price = (total_price * DISCOUNT＿RATE / 100).floor
  discounted_price = total_price - discount_price

  if number_of_guests >= DISCOUNT＿STANDARD＿QUANTITY
    puts "#{DISCOUNT＿STANDARD＿QUANTITY}名様以上でご利用の場合、#{DISCOUNT＿RATE}％の割引があります"
    puts "#{discount_price}円を割引して、"
    puts "合計料金は#{discounted_price}円になります"
  else
    puts "合計料金は#{total_price}円になります"
  end
end




