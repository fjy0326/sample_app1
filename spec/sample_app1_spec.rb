reauire 'rails_helper'

RSpec.describe List, "モデルに関するテスト", type: :model do


FactoryBot.define do
  factory :list do
    title { Faker::Lorem.characters(number:5) }
    body { Faker::Lorem.characters(number:20) }
  end
end
