class PasswordsController < Devise::PasswordsController
  def new
    super
  end

  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)

    if successfully_sent?(resource)
      redirect_to new_user_session_path, notice: "Password reset email sent"
    else
      render :new
    end
  end

  def edit
    super
  end

  def update
    self.resource = resource_class.reset_password_by_token(resource_params)

    if resource.errors.empty?
      sign_in(resource)
      redirect_to root_path, notice: "Password reset successful"
    else
      render :edit
    end
  end
end