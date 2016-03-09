require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
# This is a test for associations
RSpec.describe User, type: :model do
  subject(:user) { User.new }
  it { is_expected.to have_many(:games) }
end
