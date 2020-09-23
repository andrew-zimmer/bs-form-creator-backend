json.data do
    json.user do
        json.call(
            @form,
            :form,
            :id
        )
    end
end
