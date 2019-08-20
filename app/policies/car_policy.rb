class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    owner_or_admin
  end

  def destroy?
    owner_or_admin
  end

  def owner_or_admin
    record.user == user || user.admin
  end
end
