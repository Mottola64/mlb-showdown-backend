require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'batter_data.csv'))
csv = CSV.parse(csv_text.scrub, :headers => true)
csv.each do |row|
  t = Batter.new
  t.first_name = row['first_name']
  t.last_name = row['last_name']
  t.full_name = row['full_name']
  t.year_id = row['year_id']
  t.set_id = row['set_id']
  t.card_number = row['card_number']
  t.team = row['team']
  t.onbase = row['onbase']
  t.strikeout = row['strikeout']
  t.groundball = row['groundball']
  t.flyball = row['flyball']
  t.base_on_balls = row['base_on_balls']
  t.single = row['single']
  t.single_plus = row['single_plus']
  t.double = row['double']
  t.triple = row['triple']
  t.homerun = row['homerun']
  t.points = row['points']
  t.speed = row['speed']
  t.hand = row['hand']
  t.starting_position = row['starting_position']
  t.fielding_one = row['fielding_one']
  t.starting_position_two = row['starting_position_two']
  t.fielding_two = row['fielding_two']
  t.starting_position_three = row['starting_position_three']
  t.fielding_three = row['fielding_three']
  t.starting_position_four = row['starting_position_four']
  t.fielding_four = row['fielding_four']
  t.total_outs = row['total_outs']
  t.extra_base_hits = row['extra_base_hits']
  t.number_of_positions = row['number_of_positions']
  t.save
end

puts "There are now #{Batter.count} rows in the batters table"


csv_text_one = File.read(Rails.root.join('lib', 'seeds', 'pitcher_data.csv'))
csv_one = CSV.parse(csv_text_one.scrub, :headers => true)
csv_one.each do |row|
  t = Pitcher.new
  t.first_name = row['first_name']
  t.last_name = row['last_name']
  t.full_name = row['full_name']
  t.year_id = row['year_id']
  t.set_id = row['set_id']
  t.card_number = row['card_number']
  t.team = row['team']
  t.control = row['control']
  t.strikeout = row['strikeout']
  t.groundball = row['groundball']
  t.flyball = row['flyball']
  t.base_on_balls = row['base_on_balls']
  t.single = row['single']
  t.double = row['double']
  t.triple = row['triple']
  t.homerun = row['homerun']
  t.points = row['points']
  t.innings_pitched = row['innings_pitched']
  t.hand = row['hand']
  t.position = row['position']
  t.save
end

puts "There are now #{Pitcher.count} rows in the pitchers table"