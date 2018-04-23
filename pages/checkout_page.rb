class CheckoutPage < SitePrism::Page
  # ELEMENTS
  element :presenceOfPhone, :xpath, "//span[@class = 'phone']"
  elements :removeButton, :xpath, "//button[@name = 'remove_cart_item']"
end
