class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    #showアクションを設定しUserクラスを用いてユーザー情報を引っ張ってくる。対象idのユーザー情報を@userに入れている。@はアクションで設定した変数をviewで使う際に必要。
    @name = @user.name
    @prototypes = @user.prototypes
  end
end