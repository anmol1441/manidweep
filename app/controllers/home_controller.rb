class HomeController < ApplicationController 
  layout "front"
  def index
    @carousel_images = Dir.glob(Rails.root.join('app', 'assets', 'images', 'herosection', '*')).map do |image_path|
      File.basename(image_path)
    end
    @facebook = "https://www.facebook.com/ManidweepJodhpur/"
    @instagram = "https://www.instagram.com/manidweep_adhyatm_pariwar/"
    @twitter = "https://x.com/Manidweep_Trust"
    @mail_id = "manidweepjodhpur@gmail.com"
    @phone_no = "(+91) 94149-17901"
    
    @activities = User.all
    @testimonials = User.all
    @posts = User.all
    @books = User.all
    @publications = User.all
    @news_and_events = User.all
    @torch_bearers = User.all
    @hero_section = {
      title: "Manidweep",
      description: "<b>\"Manidweep\"</b>, means the divine abode of the Divine Mother. On Earth, <b>'Manidweep'</b>, A-183, Shastri Nagar, Jodhpur, is a symbol of that same divine abode whose creation was carried out by the ordinance of the Divine Mother. <b>'Manidweep'</b> is not just a building; it is a center filled with faith, spiritual practice, love, consciousness, and values, where Divine Mother Maa Tripursundari herself resides. This place is imbued with spiritual vibrations and serves as a source of divine knowledge for seekers. Negative thoughts naturally dissipate here, and individuals are uplifted by positive thinking. Just sitting in the peaceful environment here brings a sense of joy to the mind.",
      image_url: "https://iqinfotech.in/manidweep/assets/img/manidweep.png",
      button_link: "/about"
    }
  end

end
