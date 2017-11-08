class UsersController < ApplicationController
def find
  @user = User.find(params[:id])
end
end
