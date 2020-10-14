class UsersController < ApplicationController
  def edit
    
  end
  def update
    if current_user.update(user_params) #もし、現在ログインしているユーザー情報がアップデートされたらroot_pathに戻る
      redirect_to root_path             #そうでなければeditのビューに戻る
    else
      render :edit                      #renderは指定するビュー直接を呼び出すredirect_toとの違いは後者はルーティング経由で呼び出している
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email) #require(モデル名).permit(モデルの中のキー)
  end
end
