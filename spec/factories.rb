FactoryGirl.define do

  factory :breed do
    name('Abyssinian')
    factory :breed_with_felines do
      transient do
        felines_count 10
      end
      after(:create) do |breed, evaluator|
        create_list(:feline, evaluator.felines_count, breed: breed)
      end
    end
  end

  factory :feline do
    name('Ozzie')
    age(9)
    coat_color('{red, gold, brown, black}')
    breed
  end
end
