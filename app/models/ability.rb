class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, Article
      if user
        can :create, Article
      end
      can [:update, :destroy], Article do |article|
        user == article.user
      end
  end
end
