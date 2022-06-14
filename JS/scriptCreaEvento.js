window.onload = main;

function main(){

    compruebaSesion();

document.getElementById('creaEvento').addEventListener("submit",creaEvento,false);

}

function creaEvento(event){
    event.preventDefault();
    let titulo_evento = document.getElementById('titulo_evento').value;
    let cuerpo_evento = document.getElementById('cuerpo_evento').value;
            
    $.ajax({
        type:"POST",
        url: "PHP/eventos.php",//se modifica la ruta
        data: {
            'funcion':'setEventos','titulo_evento' : titulo_evento, 'cuerpo_evento':cuerpo_evento
        },
        success : function(evento){
            alert("Evento insertado con exito");
            
            $.ajax({
                type:"POST",
                url: "PHP/eventos.php",
                data: {'funcion':'getEventos'},
                dataType: "JSON",
                success : function(eventos){
        
                    //console.log(eventos);
                    if(1==1 || eventos.status === "success"){//mismo caso que instalaciones, conviene quitar el if
        
                       // console.log("success");
        
                        sessionStorage.setItem("eventos", JSON.stringify(eventos));
        
                    }else{
                        alert("error");
                    }
                },
                error : function(XHR, status){
                     alert("No se ha podido conectar con la base de datos para obtener las eventos");
                }
            })

            location.href="eventosPresidente.html";
            
        },
        error : function(xhr,ajaxOptions, thrownError){
            alert(xhr.status);
            alert(thrownError);
        }
    })
}