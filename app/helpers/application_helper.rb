module ApplicationHelper

	def parameterize(data)
		data.gsub(/[^0-9A-Za-z]/, '-')
	end

	def body_klass
		"#{parameterize(params[:controller])}-#{parameterize(params[:action])}"
	end

	def link_to_add_fields(link_text, f, association)
		new_object = f.object.send(association).klass.new
		id = new_object.object_id

		# https://api.rubyonrails.org/
		# fields_for(record_name, record_object = nil, fields_options = {}, &block)
		fields = f.fields_for(association, new_object, {}) do |builder|
			render(association.to_s.singularize + "_fields", f: builder)
		end

		link_to(link_text, '#', class: 'add_fields', data: { id: id, fields: fields.gsub('\n', '') })
	end
end