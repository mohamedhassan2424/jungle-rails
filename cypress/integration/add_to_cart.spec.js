describe("adding to cart testing", ()=>{

    it("going to the main page", () =>{
        cy.visit("/")
    })
    it("going to the main page, than redirect to the product page, then clicking on add to cart", () =>{
        cy.visit("/")
        cy.get(".products article").first().click()
        cy.contains("Giant Tea")
        cy.get(".price .button_to").click()
        cy.contains("My Cart (1)")
    })
})