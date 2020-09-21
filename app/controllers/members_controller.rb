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

  #会員の情報
  def show
    @member = Member.find(params[:id])
  end

  #新規作成
  def new
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end

  #更新フォーム
  def edit
    @member = Member.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
