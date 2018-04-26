class V1::BaseController < ApplicationController
	def success_template(data, message)
		TemplateJson.success_json(data, message)
	end

	def sucess_message_template(message)
		TemplateJson.success_message_json(message)
	end

	def error_template(message)
		TemplateJson.error_json(message)
	end

	def success_json_with_serializer_template(data, serializer, message)
		TemplateJson.success_json_with_serializer(data, serializer, message)
	end
end
