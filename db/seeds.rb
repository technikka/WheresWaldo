# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


# Exhibit 1 : Ski Slopes
# Size 1 : small 800x500
character1 = [3109, 3029, 3028, 3030, 2949, 2869, 2948]
character2 = [1720, 1719, 1640, 1639]
character3 = [3046, 2966]
character4 = [2506, 2586]

Location.destroy_all

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
character3 = [4807, 4808, 4708, 4707, 4607]
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