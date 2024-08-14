class FrontController < ApplicationController 
  # layout "front"
  # layout "admin"
  def index
    @carousel_images = Dir.glob(Rails.root.join('app', 'assets', 'images', 'herosection', '*')).map do |image_path|
      File.basename(image_path)
    end
  end

  def contact
    
  end

  def contact
    
  end
end
