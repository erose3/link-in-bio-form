Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "form" })

  post("/add_link", { :controller => "items", :action => "add" })

end
