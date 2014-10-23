require 'badmin/engine'
require 'sass-rails'
require 'bootstrap-sass'
require 'haml-rails'
require 'simple_form'
require 'jquery-rails'

module Badmin
	# TODO: Move to base class?
	# Override form instance methods:
	# https://github.com/rails/activeform/blob/master/lib/active_form/base.rb#L90
	# exent into base class
	module FormExtensions
		attr_accessor :options_hash

		def options_hash
			@options_hash ||= {}
		end

		def options(name, hash)
			options_hash[name] = hash
		end
	end
end

module ActiveForm
	class Base
		extend Badmin::FormExtensions

		def options_hash
      self.class.options_hash
		end
	end
end

module ActiveForm
	class Form
		include Badmin::FormExtensions
	end
end
