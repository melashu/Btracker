class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, :Catagory, author: user
    can :manage, :Btransaction, author: user
  end
end
