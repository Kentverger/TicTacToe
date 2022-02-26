FactoryBot.define do
  factory :turn do
    game { create :game }
    x { 1 }
    y { 1 }
    badge { 'Cross' }
  end
end
