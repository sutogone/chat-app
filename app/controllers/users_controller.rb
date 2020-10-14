class UsersController < ApplicationController
  def edit
    
  end
  def update
    if current_user.update(user_params) #もし、現在ログインしているユーザー情報がアップデートされたらroot_pathに戻る
      redirect_to root_path             #そうでなければeditのビューに戻る
    else
      render :edit
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email) #require(モデル名).permit(モデルの中のキー)
  end
end
