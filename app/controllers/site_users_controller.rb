class SiteUsersController < ApplicationController
  before_filter :setup
  layout 'site'  
  
  def list_users
    @site_users = @site.site_users
  end
  
  def list_groups
    @site_groups = @site.site_groups
  end

  def new
    @user_obj = User.new
  end
  
  protected

  def setup
    @site = Site.find(params[:site_id] || params[:id]) 
    @symbol = "Website_List"
  end
  

end
