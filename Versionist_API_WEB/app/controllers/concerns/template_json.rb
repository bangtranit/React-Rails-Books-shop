module TemplateJson
	def self.success_json(data, message)
		{data: data, message: message, code: 200}
	end

	def self.success_message_json(message)
		{message: message, code:200}
	end
	
	def self.error_json(message)
		{message: message, code: 500}
	end

	def self.success_json_with_serializer(data, serializer, message)
		{data: data, each_serializer: serializer, message: message}
	end
end