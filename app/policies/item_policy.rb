class ItemPolicy < ApplicationPolicy
  attr_reader :current_user, :item

  # def initialize(current_user, item)
  #   @current_user = current_user
  #   @item = item
  # end


  def new?
    @current_user.role == 'admin'
  end

  def create?
    @current_user.role == 'admin'
  end

  def update?
    @current_user.role == 'admin'
  end

  def edit?
    @current_user.role == 'admin'
  end

  def destroy?
    @current_user.role == 'admin'
  end
end
