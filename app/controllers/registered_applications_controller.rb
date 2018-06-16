class RegisteredApplicationsController < ApplicationController
  def index
    @applications = RegisteredApplication.where(user: current_user)
  end

  def new
    @application = RegisteredApplication.new
  end

  def create
    @application = current_user.registered_applications.new(app_params)

    if @application.save
      redirect_to registered_applications_path, notice: "The url was registered!"
    else
      redirect to new, notice: "The url wasn't registered, please try again"
    end
  end

  def read
    @app = RegisteredApplication.find(params[:id])
  end

  def destroy
    @app = RegisteredApplication.find(params[:id])

    if @app.destroy
      flash[:alert] = "The application was de-registered!"
    else
      flash[:alert] = "There was an error, please try again!"
    end

    redirect_to registered_applications_path
  end

  private

  def app_params
      params.require(:registered_application).permit(:name,:url)
  end
end
