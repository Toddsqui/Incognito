class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

def self.search(search, page)
	paginate :per_page => 5, :page => page,
			 :conditions => ['name like ?', "%#{search}%"],
			 :order => 'name'
end

