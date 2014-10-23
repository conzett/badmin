Badmin::Engine.routes.draw do
	root to: 'application#index'

	get ':resource',          to: 'application#index'
	patch ':resource/:id',    to: 'application#update'
	get ':resource/:id',      to: 'application#show'
	get ':resource/:id/edit', to: 'application#edit'
end
