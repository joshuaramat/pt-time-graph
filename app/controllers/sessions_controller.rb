class SessionsController < Devise::SessionsController
  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.valid_password?(params[:user][:password])
      sign_in(user)
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path, notice: "Logged out successfully"
  end
end
