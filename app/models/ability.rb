class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, Article
  end
end
