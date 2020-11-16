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
require 'rails_helper'

RSpec.describe Airport, type: :model do
end
