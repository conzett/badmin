module Badmin
  module ApplicationHelper
		def form_attributes(object)
			return object.proc.call if object.respond_to? :proc
		  object.class.instance_methods(false) &
				object.model.attribute_names.map(&:to_sym)	
		end

		def method_missing(meth, *args, &block)
			super unless meth.to_s.ends_with? '_path'
			resource = args.first
			name = resource.class.name.downcase.pluralize
			"/badmin/#{name}/#{resource.id}"
	  end
  end
end
