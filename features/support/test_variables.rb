Before do
  @login = 'admin'
  @pass = 'admin'

  CSV.open("LogsForTC.csv", "wb") do |csv|
   csv << ["Menu Item Clicked", "Sub Menu Item Clicked", "Header Displayed"]
  end
end
