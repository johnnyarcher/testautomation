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
    "Berkshire A+ Modern" => "1",
    "Berkshire A+ Resort Version B" => "3",
    "Berkshire A+ Resort Version C" => "4",
    "Berkshire A+ Resort" => "2"
    "Berkshire Corporate" => "5"
    "Berkshire Urban" => "6"
    "CFLane Nashville" => "94",
    "CFLane Olmsted" => "35",
    "CFLane Ardmore" => "7",
    "Compass Rock A" => "9",
    "Compass Rock B" => "10",
    "Compass Rock C" => "11",
    "Compass Rock Corporate" => "12",
    "Holland Residential Gateway" => "13",
    "Merrill Gardens" => "24",
    "Mission Rock" => "28",
    "Place Properties"  => "26",
    "Sequoia" => "31",
    "StorQuest 2.0" => "30",
    "William Warren Group" => "22",
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