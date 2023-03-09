class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    build_resource(sign_up_params)

    if resource.save
      sign_in(resource)
      redirect_to root_path, notice: "Account created successfully"
    else
      clean_up_passwords resource
      set_minimum_password_length
      render :new
    end
  end

  def edit
    super
  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end
end