module Badmin
	class ApplicationForm < ActiveForm::Base
		def partial
			"#{self.class.name.demodulize.chomp('Form').underscore}_fields"
		end
	end
end
