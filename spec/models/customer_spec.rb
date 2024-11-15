require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject(:customer) { Customer.new }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :birth_date }
end
