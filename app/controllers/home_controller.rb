class HomeController < ApplicationController
  def index
    if params[:text1] && params[:text2]
      @text1 = params[:text1].gsub(/\s+/, "")
      @text2 = params[:text2].gsub(/\s+/, "")
      @diff = Differ.diff_by_char(@text1, @text2)
      if @text1 == @text2
        flash[:notice] = "The 2 texts match."
      else
        flash[:error] = "The 2 texts do not match."
      end
    end
  end
end
