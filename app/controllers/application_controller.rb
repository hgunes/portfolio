class ApplicationController < ActionController::Base
	include DeviseWhiteList
	include SetSource
	include DefaultPageContent
end
