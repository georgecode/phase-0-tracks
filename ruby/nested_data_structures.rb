zombie_town = {
  pharmacy:{
    drugs:["penicillin","amoxicillin","morphine", "imodium", "Aspirin"],
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
      male:4,
      female:5
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

puts zombie_town[:church][:food][0]