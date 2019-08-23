require 'rails_helper'

FactoryBot.define do
  factory(:restaurant) do
    name {'test_name'}
    origin {'test_origin'}
    location {'test_location'}
  end
end
