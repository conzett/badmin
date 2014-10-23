module Badmin
	class ApplicationController < ActionController::Base

		before_action :set_form, only: [:edit, :update]
		before_action :set_resource, only: :update

		def index
			# TODO: Add paging, etc.
			@resources = resource_klass.all
		end

		def edit
		end

		def update
		  @form.submit params[params[:resource].singularize]
			respond_to do |format|
				if @form.save
					format.html { redirect_to action: :index }
				else
					format.html { render :edit }
				end
			end
		end

		protected

		def set_form
      name = params[:resource].singularize
			@form = "Badmin::#{name.classify}Form".safe_constantize.new resource
		end

		def set_resource
			@resource = resource
		end

		def resource
			resource_klass.find params[:id]
		end

		def resource_klass
			params[:resource].classify.safe_constantize
		end

		def method_missing(meth, *args, &block)
			super unless meth.to_s.ends_with? '_url'
			resource = args.first
			name = resource.class.name.downcase.pluralize
			"/badmin/#{name}/#{resource.id}"
	  end
	end
end
