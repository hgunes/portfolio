class ApplicationController < ActionController::Base
	include DeviseWhiteList
	include SetSource
	include DefaultPageContent
	include CurrentUserConcern
end
