holiday_supplies = {
  winter: { 
    Christmas: ["lights", "tree"],
    New_Years: "champagne glasses"
  },
  summer: {
    July_Fourth:['BBQ', 'Flags', 'Fireworks'],
    BBQ_Items: {
      Meat: ['Sausage', 'Hot Dogs'],
      Vegetarian:[]
    }
  },
  spring: {
    Memorial_Day: ['BBQ', 'Veterns'],
    Easter: ['Bunny', 'Eggs', 'Peeps']
  },
  fall: {
    Labor_Day: "hot dogs"
  }
}

#p holiday_supplies[:winter][:Christmas][0]

#p holiday_supplies[:summer][:BBQ_Items][:Vegetarian].push('Corn', 'Potatoes')


p holiday_supplies[:summer][:July_Fourth].reverse