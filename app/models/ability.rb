# frozen_string_literal: true

class Ability
  include CanCan::Ability

    
    def initialize(user)
      user ||= User.new
      
      if user.present?  # additional permissions for logged in users (they can read their own posts)
        can :manage, UserDoc, user_id: user.id
        can :manage, User, id: user.id
        can :manage, Qualification, id: user.id
        can :manage, WorkExperience, id: user.id

        if user.role == 'Admin'  # additional permissions for administrators
          can :manage, UserDoc
          can :manage, User
          can :manage, Qualification
          can :manage, WorkExperience  
        end
      end
    end

  end
