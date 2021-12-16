module DeviseHelper
  def after_sign_in_path_for(resource)
    if resource.api_key.nil?
      root_path(resource)
    else
      trello_boards_path(resource)
    end
  end

  def after_sign_up_path_for(resource)
    root_path(resource)
  end
end