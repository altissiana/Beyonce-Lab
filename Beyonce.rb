beyonce = {
    hits: [
      { title: 'bootylicious', group: true, groupName: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signatureLook: 'fedora with yellow feather', videoTheme: 'dressing room dance', bestLine: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, groupName: 'none', hair: ['honey brown', 'half up, half down'], signatureLook: 'black bodysuit and legs for days', videoTheme: 'single ladies dance', bestLine: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, groupName: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signatureLook: 'flapper dress and bodysuit', videoTheme: 'decadence, water, gold beads and pearls', bestLine: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, groupName: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signatureLook: 'braided crown with gold bikini top', videoTheme: 'party bus and Serena Williams in bodysuit', bestLine: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, groupName: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signatureLook: 'none', videoTheme: 'color blocked scenes with group', bestLine: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, groupName: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signatureLook: 'sporty bodysuit', videoTheme: 'Coachella music festival', bestLine: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };
  
# 1- puts all the songs
beyonce[:hits].each do |hit|
  puts hit[:title]
end


# 2- puts all the movies
beyonce[:movies].map do |hit|
  hit[:title]
end

# 3- create an array with a list of all of "Beyonce's" hit songs
beyonce[:hits].map do |hit_song|
  hit_song[:title]
end
  
# 4- create an array with a list of all of "Beyonce's" fierceness ratings
beyonce[:hits].map do |x|
  x[:fierceness]
end

# 5- give me all the songs where Beyonce is wearing a bodysuit
beyonce[:hits].select do |hit_song|
  hit_song[:signatureLook].include?("bodysuit")
end

# 6- create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
new_array = beyonce[:hits].select do |x|
  x[:fierceness] >= 8
end
new_array.map do |song|
 song[:title]
end

# 7- create an array with all of the movies Beyonce made in 2006 and after
new_array = beyonce[:movies].select do |x|
  x[:year] >= 2006
end
new_array.map do |movie|
  movie[:title]
end 

# 8- find all of the group hit songs
new_array = beyonce[:hits].select do |x|
  x[:group] == true
end
new_array.map do |song|
  song[:title]
end

# 9- find a hit song where Beyonce's hair is blonde
my_array = beyonce[:hits].select do |x|
  x[:hair].include?("blonde")
end 
my_array.map do |y|
  y[:title]
end

# 10- find the hit song sorry
beyonce[:hits].select do |x|
  x[:title].include?("sorry")
end 

# 11- find all hit songs where Beyonce's fierceness rating is 10
new_array = beyonce[:hits].select do |x|
  x[:fierceness] == 10
end
new_array.map do |song|
 song[:title]
end

# 12- sum up Beyonces fierceness value for all of her hit songs
beyonce[:hits].reduce(0) do |sum, hit|
  sum + hit[:fierceness]
end

# 13- get the average fierceness value for all of her hit songs
def ave(beyonce)
sum = beyonce[:hits].sum{ |hit| hit[:fierceness] }
  average = sum / beyonce[:hits].length.to_f
  average.round(2)
  end
end

# 14- sum up Beyonces rating value for all of her movies
sum = beyonce[:movies].sum{ |movie| movie[:rating] }

# 15- get the average rating value for all of her movies
sum = beyonce[:movies].sum{ |movie| movie[:rating] }
average = sum / beyonce[:movies].length.to_f
 
# 16- create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
new_hash = {}
beyonce[:hits].each do |song|
  new_hash[song[:title]] = {
    fierceness: song[:fierceness],
    "average fierceness": ave(beyonce) 
  }
end

new_hash

# 17- create an object where the properties are movie names and the value is an object which contains that rating and average rating
new_hash = {}
beyonce[:movies].each do |movie|
  new_hash[movie[:title]] = {
    rating: movie[:rating]
  }
end

new_hash

  
# 18- sum up the total number of dancers in all of the hit song videos
sum = beyonce[:hits].sum{ |hit| hit[:dancers] }
  
# 19- create an array of beyonces hairstyles without repeats
all_hairs = beyonce[:hits].map do |hit|
hit[:hair]
end
puts all_hairs.flatten.uniq
  
# 20- create an object list with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}
new_hash = {}
beyonce[:hits].each do |hit|
  hit[:hair].each do |hairstyle|
    if new_hash.key?(hairstyle)
      new_hash[hairstyle] += 1
    else
      new_hash[hairstyle] = 1
    end  
  end
end
  
