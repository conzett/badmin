module Badmin
	class ResourcesController < Badmin::ApplicationController
		def index
			@name = resource_klass.model_name.human.pluralize
			@resources = set_resources
			@resources.each { |r| r.extend resource_concern }
		end

		private

		def resource_klass
			params[:resource].singularize.capitalize.safe_constantize
		end

		def set_resources
      method_name = "set_#{params[:resource]}"
			respond_to?(method_name) ? send(method_name) : resource_klass.unscoped
		end
	end
end
