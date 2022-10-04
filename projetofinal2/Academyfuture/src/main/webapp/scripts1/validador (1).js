function habilitar(){  
    if(document.getElementById('escolha voluntario').checked){  
        document.getElementById('escolha participante').disabled = false;  
    } else {  
        document.getElementById('escolha participante').disabled = true; 
    }  
} 