const expandirBTN = document.querySelectorAll(".item_carta span");

expandirBTN.forEach((btn, index) => {
    btn.addEventListener("click", () => {
        for (let i = 0; i < expandirBTN.length; i++) {
            if(index == i) {
                expandirBTN[i].parentElement.classList.toggle("expandir");
            }
            else {
                expandirBTN[i].parentElement.classList.remove("expandir");
            }
        }
    })

})