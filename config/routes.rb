
if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
     match 'projects/:project_id/newissuealerts/index', :to => 'newissuealerts#index'
     match 'projects/:project_id/newissuealerts/new', :to => 'newissuealerts#new' , :as => :newissuealert
     match 'projects/:project_id/newissuealerts/:id/edit', :to => 'newissuealerts#edit', :as => :newissuealert_edit
  end
else
  ActionController::Routing::Routes.draw do |map|
	  map.connect 'projects/:project_id/newissuealerts/:action', :controller => 'newissuealerts'
	  map.connect 'projects/:project_id/newissuealerts/:action/:id', :controller => 'newissuealerts'
  end
end
