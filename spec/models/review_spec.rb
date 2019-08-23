require 'rails_helper'

describe Review do
  it { should belong_to(:restaurant) }
  it { should validate_presence_of :name}
  it { should validate_presence_of :rating}
  it { should validate_presence_of :content}
  it { should validate_numericality_of :rating}
end
