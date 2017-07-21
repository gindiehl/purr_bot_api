Breed.destroy_all
Feline.destroy_all

50.times do |i|
  breed = Breed.create!(name: Faker::Cat.breed)
    3.times do |i|
      breed.felines.create!(name: Faker::Cat.name,
                            age: Faker::Number.between(1, 20),
                            coat_color: '{silver, black, white}',
                            breed_id: breed.id)
    end
end

p "Created #{Breed.count} breeds"
p "Created #{Feline.count} felines"
