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

  #会員の新規登録
  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to @member, notice: "会員を登録しました。"
    else
      render "new"
    end
  end

  #会員情報の更新
  def update
    @member = Member.find(params[:id])
    @member.assign_attributes(params[:member])
    if @member.save
      redirect_to @member, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
  end
end
