
class Ability
  include CanCan::Ability

  def initialize(user)
    if User
       can :manage, :all

        if user.kind ==  "manager"

        end

        if user.kind ==  "cliente"
            cannot :manage , User
              cannot :manage , Purchase
              cannot :manage , Product
              can :read, User, kind: "salesman"
              can :read, User, id: user.id
              can :update ,User , id: user.id
              can :read, Product 
              can :manage, Purchase, id: user.id
            
        end

        if user.kind ==  "salesman"
          cannot :manage, User
          cannot :manage, Purchase
        end
end
end
end
