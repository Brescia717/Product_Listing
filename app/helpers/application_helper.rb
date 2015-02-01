module ApplicationHelper
  def sortable(column, title = '')
    if title === ''
      title = column.titleize
    end
    # css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, params.merge(sort: column, direction: direction, page: nil), remote: true #, {:class => css_class}
  end
end
