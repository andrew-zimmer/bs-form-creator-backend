module V1
    class FormsController < ApplicationController
        before_action :authenticate_user!

        def create

            @form = Form.new(forms_params)
            if @form.save
                render :create
            else
                render json: {errors: @form.errors.full_messages}
            end
        end

        def update
            @form = Form.find_by(id: params[:id])
            if @form.update(forms_params)
                render :update
            else
                render json: {errors: @form.errors.full_messages}
            end
        end

        def destroy
            form = Form.find_by(id: params[:id])
            if form
                form.destroy
            else
                head(:unauthorized)
            end
        end

        private
        def forms_params
            params.require(:forms).permit(:form, :user_id)
        end
    end
end
