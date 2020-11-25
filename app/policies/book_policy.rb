class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end
  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user  #|| user.admin <= ou si le user est admin (add colum admin boolean on user model)            # les personnes qui ont le droit de mettre à jour le book sont celles qui qd le user du book = user donc le createur à l origin du book
  end

  def destroy?
    record.user == user
  end
end
