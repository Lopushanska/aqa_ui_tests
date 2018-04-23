When (/^I Open Catalog on the Left menu$/) do
  @general_page.clickNextMenuItem(2)
  expect(@general_page).to have_catalog_header
end

When (/^Click 'Add New Product' button on right top$/) do
  @general_page.add_product_button.click
  @add_product_page.wait_for_presenceOfAddProductHeader
  expect(@add_product_page).to have_presenceOfAddProductHeader
end

When (/^Fill all mandatory fields on General tab$/) do
  @add_product_page.statusEnabled.set(true)
  @add_product_page.input_product_name.set @productName
  @add_product_page.input_product_code.set @productCode
  @add_product_page.select_rubber_ducks.set(true)
  @add_product_page.select_subcategory.set(true)
  @add_product_page.select_default_category.select(@productCategory)
  @add_product_page.select_gender_female.set(true)
  @add_product_page.select_gender_male.set(true)
  @add_product_page.select_gender_unisex.set(true)
  @add_product_page.input_product_quantity.set @productQuantity
  @add_product_page.validFrom.set @productValidFrom
  @add_product_page.validTo.set @productValidTo
end

When (/^Attach a picture to the product$/) do
  @add_product_page.attach_image.set @productPathPicture
end

When (/^Fill some data on Information tab$/) do
  @add_product_page.informationTab.click
  @add_product_page.select_manufacturer.select(@productManufacturer)
  @add_product_page.input_product_keywords.set @productKeywords
  @add_product_page.input_product_ShortDescription.set @productShortDescription
  @add_product_page.input_product_Description.set @productDescription
  @add_product_page.input_product_HeadTitle.set @productHeadTitle
  @add_product_page.input_product_MetaDescription.set @productMetaDescription
end

When (/^Fill in the Price$/) do
  @add_product_page.pricesTab.click
  @add_product_page.input_price_sum.set @productPriceSum
  @add_product_page.select_currency.select(@producturrency)
  @add_product_page.input_price_with_tax.set @productPriceSum
end

When (/^Save the Product$/) do
  @add_product_page.saveButton.click
  @add_product_page.wait_for_presenceOfCatalogForm
  expect(@add_product_page).to have_content "Changes saved"
end

Then (/^I can make sure that new product appeared in catalog$/) do
  expect(@add_product_page).to have_content @productName
end

When (/^I Open Main page$/) do
  visit '/'
end

Then (/^I can see and open newly created product$/) do
  @main_page.search_field.set @productName
  @main_page.search_field.send_keys :enter
  expect(@main_page.product_box).to have_content @productName
end

When (/^I add the product to the cart$/) do
  @ducksNumber = 0
  @main_page.addToCartButton.click
  @ducksNumber += 1
  expect(@main_page.productsCartNumber).to have_content @ducksNumber
end

When (/^Open any other type of Duck and add it to the card$/) do
  visit '/'
  @main_page.search_field.set @secondDuckType
  @main_page.search_field.send_keys :enter
  expect(@main_page.product_box).to have_content @secondDuckType
      case @secondDuckType
      when 'Yellow Duck'
        @main_page.selectYellowDuckSize.select @yellowDuckSize
        @main_page.addToCartButton.click
      else
        @main_page.addToCartButton.click
      end
end

Then (/^I can Verify that counter of the items in the cart changes$/) do
    expect(@main_page.productsCartNumber).to have_content @ducksNumber
end

When (/^I Open the Cart by click 'Checkout' button at right-top$/) do
  @main_page.openCart.click
  expect(@checkout_page).to have_presenceOfPhone
end

Then (/^I can Remove all products from the cart one-by-one$/) do

  begin
    while @checkout_page.has_removeButton? do
        @checkout_page.all(:xpath, "//button[@name = 'remove_cart_item']").each do |remove|
          remove.click
        end
              if page.has_no_xpath?("//button[@name = 'remove_cart_item']")
                expect(@checkout_page).to have_content 'There are no items in your cart.'
                break
              else
                redo
              end
    end
  end

end
