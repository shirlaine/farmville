class PagesController < ApplicationController

before_action :authenticate_admin!

  def index
  end

  def superindex
    unless current_admin.superadmin?
    redirect_to root_path
    end
    @admins = Admin.all
    # byebug
  end

  def supertrue
    @admin = Admin.find(params[:id])
    @admin.superadmin = true
    @admin.save
    redirect_to superindex_path
  end

  def superfalse
    @admin = Admin.find(params[:id])
    @admin.superadmin = false
    @admin.save
    redirect_to superindex_path
  end

end
