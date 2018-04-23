Before do
  @login = 'admin'
  @pass = 'admin'
  @productCode = DateTime.now.strftime('%d%m%H%M%S')
  @productName = 'Rubber Duck ' + @productCode
  @productQuantity = '4,00'
  @productCategory = 'Rubber Ducks'
  @productNamePicture = 'Rubber_duck1'
  @productPathPicture = 'C:\Users\Admin\aqa_ui_tests\Rubber_duck1.jpg'
  @productValidFrom = '21.04.2018'
  @productValidTo = '22.04.2019'
  @productManufacturer = 'ACME Corp.'
  @productKeywords = 'Duck'
  @productShortDescription = 'Lorem ipsum dolor sit amet'
  @productDescription = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
  @productHeadTitle = 'Rubber Duck Trump'
  @productMetaDescription = 'Rubber Duck'
  @productPriceSum = '25'
  @producturrency = 'US Dollars'
  @productsInCartNumber = 0
  @secondDuckType = 'Purple Duck'# 'Purple Duck', 'Yellow Duck'
  @yellowDuckSize = 'Small'


  CSV.open("LogsForTC.csv", "wb") do |csv|
   csv << ["Menu Item Clicked", "Sub Menu Item Clicked", "Header Displayed"]
  end
end
