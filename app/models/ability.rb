class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Article
    if user
      can :create, Article
      can [:update, :destroy], Article, :user => user
      if user.admin
        can :manage, Article
      end
    end
  end
end
