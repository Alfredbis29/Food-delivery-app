class UserPolicy < ApplicationPolicy
  class Scope < Scope
  def index?
    @user.has_role? :admin or @user.has_role? :normaluser or @user.has_role? :guest
    end
  end
end
