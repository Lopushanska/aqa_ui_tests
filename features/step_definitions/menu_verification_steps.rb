Then (/^I see headers for each item and sub-item in side menu$/) do
  visit '/admin'
  @menuItemNumber = 1
      begin
        while @general_page.has_menuItems? do
          if page.has_no_xpath?("//ul[@id = 'box-apps-menu']/li[#{@menuItemNumber}]")
                  break
              else
                      @general_page.clickNextMenuItem(@menuItemNumber)
                      expect(@general_page).to have_header
                      @general_page.logMenuItemDisplayed(@menuItemNumber, @menuSubItemNumber)
                      @menuSubItemNumber = 1
                              begin
                                while @general_page.has_menuSubItems? do
                                if page.has_no_xpath?("//ul[@id = 'box-apps-menu']/li[#{@menuItemNumber}]//ul/li[#{@menuSubItemNumber}]")
                                      @menuItemNumber += 1
                                      if page.has_no_xpath?("//ul[@id = 'box-apps-menu']/li[#{@menuItemNumber}]")
                                           break
                                         else
                                      @general_page.clickNextMenuItem(@menuItemNumber)
                                      expect(@general_page).to have_header
                                      @general_page.logMenuItemDisplayed(@menuItemNumber, @menuSubItemNumber)
                                      @menuSubItemNumber = 1
                                          end
                                      else
                                          @general_page.clickNextMenuSubItem(@menuItemNumber, @menuSubItemNumber)
                                          expect(@general_page).to have_header
                                          @general_page.logMenuItemDisplayed(@menuItemNumber, @menuSubItemNumber)
                                          @menuSubItemNumber += 1
                                      end
                                 end
              end
              @menuItemNumber += 1
          end
        end
      end

end
