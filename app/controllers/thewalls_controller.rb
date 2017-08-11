class ThewallsController < ApplicationController
  def show
    render_show
  end

  def create
    unless params[:text].empty?
      Message.create(:text => params[:text])
    end
    render_show
  end

  def destroy
    Message.destroy_all
    render_show
  end

  def render_show
    @messages = Message.order(:created_at => :asc)
    render :show
  end
end
