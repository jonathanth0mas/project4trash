class WelcomeController < ApplicationController
    def index
      @user = User.new 
      i = rand(0..@@compliments.length)
      @compliment = @@compliments[i]
    end

    def method_name
      
    end

    @@compliments = [
    "A used aluminum can is recycled and back on the grocery shelf as a new can, in as little as 60 days. That's closed loop recycling at its finest!",
    "Recycling one aluminum can saves enough energy to run a TV for three hours -- or the equivalent of a half a gallon of gasoline.",
    "More aluminum goes into beverage cans than any other product.",
    "We use over 80,000,000,000 aluminum soda cans every year.",
    "A 60-watt light bulb can be run for over a day on the amount of energy saved by recycling 1 pound of steel. In one year in the United States, the recycling of steel saves enough energy to heat and light 18,000,000 homes!",
    "If every American recycled just one-tenth of their newspapers, we would save about 25,000,000 trees a year.",
    "Approximately 1 billion trees worth of paper are thrown away every year in the U.S.",
    "Plastic bags and other plastic garbage thrown into the ocean kill as many as 1,000,000 sea creatures every year!",
    "The 17 trees saved (above) can absorb a total of 250 pounds of carbon dioxide from the air each year. Burning that same ton of paper would create 1500 pounds of carbon dioxide.",
    "Every month, we throw out enough glass bottles and jars to fill up a giant skyscraper. All of these jars are recyclable!",
    "The U.S. is the #1 trash-producing country in the world at 1,609 pounds per person per year. This means that 5% of the world's people generate 40% of the world's waste.",
    "On average, it costs $30 per ton to recycle trash, $50 to send it to the landfill, and $65 to $75 to incinerate it.",
    "Motor oil never wears out, it just gets dirty. Oil can be recycled, re-refined and used again, reducing our reliance on imported oil.",
    "An estimated 80,000,000 Hershey's Kisses are wrapped each day, using enough aluminum foil to cover over 50 acres of space -- that's almost 40 football fields. All that foil is recyclable, but not many people realize it.",
    "Mining and transporting raw materials for glass produces about 385 pounds of waste for every ton of glass that is made. If recycled glass is substituted for half of the raw materials, the waste is cut by more than 80%.",
    "If you had a 15-year-old tree and made it into paper grocery bags, you'd get about 700 of them. A busy supermarket could use all of them in under an hour! This means in one year, one supermarket can go through over 6 million paper bags! Imagine how many supermarkets there are just in the United States!!!"
  ]
end
