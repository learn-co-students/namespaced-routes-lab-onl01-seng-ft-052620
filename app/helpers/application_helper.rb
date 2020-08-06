module ApplicationHelper
  def redirect_if_not_allowed(resource_name)
    p = Preference.first
    unless p && p.send("allow_create_#{resource_name}".to_sym)
      redirect_to(self.send("#{resource_name}_path".to_sym)) and return
    end
  end
end
