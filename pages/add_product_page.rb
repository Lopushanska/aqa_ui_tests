class AddProductPage < SitePrism::Page
  # ELEMENTS
  element :presenceOfAddProductHeader, :xpath, "//h1[contains(text(),'Add New Product')]"

  element :statusEnabled, :xpath, "//input[@name = 'status' and @value = '1']"
  element :input_product_name, :xpath, "//input[@name = 'name[en]']"
  element :input_product_code, :xpath, "//input[@name = 'code']"
  element :select_rubber_ducks, :xpath, "//input[@name = 'categories[]' and @data-name = 'Rubber Ducks']"
  element :select_subcategory, :xpath, "//input[@name = 'categories[]' and @data-name = 'Subcategory']"
  element :select_default_category, :xpath, "//select[@name = 'default_category_id']"
  element :select_gender_female, :xpath, "//input[@name = 'product_groups[]' and @value = '1-2']"
  element :select_gender_male, :xpath, "//input[@name = 'product_groups[]' and @value = '1-1']"
  element :select_gender_unisex, :xpath, "//input[@name = 'product_groups[]' and @value = '1-3']"
  element :input_product_quantity, :xpath, "//input[@name = 'quantity']"
  element :validFrom, :xpath, "//input[@name = 'date_valid_from']"
  element :validTo, :xpath, "//input[@name = 'date_valid_to']"
  element :attach_image, :xpath, "//input[@name = 'new_images[]']"

  element :informationTab, :xpath, "//a[contains(text(), 'Information')]"
  element :select_manufacturer, :xpath, "//select[@name = 'manufacturer_id']"
  element :input_product_keywords, :xpath, "//input[@name = 'keywords']"
  element :input_product_ShortDescription, :xpath, "//input[@name = 'short_description[en]']"
  element :input_product_Description, :xpath, "//div[@class = 'trumbowyg-editor']"
  element :input_product_HeadTitle, :xpath, "//input[@name = 'head_title[en]']"
  element :input_product_MetaDescription, :xpath, "//input[@name = 'meta_description[en]']"

  element :pricesTab, :xpath, "//a[contains(text(), 'Prices')]"
  element :input_price_sum, :xpath, "//input[@name = 'purchase_price']"
  element :select_currency, :xpath, "//select[@name = 'purchase_price_currency_code']"
  element :input_price_with_tax, :xpath, "//input[@name='prices[USD]']"

  element :saveButton, :xpath, "//button[@name = 'save']"
  element :presenceOfCatalogForm, :xpath, "//form[@name = 'catalog_form']"
end
