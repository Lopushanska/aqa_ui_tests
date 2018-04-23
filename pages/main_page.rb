class MainPage < SitePrism::Page
    # ELEMENTS
    element :search_field, :xpath, "//input[@type='search']"
    element :product_box, :xpath, "//div[@id = 'box-product']"
    element :productsCartNumber, :xpath, "//span[@class='quantity']"
    element :addToCartButton, :xpath, "//button[@name = 'add_cart_product']"
    element :selectYellowDuckSize, :xpath, "//select[@name='options[Size]']"
    element :openCart, :xpath, "//div[@id = 'cart']/a[@class='link']"
end
