game_of_thrones =["terious lanster", "john snow", "red lady", "serse lanaster", "stanus barathen", "the mountain"]

sigil = {
  lanster: "lion",
  starkes: "dier wolf",
  barathen: "staff",
  grey_joy: "Kraken"
}

game_of_thrones.each do |name|
  puts "#{name} is probably going to die!"
end

game_of_thrones.map! do |name|
  name = name
end