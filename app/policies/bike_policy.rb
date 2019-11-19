class BikePolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.where(user: user)
    end

    def index?
      right_user?
    end

    def create?
      right_user?
    end

    def update?
      right_user?
    end

    def destroy?
      right_user?
    end

    private

    def right_user?
      record.user == user
    end
  end
end
