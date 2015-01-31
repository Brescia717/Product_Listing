module ApplicationHelper
  def sortable(column, title = '')
    if title === ''
      title = column.titleize
    end
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, sort: column, direction: direction
  end
end
