game_of_thrones =["terious lanster", "john snow", "red lady", "serse lanaster", "stanus barathen", "the mountain"]

sigil = {
  lanster: "lion",
  starkes: "dier wolf",
  barathen: "staff",
  grey_joy: "kraken"
}

game_of_thrones.each do |name|
  puts "#{name} is probably going to die!"
end


def capAll (str)
  str = str.split(' ')
  str.map! { |str|
    str.capitalize!
    }
  str.join(' ')
end


game_of_thrones.map! do |name|
  puts capAll(name)

end

sigil.each do |house, sigil|
  puts "#{sigil} sigil belongs to house #{house}"
end


