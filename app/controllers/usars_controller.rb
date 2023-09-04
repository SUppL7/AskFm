class UsarsController < ApplicationController
  def new
    session[:current_time]= Time.now
    @usar = Usar.new
  end

  def create
    usar_params = params.require(:usar).permit(:name, :nickname, :email, :password)

    Usar.create(usar_params)

    redirect_to root_path, notice: "Вы успешно зарегистрировались!"
  end
end
