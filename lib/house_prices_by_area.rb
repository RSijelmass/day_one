require 'date'

# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

houses =
  {["Basingstoke and Deane", "Tadley South"]=>
    {:count=>1,
     :average=>94000,
     :transactions=>
      [[94000,
        "RG26 3UR",
        Date.parse("1995-09-01")]]},
   ["Camden", "Cantelowes"]=>
    {:count=>1,
     :average=>215000,
     :transactions=>
      [[215000,
        "NW1 9UB",
        Date.parse("1995-03-10")]]},
   ["Conwy", "Capelulo"]=>
    {:count=>1,
     :average=>40000,
     :transactions=>
      [[40000,
        "LL34 6RW",
        Date.parse("1995-03-24")]]},
   ["Luton", "Leagrave"]=>
    {:count=>1,
     :average=>30500,
     :transactions=>
      [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
   ["Melton", "Asfordby"]=>
    {:count=>1,
     :average=>37500,
     :transactions=>
      [[37500,
        "LE14 3YP",
        Date.parse("1995-08-31")]]},
   ["Sheffield", "Beighton"]=>
    {:count=>1,
     :average=>41950,
     :transactions=>
      [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
   ["Stratford-on-Avon", "Wellesbourne East"]=>
    {:count=>1,
     :average=>70500,
     :transactions=>
      [[70500,
        "CV35 9RZ",
        Date.parse("1995-03-24")]]},
   ["Sunderland", "Millfield"]=>
    {:count=>1,
     :average=>26000,
     :transactions=>
      [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
   ["Taunton Deane", "Bishop's Lydeard"]=>
    {:count=>1,
     :average=>51500,
     :transactions=>
      [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
   ["Test Valley", "St Mary's"]=>
    {:count=>1,
     :average=>60000,
     :transactions=>
      [[60000,
        "SP10 1JG",
        Date.parse("1995-06-23")]]}}

def district(houses)
  output = [];  district = [];  ward = []
  houses.keys.each{ |area| district << area[0]} #finding the district
  houses.keys.each{ |area| ward << area[1]}     #finding the ward

  transactions = [];  price = [];   date = []
  values = houses.values

  values.each{ |key,value| transactions << key[:transactions] }
  transactions.each{ |arr| price << arr[0][0]}  #finding the price
  transactions.each{ |arr| date << arr[0][2]}   #finding the date

  date.map! do |date|     #reshaping the date from y-m-d to d-m-y
    date = date.to_s.split("-")
    date[2], date[1], date[0] = date[0], date[1], date[2]
    date.join("-")
  end

  for i in 0...houses.length
    output << "A hous was sold in #{district[i]}, #{ward[i]} for #{price[i]} on #{date[i]}"
  end

  output
end

puts district(houses)
