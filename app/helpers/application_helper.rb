module ApplicationHelper
    def google_map_image profile
        image_tag "http://maps.googleapis.com/maps/api/staticmap?center=#{profile.latitude},#{profile.longitude}&markers=#{profile.latitude},#{profile.longitude}&zoom=14&size=640x400&key=AIzaSyD964KFUMyHkWZVdc4RkUsVy_3jLWjJCbU", class: 'img-fluid img-rounded', alt: "#{profile.full_address} on the map", size: "500"
    end

    def show_all_google_map profiles_all
        main_map = "http://maps.googleapis.com/maps/api/staticmap?size=600x300"
        count = 0
        profiles_all.each do |p|
            main_map += "&markers=label:#{count+=1}%7C#{p.latitude},#{p.longitude}"
        end
        main_map += "&key=AIzaSyD964KFUMyHkWZVdc4RkUsVy_3jLWjJCbU"
        return image_tag main_map
    end
end
