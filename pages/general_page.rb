class GeneralPage < SitePrism::Page
    # ELEMENTS
    element :logotype, :xpath, "//div[@class = 'logotype']"
    elements :menuItems, :xpath, "//ul[@id = 'box-apps-menu']/li"
    elements :menuSubItems, :xpath, "//ul[@id = 'box-apps-menu']/li//ul/li"
    element :header, :xpath, "//h1"
    element :catalog_header, :xpath, "//h1[contains(text(),'Catalog')]"
    element :add_product_button, :xpath, "//a[contains(text(),'Add New Product')]"

    # METHODS
    def clickNextMenuItem (menuItemNumber)
      find(:xpath, "//ul[@id = 'box-apps-menu']/li[#{menuItemNumber}]" ).click
    end

    def clickNextMenuSubItem (menuItemNumber, menuSubItemNumber)
      find(:xpath, "//ul[@id = 'box-apps-menu']/li[#{menuItemNumber}]//ul/li[#{menuSubItemNumber}]").click
    end

    def logMenuItemDisplayed (menuItemNumber, menuSubItemNumber)
      CSV.open("LogsForTC.csv", "a+") do |csv|
      csv << [menuItemNumber, menuSubItemNumber, "Yes"]
      end
    end
end
