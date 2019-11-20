class BikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    right_user?
  end

  def new?
    true
  end

  def create?
    true
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

