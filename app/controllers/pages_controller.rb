class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
    @members = ['Miho', 'Taka', 'Tiger', 'Vincent']

    if params[:member]
      @members = members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
