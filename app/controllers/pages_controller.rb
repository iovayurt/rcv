class PagesController < ApplicationController

  def home
    @time = Date.today.strftime("#{Date.today.day.ordinalize} %B %Y")
  end

  def about
  end

  def contact

    search = params[:member]

    @members = ['Ron', 'Leslie', 'Tom', 'April', 'Andy', 'Ben']

    if search.present?
      @members = @members.select { |name| name.start_with?(search) }
    end

  end
end
