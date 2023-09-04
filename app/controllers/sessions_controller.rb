class SessionsController < ApplicationController
  def new
  end

  def create
    usar_params = params.require(:session)

    usar = Usar.find_by(email: usar_params[:email])&.authenticate(usar_params[:password])

    if usar.present?
      session[:usar_id] = usar.id

      redirect_to root_path,notice: "Вы вошли на сайт"
    else
      flash.now[:alert] = "Неправильный логин или пароль"

      render :new
    end
  end

  def destroy
    session.delete(:usar_id)

    redirect_to root_path, notice: "Вы вышли из аккаунта"
  end
end
