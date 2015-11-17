class Ability
  include CanCan::Ability

  def initialize(user)
      can :read, Article
      if user
        can :create, Article
      end
      can :update, Article do |article|
        user == article.user
      end
  end
end
