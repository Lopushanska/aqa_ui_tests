class LoginPage < SitePrism::Page
    # ELEMENTS
    element :username, :xpath, "//input[@name='username']"
    element :password, :xpath, "//input[@name='password']"
    element :submit, :xpath, "//button[@type='submit']"
end
