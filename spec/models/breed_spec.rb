require 'rails_helper'

describe Feline do
  it { should belong_to :breed }
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :coat_color }
end
