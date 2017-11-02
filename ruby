#loops through all locations and adds structured data widget to those that need it 
w.each do |t|
unless t.garden_widget_ids.include?(44)
WidgetManagerJob.perform_async('add', t.id, 'head','structured-data',nil)
end 
end
