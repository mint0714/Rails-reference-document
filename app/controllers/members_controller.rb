class MembersController < ApplicationController
  #会員情報
  def index
    @members = Member.order("number")
  end

  #検索
  def search
    @members = Member.search(params[:q]) #qには検索ワードが入っている
    render "index"
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
