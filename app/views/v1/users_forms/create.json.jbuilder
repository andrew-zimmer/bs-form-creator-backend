json.data do
    json.user do
        json.call(
            @users_form,
            :form,
            :id,
        )
    end
end
