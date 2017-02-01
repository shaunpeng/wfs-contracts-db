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
  
  def bootstrap_flash_class(flash_type)
    { success: 'success',
      error:   'danger',
      alert:   'warning',
      notice:  'info'
    }[flash_type.to_sym] || flash_type.to_s
  end
  
end
