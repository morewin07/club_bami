window.onload = main;

function main(){

    compruebaSesion();

document.getElementById('creaNoticia').addEventListener("submit",creaNoticia,false);

}

function creaNoticia(event){
    event.preventDefault();
    let titulo_noticia = document.getElementById('titulo_noticia').value;
    let cuerpo_noticia = document.getElementById('cuerpo_noticia').value;
            
    $.ajax({
        type:"POST",
        url: "PHP/noticias.php",//se modifica la ruta
        data: {
            'funcion':'setNoticias','titulo_noticia' : titulo_noticia, 'cuerpo_noticia':cuerpo_noticia
        },
        success : function(){
            alert("noticia insertada con exito");
            $.ajax({
                type:"POST",
                url: "PHP/noticias.php",
                data: {'funcion':'getNoticias'},
                dataType: "JSON",
                success : function(noticias){
        
                    //console.log(noticias);
                    if(1==1 || noticias.status === "success"){//mismo caso que instalaciones, conviene quitar el if
        
                       // console.log("success");
        
                        sessionStorage.setItem("noticias", JSON.stringify(noticias));
        
                    }else{
                        alert("error");
                    }
                },
                error : function(XHR, status){
                     alert("No se ha podido conectar con la base de datos para obtener las noticias");
                }
            })
            location.href="noticiasPresidente.html";
        },
        error : function(xhr,ajaxOptions, thrownError){
            alert(xhr.status);
            alert(thrownError);
        }
    })
}