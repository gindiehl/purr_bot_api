require 'rails_helper'

describe Breed do
  it { should have_many :felines }
  it { should validate_presence_of :name }
end
