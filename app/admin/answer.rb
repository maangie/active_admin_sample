ActiveAdmin.register Answer do
  # See permitted parameters documentation:
  # http://bit.ly/1ZWXppB
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params %(question_id answer_text total_count)

  form do |f|
    f.inputs 'Details' do
      f.input :question
      f.input :answer_text
      f.input :total_count
    end
  end
end
