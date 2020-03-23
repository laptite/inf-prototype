module ApplicationHelper

	def parameterize(data)
		data.gsub(/[^0-9A-Za-z]/, '-')
	end

	def body_klass
		"#{parameterize(params[:controller])}-#{parameterize(params[:action])}"
	end
end