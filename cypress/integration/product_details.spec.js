describe("testing the product page links", ()=>{

    it("going to the main page", () =>{
        cy.visit("/")
    })
    it("going to the main page, than redirect to the product page", () =>{
        cy.visit("/")
        cy.get(".products article").first().click()
        cy.contains("Giant Tea")
    })
})