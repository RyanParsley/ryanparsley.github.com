module LilHelpers
  def page_title
    page_title = "Ryan Parsley's GitHub Projects"
    if data.page.title
      page_title << data.page.title
    else
      page_title << "Hand-crafted frontend development"
    end
    page_title
  end

  def title
    if data.page.title
      title = data.page.title
    else
      title = "Missing a title!"
    end
    title
  end

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "\#{start_year}"
    else
      "\#{start_year}&#8211;\#{end_year}"
    end
  end

  def active?(part)
     "active" if (data.page.selected == part) or Regexp.new(part).match(request.path)
  end
  def bodyClass?
    if data.page.bodyClass
      bodyClass =  " " + data.page.bodyClass
    else
      bodyClass = " "
    end
    bodyClass
  end

end
