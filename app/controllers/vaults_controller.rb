class VaultsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vault, except: [:index, :new, :create]

  def index
  	@vaults = current_user.vaults
  end

  def new
  	@vault = current_user.vaults.build
  end

  def show
  end

  def create 
  	@vault = current_user.vaults.build(vault_params)
  	if @vault.save
  		redirect_to vault_path(@vault)
  	else
  	  flash[:alert] = "Something went wrong..."
      render :new
  	end
  end

  private

  def set_vault
  	@vault = Vault.find(params[:id])
  end

  def vault_params
    params.require(:vault).permit(:title, :description)
  end
end
