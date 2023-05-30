const button = document.querySelector('#btn')
button.addEventListener('click',()=>{
    let userName = document.querySelector('#userName').value
    if (!userName) {
    return false
    }
    alert(`Bem vindo meu brother ${userName}`)

})