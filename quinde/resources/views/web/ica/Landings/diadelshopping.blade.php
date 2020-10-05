<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Día del Shopping</title>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-139323572-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-139323572-1');
	</script>
<style>
    .container {
        max-width: 1000px;
        background: rgb(235, 235, 235);
        margin: auto;

    } 
    .container img {
        width: 100%;
    }	
    #sociales{
    position: absolute;
        height: 12%;
        width: 100%;
        max-width: 1000px;
        top: 4%;
    }
    #web{
        
        display: inline-block;
        width: 50%;
        height: 100%;
        
    }
    #web a{
        display: block;
            height: 100%;
    }
    #fb{
        
         display: inline-block;
        width: 50%;
        height: 100%;
    }
    #fb a{
        display: block;
            height: 100%;
    }
</style>
</head>
<body>
    <div class="container">
		<div id="sociales"><div id="web"><a href="https://www.elquinde.pe/ica"> </a></div><div id="fb"><a href="https://www.facebook.com/CCElQuindeIca/"> </a> </div> </div>
        <img src="{{ asset('landings/ica/dia_del_shopping.png')}}" alt="ica">
      
    </div>
</body>

</html>