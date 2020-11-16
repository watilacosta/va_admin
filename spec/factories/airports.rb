# frozen_string_literal: true

# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  icao       :string
#  name       :string
#  lat        :string
#  long       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :airport do
    icao { Faker::Alphanumeric.alpha(number: 4) }
    name { Faker::Name.name }
    lat  { Faker::Address.latitude }
    long { Faker::Address.longitude }
  end
end
