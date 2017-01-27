module ApplicationHelper
  
  def yesno(x)
    x ? "Yes" : "No"
  end
  
  def defaulttrue(this)
    if this.nil?
      true
    else
      this
    end
  end
  
end
