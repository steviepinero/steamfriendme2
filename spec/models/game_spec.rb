require 'rails_helper'

# This is a test for associations
RSpec.describe Game, type: :model do
  subject(:game) { Game.new }
  it { is_expected.to belong_to(:user) }
end
# RSpec.describe Game, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
