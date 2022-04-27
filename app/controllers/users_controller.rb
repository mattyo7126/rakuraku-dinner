class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @recipes = user.recipes
  end
end
