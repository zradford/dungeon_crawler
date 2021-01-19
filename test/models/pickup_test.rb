require "test_helper"

class PickupTest < ActiveSupport::TestCase
  test "can belong to a spell, special, skill or effect" do
    spell = Spell.new
    pickup1 = Pickup.new(pickupable: spell)

    special = Special.new
    pickup2 = Pickup.new(pickupable: special)

    skill = Skill.new
    pickup3 = Pickup.new(pickupable: skill)

    effect = Effect.new
    pickup4 = Pickup.new(pickupable: effect)

    assert_equal(pickup1.pickupable, spell)
    assert_equal(pickup2.pickupable, special)
    assert_equal(pickup3.pickupable, skill)
    assert_equal(pickup4.pickupable, effect)
  end

  test "belongs to a user" do
    user = User.new
    pickup = Pickup.new(user: user)
  
    assert_equal(pickup.user, user)
  end
end
