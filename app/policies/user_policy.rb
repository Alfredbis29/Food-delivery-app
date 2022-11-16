class UserPolicy < ApplicationPolicy
  def index?
    user.admin?
  end
  class Scope < Scope
  end
end
