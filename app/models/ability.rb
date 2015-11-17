class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, Article
      if user
        can :create, Article
      end
  end
end
