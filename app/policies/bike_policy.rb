class BikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    right_user?
  end

<<<<<<< HEAD
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
=======
  def create?
    right_user?
  end

  def update?
    right_user?
  end

  def destroy?
    right_user?
  end

  def search?
    true
>>>>>>> pages-link
  end

  private

  def right_user?
    record.user == user
  end
end

