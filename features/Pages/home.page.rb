class HomePage < SitePrism::Page
    
    element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"
    element :homeBar, :id, "ember17"
    element :myIcon, :id, "ember25"


def checkLoginSuccessful(name)
    expect(userName.text).to eql name
    expect(homeBar.text).to eql "Início"
    expect(myIcon.text).to eql "Eu"
    end
end