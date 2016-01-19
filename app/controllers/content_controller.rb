class ContentController < ApplicationController
  before_filter :set_theme


  def set_theme
    theme = Event.find(1).theme
    prepend_view_path "app/themes/#{theme}"
    self.class.layout "../../themes/#{theme}/layout"
  end




end