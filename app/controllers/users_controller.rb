class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:query].present?
      sql_subquery = "first_name ILIKE :query OR last_name ILIKE :query OR username ILIKE :query"
      @users = @users.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
