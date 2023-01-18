# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


Location.destroy_all
Exhibit.destroy_all
Character.destroy_all
Size.destroy_all



# Exhibits

exhibits = [
  {"Ski Slopes": "ski_slopes.jpg"}, 
  {"On The Beach": "on_the_beach.jpg"}, 
  {"The Great Portrait Exhibition": "the_great_portrait_exhibition.jpg"}
]

exhibits.each do |exhibit|
  Exhibit.create(
    title: exhibit.keys[0],
    image_path: exhibit.values[0]
  )
end


# Characters

characters = ["Waldo", "Wilma", "Wizard", "Odlaw"]

characters.each do |char|
  Character.create(
    name: char
  )
end


# Sizes

sizes = ["800x500", "1000x630", "1200x750"]

sizes.each do |size|
  Size.create(
    dimensions: size
  )
end


# Locations
# character1 = waldo
# character2 = wilma
# character3 = wizard
# character4 = odlaw

# Exhibit 1 : Ski Slopes
# Size 1 : small 800x500
character1 = [3109, 3029, 3028, 3030, 2949, 2869, 2948]
character2 = [1720, 1719, 1640, 1639]
character3 = [3046, 2966]
character4 = [2506, 2586]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 1,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 1,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 1,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 1,
    character_id: 4
  )
end

# Exhibit 1 : Ski Slopes
# Size 2 : medium 1000x630
character1 = [4886, 4786, 4686, 4787, 4687, 4785, 4685, 4586]
character2 = [2749, 2650, 2649, 2750, 2550, 2549]
character3 = [4707, 4607, 4608, 4708, 4807, 4808, 4908]
character4 = [3932, 4032, 4033, 3933]


character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 2,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 2,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 2,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 2,
    character_id: 4
  )
end

# Exhibit 1 : Ski Slopes
# Size 3 : large 1200x750
character1 = [6943, 6823, 6703, 6824, 6704, 6825, 6822, 6821, 6702, 6582, 6583, 6463]
character2 = [3660, 3779, 3899, 3659, 3780]
character3 = [6849, 6848, 6729, 6728, 6609, 6969, 6968 ]
character4 = [5679, 5678, 5799]


character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 3,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 3,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 3,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 1,
    size_id: 3,
    character_id: 4
  )
end

# Exhibit 2 : On The Beach
# Size 1 : small 800x500

character1 = [1570, 1650, 1490, 1489, 1571]
character2 = [1583, 1662, 1663]
character3 = [1462, 1463, 1382]
character4 = [1369, 1449, 1529 ]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 1,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 1,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 1,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 1,
    character_id: 4
  )
end

# Exhibit 2 : On The Beach
# Size 2 : medium 1000x630

character1 = [2563, 2463, 2462, 2362, 2562]
character2 = [2678, 2578, 2577]
character3 = [2328, 2327, 2228, 2227, 2128, 2127]
character4 = [2211, 2311, 2411, 2111]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 2,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 2,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 2,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 2,
    character_id: 4
  )
end

# Exhibit 2 : On The Beach
# Size 3 : large 1200x750

character1 = [3675, 3555, 3435, 3315, 3314, 3434, 3554, 3556]
character2 = [3813, 3814, 3693, 3694, 3573]
character3 = [3273, 3393, 3153, 3033, 3272, 3392, 3394, 3274]
character4 = [3133, 3253, 3373, 3134, 3254]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 3,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 3,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 3,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 2,
    size_id: 3,
    character_id: 4
  )
end

# Exhibit 3 : The Great Portrait Exhibition
# Size 1 : small 800x500

character1 = [1652, 1651]
character2 = [2880, 2960, 2879, 2959]
character3 = [1508, 1588, 1507, 1428]
character4 = [2811, 2891, 2810]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 1,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 1,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 1,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 1,
    character_id: 4
  )
end

# Exhibit 3 : The Great Portrait Exhibition
# Size 2 : medium 1000x630

character1 = [2664, 2665, 2564, 2565]
character2 = [4499, 4599, 4600, 4500]
character3 = [2284, 2285, 2385, 2384, 2485, 2484]
character4 = [4514, 4513, 4614, 4413]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 2,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 2,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 2,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 2,
    character_id: 4
  )
end

# Exhibit 3 : The Great Portrait Exhibition
# Size 3 : large 1200x750

character1 = [3798, 3797, 3678, 3677, 3676]
character2 = [6479, 6599, 6600, 6480]
character3 = [3221, 3341, 3461, 3462, 3342, 3222]
character4 = [6497, 6496, 6377, 6376, 6375]

character1.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 3,
    character_id: 1
  )
end

character2.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 3,
    character_id: 2
  )
end

character3.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 3,
    character_id: 3
  )
end

character4.each do |location|
  Location.create(
    div: "#{location}",
    exhibit_id: 3,
    size_id: 3,
    character_id: 4
  )
end
