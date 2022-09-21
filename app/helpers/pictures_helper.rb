module PicturesHelper

  def generate_badge(type)
    case type
    when "kitchens"
      e = "<span class='badge bg-secondary'> #{type} </span>"
    when "bathrooms"
      e= "<span class='badge bg-danger'> #{type} </span>"
    when "basements"
      e= "<span class='badge bg-primary'> #{type} </span>"
    when 'interiors'
      e=  "<span class='badge bg-dark'> #{type} </span>"
    when "exteriors"
      e="<span class='badge bg-info'> #{type} </span>"
    when "buildings"
      e=  "<span class='badge bg-success'> #{type} </span>"
    else
      e= "<span class='badge bg-info'> #{type} </span>"
    end
    e.html_safe
  end
end
