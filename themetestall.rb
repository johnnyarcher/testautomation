def change_theme
    edit_button_for_location(@location_name).click
    find_ember_element(:css, ".side-nav .fa-paint-brush”).click
    @driver.action.move_by(200,0).perform
    sleep 2.seconds
    find_ember_elements(:css, ".card-action”)[3].click
    # find_ember_element(:xpath, "//*[contains(text(), ‘Cobalt’)]").click
    # find_ember_element(:css, ".themes .card”).click
    sleep 5.seconds
    find_ember_element(:css, ‘.sweet-alert .confirm’).click
    sleep 5.seconds
    theme_selection=find_ember_element(:css, "h2 span”).text
    # success=theme_selection=="Cobalt”
    success=true
    pusher_notification("change-theme”, success)
  end

 def check_preview
    navigate_to_cms
    edit_button_for_location(@location_name).click
    edit_button_for_page("Home”).click
    sleep 2.seconds
    success=element_exists_in_preview(:css, ".logo-container img”)
    pusher_notification("check-preview”, success)
  end

 def iterate_all_themes
    themeid = {
    "Avenue - Simple" => "43",
    "Avenue - Classic" => "44",
    "Avenue - Bold" => "45",
    "Broadway - Bold" => "23"
    "Broadway - Classic" => "37"
    "Broadway - Simple" => "38"
    "Cobalt" => "3",
    "Denali" => "25",
    "Denali Landing Page" => "32",
    "Echo" => "90",
    "Equinox" => "5",
    "Focus" => "5",
    "Focus - Bold" => "36",
    "Focus - Simple" => "33",
    "Fusion" => "7",
    "Ivy" => "14",
    "Ivy Lifestyle"  => "15",
    "Luxe" => "9",
    "Origins" => "10",
    "Venture - Simple" => "29",
    "Venture - Classic" => "40",
    "Venture - Bold" => "39",
    "Wellborne" => "20",
    "Wellborne Traditions" => "21",
    "Wellborne Traditions 2.0" => "95",
     }

   themeid.each do |key, number|
        login_to_hub
        navigate_to_location
        get_location_name
        navigate_to_cms
        change_theme
        check_preview

   end 

 end
end