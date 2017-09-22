class UsersController < ApplicationController
  def index
    @users=User.all
    #render :action => 'index'
  end
end
