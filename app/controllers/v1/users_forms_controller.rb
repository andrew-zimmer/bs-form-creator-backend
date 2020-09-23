module V1
    class UsersFormsController < ApplicationController


        private
        def user_form_params
            params.require(:user).permit(:user_id, :form_id)
        end
    end
end
