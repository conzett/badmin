module Badmin
	class UserForm < Badmin::ApplicationForm
		self.main_model = :user

		attributes :email, :first_name, :last_name

		validates :email, presence: true

		association :tasks do
			options :complete, as: :boolean
			attributes :name, :complete
		end
	end
end
