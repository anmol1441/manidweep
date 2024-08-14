module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
    when 'notice'
      'success'    # Green background for success
    when 'alert'
      'danger'     # Red background for errors
    when 'error'
      'danger'     # Red background for errors
    else
      'primary'    # Default to primary color
    end
  end
  def wow_delay(index)
    delay = index * 0.1 # Example delay calculation
    "#{delay}s"
  end
end

