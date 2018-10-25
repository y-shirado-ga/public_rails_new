class AjaxTestController < ApplicationController
  def top

  end

  def update
    post_text = params[:data][:text]
    results = { :message => post_text }
    render partial: 'ajax_partial', locals: { :results => results }
  end
end
