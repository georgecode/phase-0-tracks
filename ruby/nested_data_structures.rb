zombie_town_video_game = {
  #for this data arrays were easier to read as a single line
  pharmacy:{
    drugs:["Penicillin","Aspirin", "Imodium", "Morphine" ,"Amoxicillin"],
    food:["candy bars","chips"],
    zombie_status:{
      male: 2,
      female: 3
    },
    weapons:{
      projectile:[],
      stabing:["kitchen knife", "scissors"]
    }
  },
  church:{
    drugs:[],
    food:["canned pees", "wafers","canned soup","mac n cheese", "canned beans", "bag rice", "cream corn"],
    zombie_status:{
      male:20,
      female:20
      },
    weapons:{
      projectile:[],
      stabing:["cross"]
    }
    },
  bass_pro_shop:{
    drugs:[],
    food:["candy bars"],
    zombie_status:{
      male:18,
      female:6
      },
    weapons:{
      projectile:["hand guns", "shotguns", "rifles", "compound bow", "cross bow", "sling shot"],
      stabbing:["knives", "hatchet", "machete", ]
    }
    },


}



#Every one is hungry but the church pantry is filled with zombies go to the bass pro shop and get some weapons to fight these zombies you'll need a cross bow, a shot gun, and a machete
puts zombie_town_video_game[:bass_pro_shop][:weapons][:projectile][-2]

puts zombie_town_video_game[:bass_pro_shop][:weapons][:projectile][1]

puts zombie_town_video_game[:bass_pro_shop][:weapons][:stabbing][2]

#Now that you have weapons go to the church and exterminate
#all the zombies there (male and female zombies should both
#be set to 0)and show they are elimnated
zombie_town_video_game[:church][:zombie_status][:male]=0
zombie_town_video_game[:church][:zombie_status][:female]=0

puts zombie_town_video_game[:church][:zombie_status]


#your friend got cut fighting the zombies at the church,
#and needs some medicin.
#go to the pharmacy and kill the two male zombie blocking
#the drug section and show they are eliminated
zombie_town_video_game[:pharmacy][:zombie_status][:male]=0
puts zombie_town_video_game[:pharmacy][:zombie_status]

#now remove the Amoxicillin, and Morphine from the drug section and put them in your back pack and show you're backpack
back_pack = zombie_town_video_game[:pharmacy][:drugs].pop(2)
p zombie_town_video_game[:pharmacy][:drugs]
p back_pack

#now add  Amoxicillin and Morphine to the drug cabinit at your new home base the church so your friend can use them
zombie_town_video_game[:church][:drugs] = back_pack
p zombie_town_video_game[:church][:drugs]

#finally eat all the mac and cheese at the church you deserve it you fought good today and show that it's gone
zombie_town_video_game[:church][:food].delete("mac n cheese")
p zombie_town_video_game[:church][:food]
