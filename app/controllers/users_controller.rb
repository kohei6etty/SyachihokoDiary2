class UsersController < ApplicationController

    # resources:users

	def index
		#取ってくるものが複数なのでsをつける
		@users = User.all

	end

	def show
		#レコードを1つだけ取ってくる
		#roaramsはIDのようなもの

		@user = User.find(params[:id])

    end

end
