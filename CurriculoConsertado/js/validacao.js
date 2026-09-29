const nome = document.querySelector("#nome")
const cpf = document.querySelector("#cpf")
const telefone = document.querySelector("#telefone")
const email = document.querySelector("#email")  
const objetivo = document.querySelector("#objetivo")
const cidade = document.querySelector("#cidade")
const sexo = document.querySelector("#sexo")
const estadoCivil = document.querySelector("#estado-civil")
const escolaridade = document.querySelector("#escolaridade")
const warn = document.querySelector("#warn")
const modal = document.querySelector("#modal")
const uf = document.querySelector("#uf")
const exp = document.querySelector("#experiencia")
const date = document.querySelector("#date")
const submit = document.querySelector("#submit")

function throwError (error){
    
    modal.showModal()
    warn.innerHTML = `<p class="warn-descripition" >${error.message}</p>`

    setTimeout(()=>{
         modal.close()
    },3000)

    
}

function inputRequerid(type){
      try {
        let result = type.value

        if(result){
            console.log(`${type.name} válido`)
            return true
        }else{
            throw new Error(`O campo '${type.name}' estar vazio!`)
        }

    } catch (error) {
        throwError(error)
        return false
    }
}


function valid(){

    //Nome
    try {
        let result = nome.value.match(/./g)

        
        if(result){
            if (result.length < 5){
              throw new Error("Nome Inválido!")
               
            }
            console.log("Nome valido")
            
           
        }else{
            throw new Error("O campo 'Nome Completo' estar vazio!")
            
        }

       
    } catch (error) {
        throwError(error)
        return false
    }

    // CPF
    try {
        let result = cpf.value.match(/./g)
        let count = 0

       

        if(result){
            result.forEach(element => {
                if (isNaN(element)){
                    throw new Error("CPF Inválido! Um CPF é composto apenas por números!!")
                }

                count++ 
            })

            if (count != 11){
                throw new Error("CPF Inválido! Número de digitos incoerente!!!")
            }
            
            console.log("CPF valido")
        }else{
            throw new Error("O campo 'CPF' estar vazio!")
        }

    } catch (error) {
        throwError(error)
        return false
    }


    // Nascimento
    if (!inputRequerid(date)) return false


    // Sexo
    if (!inputRequerid(sexo))  return false


    // Estado civil
    if (!inputRequerid(estadoCivil)) return false




    //Telefone
    try {
        
        let result = telefone.value.match(/./g)
        let count = 0

        

        if(result){
            result.forEach(element => {
                if (isNaN(element)){
                    throw new Error("Telefone Inválido! Um Telefone é composto apenas por números!!")
                }

                count++ 
            })

            if (count != 11){
                throw new Error("Telefone Inválido! Número de digitos incoerente!!!")
            }
            
            console.log("Telefone valido")
        }else{
            throw new Error("O campo 'Telefone' estar vazio!")
        }

    } catch (error) {
        throwError(error)
        return false
    }

    // E-mail
    try {
        let result = email.value.split("")

        

        if(result.length){
            let rstl = result.find((element) => element == "@")

            if (!rstl){
                throw new Error("Endereço de E-mail iválido!")
            }
            
            console.log("E-mail valido")
        }else{
            throw new Error("O campo 'E-mail' estar vazio!")
        }
    } catch (error) {
        throwError(error)
        return false
    }
    

    




    
    // Cidade 
    if (!inputRequerid(cidade)) return false

    // UF
    if (!inputRequerid(uf)) return false


    // Escolaridade
    if (!inputRequerid(escolaridade)) return false

   
    // Tempo de Experiência
    if (!inputRequerid(exp)) return false


    // Objetivo Profissional

    try {
        let result = objetivo.value

        if(result){
        

            if (!(result.length >= 20)){
                throw new Error("Quanto ao seu objetivo profissional, escreva pelo menos vinte caracteres.")
            }
            
            console.log("Objetivo Profissional valido")
        }else{
            throw new Error("O campo 'Objetivo Profissional' estar vazio!")
        }

    } catch (error) {
        throwError(error)
        return false
    }


    return true


}

submit.addEventListener("click", (e)=>{
    e.preventDefault()

    let isValidate = valid()

    if (isValidate){
        window.location.href = "confirmacao.html";
    }
})


