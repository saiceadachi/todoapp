module TodosHelper
  def ordermark(currentorder)
    if currentorder && currentorder.casecmp("desc")==0
        return "▼"
    else
        return "▲"
    end
  end
  def mark_click_path(click)
    if click && click.casecmp("desc")==0
        return todos_path+"?order=asc"
    else
        return todos_path+"?order=desc"
    end
  end
end
