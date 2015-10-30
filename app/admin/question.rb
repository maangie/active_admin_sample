ActiveAdmin.register Question do
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

  permit_params(%i(title image image_cache publish_datetime_date
                   publish_datetime_time_hour publish_datetime_time_minute) +
                [answers_attributes: %i(id answer_text total_count _destroy)])

  form(html: { multipart: true }) do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :image
      f.input :publish_datetime, as: :just_datetime_picker
      f.input :image_cache, as: :hidden
    end

    f.inputs do
      # binding.pry
      f.has_many(:answers, heading: 'Answers', allow_destroy: true,
                 new_record: true) do |a|
        # binding.pry
        a.input :answer_text
        a.input :total_count
      end
    end

    f.actions
  end
end
