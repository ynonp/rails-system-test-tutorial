class ThewallsController < ApplicationController
  @@messages = []

  def show
    render_show
  end

  def create
    @@messages.push({
      text: params[:text]
    })
    render_show
  end

  def destroy
    @@messages = []
    render_show
  end

  def render_show
    @messages = @@messages
    render :show
  end
end
