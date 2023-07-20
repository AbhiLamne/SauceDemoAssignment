from robot.api.deco import library, keyword


@library
class Elements:
    @keyword
    def SpecificItem(self, value):
        xpath = "//*[@class='inventory_item']/div[2]//*[contains(text(),'" + value + "')]"

        # xpath = "//div[@class='inventory_item']/div[2]/div[1]/a/div[contains(text(),'" + value + "')]/ancestor" \
        #          "::div[@class='inventory_item_label']/following-sibling::div/button[text()='Add to cart']"
        return xpath

