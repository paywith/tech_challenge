require 'rails_helper'

RSpec.describe Item, type: :model do
  subject(:item) { described_class.new }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :price }
end
