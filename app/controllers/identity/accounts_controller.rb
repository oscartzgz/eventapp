class Identity::AccountsController < ApplicationController
  before_action :set_user

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice: "Your name has been changed"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def convert_into_organizer
    return if @user.organizer?

    if @user.update role: :organizer
      redirect_to root_path, notice: "You converted into organizer, now you can manage events."
    end
  end

  private
    def set_user
      @user = Current.user
    end

    def user_params
      params.permit(:name)
    end
end
