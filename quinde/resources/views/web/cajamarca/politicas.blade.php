@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
    <title>Politica de Privacidad :: Cajamarca | C.C El Quinde Shopping Plaza Cajamarca</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="4">
@endsection
@section('contenido')
<style>
#cbx-campanas {
	width: 100%;
	border: 1px solid #222222;
	padding: 1rem;
	font-size: 14px;
	margin-top: 1.5rem;
}
#secccionPoliticas .box-ul{
	padding-top: 2rem;
}
#secccionPoliticas .box-ul ul{
	margin: 0;
	padding: 0;
	list-style: none;
}
#secccionPoliticas .box-ul ul li{
	padding: .5rem;
}
#secccionPoliticas .box-ul ul li a{
	font-family: 'Gotham-Bold';
	font-size: 12px;
    color: #3B1F00;
    text-decoration: none;
    line-height: 1.85em;
}
#secccionPoliticas .box-title{
	padding: 1.5rem 0 1rem
}
#secccionPoliticas h1{
	margin: 0;
	padding: 0;
    text-align: left;
    color: #1d8649;
    font-size: 1.25rem;
}
#secccionPoliticas{
    padding-bottom: 3rem;
}
#secccionPoliticas .description ul{
    list-style: circle;
    padding-left: 3rem;
}

#secccionPoliticas .description p{
    text-align: justify;
    padding-bottom: 1rem;
    font-size: .85rem;
    line-height: 1.75em;
}
#secccionPoliticas .description h2{
    color: #1d8649;
    font-family: 'Gotham-Bold';
    font-size: 1.05rem;
    padding-bottom: 1rem;
}
</style>
    <main class="main">
        <section class="section-gutter-top height-0"></section>
            <div class="container" id="secccionPoliticas">
                
                <div class="row">
                <div class="col-xs-12 col-sm-5 col-lg-3">
                        <div class="box-ul">
                            <ul>
                                <li>
                                    <a href="/cajamarca/terminos-condiciones">POLÍTICA DE PRIVACIDAD > </a>
                                </li>
                                <li>
                                    <a href="javascript:vod(0)" style="cursor:none">LEGALES DE CAMPAÑA</i></a>
                                    <select id="cbx-campanas">
                                        <option value="/cajamarca/terminos-condiciones/">Seleccionar </option>
                                        <option value="/cajamarca/terminos-condiciones/milhorasdelocura">1000 HORAS DE LOCURA</option>
                                        <option value="/cajamarca/terminos-condiciones/lachozadelaanaconda">La Choza De La Anaconda</option>
                                        <!-- <option value="/tyc-webs-pasa/?camp=dona">Dona Cariño</option> -->
                                        <!-- <option value="/terminos-condiciones/?camp=personal-shopper" >Personal Shopper</option> -->
                                        <!-- <option value="/tyc-webs-pasa/?reapertura">Reapertura malls</option> -->
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <?php if ( (!isset($_camp)) || (empty($_camp))) { ?>
                        <div class="col-xs-12 col-sm-7 col-lg-9">
                            <div class="box-title">
                                <h1>Politica de Privacidad</h1>
                            </div>
                            <div class="description">
                                <p>
                                    Por el presente documento, nuestros clientes (en adelante denominados los “USUARIOS”), autorizan a INMOBILIARIA EL QUINDE S.A.C. empresa administradora del Centro Comercial El Quinde Shopping Plaza en la ciudad de Ica y EL QUINDE SHOPPING PLAZA S.A.C., empresa administradora del Centro Comercial El Quinde Shopping Plaza en la ciudad de Cajamarca, en adelante ambas denominadas en su conjunto como “LA EMPRESA”, al tratamiento de sus datos personales, de acuerdo con lo determinado en la siguiente Política de Privacidad:
                                </p>
                                <h2>Definición de Datos Personales:</h2>
                                <p>
                                    Es toda información que pueda identificar a una persona natural o que la hace identificable a través de medios que pueden ser razonablemente utilizados. Los datos sensibles son datos personales constituidos por datos biométricos que por sí mismos pueden identificar al titular; datos referidos al origen racial y étnico; ingresos económicos, opiniones o convicciones política, religiosas, filosóficas o morales; afiliación sindical; e información relacionada a la salud o a la vida sexual. 
                                </p>
                                <p>
                                    LA EMPRESA podrá recopilar diferentes datos personales y datos sensibles a través de nuestros canales digitales (web, correo electrónico, redes sociales, QR, encuestas de satisfacción, concursos, wifi, etc.) y físicos (cupones, registros, etc.), de los USUARIOS, los cuales serán almacenados en sus correspondientes bancos de datos.
                                </p>
                                <p>
                                    LA EMPRESA recopila información relacionada de las visitas realizadas por los USUARIOS en su página web para la finalidad indicada en esta Política. La información recopilada puede incluir detalles respecto a las sub-páginas accedidas en el sitio web de LA EMPRESA y las páginas que dirigieron al usuario a nuestra página web, así como información relacionada al navegador usado y la ubicación de los USUARIOS. Esta información permite ofrecer una mejor navegación al determinar aspectos tales como el formato a emplear en nuestra página web, los productos y servicios que podemos brindar de manera virtual, y la solución de problemas que pueda presentar el sitio web para determinados USUARIOS.
                                </p>
                                <p>
                                    Al momento que los USUARIOS registran sus datos personales requeridos en los formularios del sitio web, a través de formularios de campañas, cupones físicos, o demás formas en que se requiera sus datos, garantizan la exactitud, veracidad y vigencia de la información proporcionada. LOS USUARIOS reconocen que al suministrar su información y al aceptar la Política de Privacidad a la que será derivado en cada formulario web, registro físico, etc., están otorgando su consentimiento expreso para que LA EMPRESA trate sus datos personales según las finalidades descritas en este documento y de acuerdo con lo determinado en la Ley 29733 – Ley de Protección de Datos Personales, y su respectivo Reglamento.
                                </p>
                                <h2>Finalidad del tratamiento de datos personales:</h2>
                                <p>
                                    Los datos personales recopilados serán conservados por LA EMPRESA por el plazo que se considere necesario para el cumplimiento de las finalidades descritas y/o por el tiempo que indique alguna norma específica al respecto. Asimismo, los datos personales podrán ser cancelados a solicitud de los USUARIOS, salvo disposición normativa en contrario.
                                </p>
                                <p>
                                    La recopilación por medios digitales y/o físicos que efectúa LA EMPRESA de los datos de los USUARIOS tiene la siguiente finalidad:
                                    Proporcionar al USUARIO una experiencia personalizada en la red, el mantenimiento de la relación eventualmente establecida entre ambos, enviar al USUARIO información comercial, promocional y/o publicidad con relación a las campañas, promociones y servicios brindados por LA EMPRESA. El contacto podrá realizarse a través de los siguientes medios: envío de mensajes de texto a celular, de mensajes electrónicos masivos o volantes/folletos a la dirección indicada, así como la gestión, administración, prestación, ampliación y mejora de los servicios a los que los USUARIOS decidan suscribirse, darse de alta o utilizar. De igual forma, a la adecuación de dichos servicios a las preferencias y gustos de los USUARIOS.
                                </p>
                                <p>
                                    En ninguna circunstancia, el tratamiento de los datos personales de los USUARIOS se extenderá a una finalidad distinta a aquellas para las que fueron recopilados. De requerir tratar los datos personales para un fin diferente o adicional para el que originalmente se otorgó el consentimiento, LA EMPRESA se contactará con los USUARIOS y obtendrá el consentimiento de éstos de manera previa.
                                </p>
                                <h2>Consentimiento:</h2>
                                <p>
                                    La obtención del consentimiento libre, previo, expreso inequívoco e informado es indispensable para que LA EMPRESA pueda dar tratamiento a los datos personales de los USUARIOS. Así pues, LA EMPRESA informará siempre a los USUARIOS de manera previa a la recopilación digital y física de sus datos personales sobre las finalidades para las que estos serán tratados.
                                </p>
                                <p>
                                    Los USUARIOS otorgan su consentimiento para que LA EMPRESA realice el tratamiento de sus datos personales según las finalidades contempladas en cada formulario web, registro físico, etc., que corresponda y de acuerdo con lo determinado en la Ley 29733 – Ley de Protección de Datos Personales, y su respectivo Reglamento.
                                </p>
                                <h2>Transferencia de información a terceros:</h2>
                                <p>
                                    Teniendo en cuenta las finalidades, LA EMPRESA podrá transferir los datos personales de los USUARIOS a sus empresas vinculadas y/o socios estratégicos con similar actividad, dentro y fuera del país, para cumplir con las finalidades precitadas y en tanto los USUARIOS no revoquen la presente autorización. 
                                </p>
                                <p>
                                    LA EMPRESA en cumplimiento de imperativos legales y/o requerimiento judicial, puede encontrarse en la necesidad de compartir los datos personales de los USUARIOS con juzgados y otras autoridades para cumplir con procedimientos judiciales o de requerimientos de una autoridad pública.
                                </p>
                                <h2>Tratamiento de datos personales de menores de edad:</h2>
                                <p>
                                    LA EMPRESA comprende la importancia de proteger la privacidad de los menores de edad, especialmente en un entorno web. Por tal motivo LA EMPRESA no llevará a cabo el tratamiento de datos personales relativos a menores de edad. En el supuesto que se tenga conocimiento que los datos personales recopilados corresponden a un menor de edad, se adoptarán las medidas oportunas para su eliminación y advertencia del ingreso de estos datos en nuestros formularios a las autoridades que correspondan.
                                </p>
                                <h2>Plazo de conservación:</h2>
                                <p>
                                    Los datos personales recopilados serán conservados por LA EMPRESA por el plazo que se considere necesario para el cumplimiento de las finalidades descritas y/o por el tiempo que indique la norma específica al respecto. Asimismo, los datos personales podrán ser cancelados a solicitud de los USUARIOS, salvo disposición normativa en contrario.
                                </p>
                                <h2>Medidas adoptadas para la protección de los datos personales:</h2>
                                <p>
                                    LA EMPRESA ha adoptado las medidas de seguridad exigidas por el ordenamiento jurídico y se compromete a tratar los datos personales como información confidencial a fin de prevenir e impedir el acceso o divulgación no autorizada y asegurar el uso apropiado de la información.
                                </p>
                                <h2>Derechos de información, revocatoria y derechos ARCO:</h2>
                                <p>
                                    Los USUARIOS cuentan con una serie de derechos sobre sus datos personales contemplados en la legislación de la materia, que pueden ejercer en cualquier momento dependiendo de su voluntad, los cuales se mencionan a continuación:
                                </p>
                                <ul>
                                    <li>
                                        <p>
                                            <strong>Información:</strong> Derecho del titular de datos personales para ser informado sobre la finalidad para la cual sus datos personales están siendo tratados, así como los destinatarios de los mismos y el banco de datos donde se almacena sus datos personales.
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                        <strong>Revocatoria:</strong> Los USUARIOS podrán revocar su consentimiento brindado para el tratamiento de sus datos personales en cualquier momento, sin justificación previa y sin que le atribuyan efectos retroactivos.
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                        <strong>Acceso:</strong> Los USUARIOS tienen derecho a obtener la información relativa a sus datos personales objeto de tratamiento, así como la forma, motivos y condiciones de su recopilación.
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                        <strong>Rectificación:</strong> Los USUARIOS podrán solicitar la corrección de aquellos datos que se encuentren errados o resulten inexactos o falsos.
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                        <strong>Cancelación:</strong> Los USUARIOS podrán solicitar la supresión de sus datos personales de las bases de datos de LA EMPRESA cuando ya no sean necesarios o pertinentes para la finalidad para los que fueron recopilados, el plazo para su tratamiento hubiere vencido, hayan revocado su consentimiento o cuando no sean tratados conforme a la legislación de la materia.
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                        <strong>Oposición:</strong> Los USUARIOS tienen derecho a que no se traten sus datos personales o se cese su tratamiento cuando no haya prestado su consentimiento para el mismo o cuando estos se hubieran obtenido de una fuente de acceso público. Cuando el usuario hubiera prestado su consentimiento podrá oponerse al tratamiento de sus datos por motivos fundados y legítimos.
                                        </p>
                                    </li>
                                </ul>
                                <h2>Blogs o foros:</h2>
                                <p>LA EMPRESA no se hace responsable por las publicaciones realizadas por los USUARIOS dentro de los blogs o foros. Las opiniones registradas en los blogs o foros no reflejan la posición de LA EMPRESA y son responsabilidad únicamente de los USUARIOS que realicen la publicación.</p>
                                <p>Asimismo, LA EMPRESA no se hará responsable de los daños y perjuicios por las publicaciones hechas por los USUARIOS en los blogs o foros que pudieran ocasionar la reproducción, distribución, publicación de fotos, videos o comentarios que se encuentren bajo la protección de los derechos de propiedad intelectual de terceros.</p>
                                <p>Los USUARIOS ceden en favor de LA EMPRESA los derechos que estos tuviesen sobre sus comentarios, fotos o videos publicados en los blogs o foros. LA EMPRESA puede emplear la información para los fines que considere pertinentes.</p>
                                <p>LA EMPRESA se reserva el derecho de eliminar a su discreción aquellas publicaciones que se hagan en sus foros, blogs y el contenido que se encuentre en su página web sin previo aviso.</p>
                                <h2>Redes sociales:</h2>
                                <p>A EMPRESA hace empleo de las redes sociales para otorgar una experiencia de navegación completa a los USUARIOS; sin embargo, no se hace responsable por la información contenida en las redes sociales a las que los USUARIOS puedan acceder por medio de la página web del centro comercial https://www.elquinde.pe/ perteneciente a LA EMPRESA. Las redes sociales de las que participan tanto LA EMPRESA como los USUARIOS cuentan con sus propias políticas de privacidad a las que deberán sujetarse todos los USUARIOS de tales redes. Por las mencionadas razones, le recomendamos revisar las Políticas de Privacidad de las redes sociales para asegurarse encontrarse de acuerdo con éstas.</p>
                                <p>Asimismo, LA EMPRESA se libera de toda responsabilidad que pueda ocasionar el incorrecto funcionamiento y/o el inadecuado uso de las redes sociales, la falsedad del contenido y la ilicitud de la forma en que éste fue obtenido, así como de los daños y perjuicios que se pudieran generar por las publicaciones en estas redes, siendo los únicos responsables los USUARIOS de la red social que hayan realizado tales acciones.</p>
                                <h2>Cambios a la Política de Privacidad:</h2>
                                <p>LA EMPRESA se reserva el derecho de realizar los cambios que considere pertinentes a su Política de Privacidad en cualquier momento sin aviso previo, razón por la cual lo invitamos a revisar nuestra Política periódicamente.</p>
                                <p>Se reconoce haber leído, comprendido los puntos señalados en la presente Política y como medio para otorgar el consentimiento para el tratamiento de los datos personales para los fines que se especificaron en los párrafos anteriores.</p>
                                <h2>Flujo Transfronterizo de Datos Personales</h2>
                                <p>LA EMPRESA garantiza el nivel adecuado de protección de los Datos Personales para el flujo transfronterizo de Datos Personales, con un mínimo de protección equiparable a lo previsto por la Ley 29733 – Ley de Protección de Datos Personales, y su respectivo Reglamento.</p>
                                <p>En ese sentido transfiere los datos personales cuyo acceso ha sido brindado por los USUARIOS en condición de titular de la Información al tercero “Amazon”, con sede en el Norte de Virginia, Región Este de los Estados Unidos de Norte América.</p>
                                <p>Es importante resaltar que la única finalidad de dicha transferencia fuera de territorio peruano es el almacenamiento, conservación y mantenimiento de los datos personales, y en ningún caso su circulación o uso fuera de territorio peruano."  </p>
                            </div>
                        </div>
                    <?php } ?>
                    <?php if ( (isset($_camp)) && ($_camp == 'milhorasdelocura')) { ?>
                        <div class="col-xs-12 col-sm-7 col-lg-9">
                            <div class="box-title">
                                <h1>CAMPAÑA “1000 HORAS DE LOCURA”</h1>
                            </div>
                            <div class="description">
                                <p>
                                Campaña válida del 04 de septiembre al 15 de octubre de 2020. 
                                Valido en los siguientes Centros Comerciales de Parque Arauco: Larcomar, MegaPlaza Independencia, 
                                MegaPlaza Chorrillos, MegaPlaza Huaral, MegaPlaza Barranca, MegaPlaza Cañete, MegaPlaza Jaén, 
                                MegaPlaza Villa El Salvador I (Av. Lima), MegaPlaza Villa El Salvador II (Av. 1ro Mayo), 
                                El Quinde Cajamarca, InOutlet Faucett, InOutlet Lurín, Viamix Chorrillos, Viamix Colonial y 
                                Viamix Malvinas, dentro del rango de horarios específico de cada uno. 
                                Campaña sujeta a cambios sin previo aviso según las nuevas disposiciones gubernamentales 
                                que puedan surgir durante el estado de emergencia a nivel nacional. No participan menores de edad. 
                                Descuentos en marcas seleccionadas. 
                                Para ver descuentos ingresar a: <a href="https://www.elquinde.pe/cajamarca/milhorasdelocura">www.elquinde.pe/cajamarca/milhorasdelocura</a>
                                Imágenes referenciales.
                                </p>
                            </div>
                        </div>
                    <?php } ?>
                    <?php if ( (isset($_camp)) && ($_camp == 'lachozadelaanaconda')) { ?>
                        <div class="col-xs-12 col-sm-7 col-lg-9">
                            <div class="box-title">
                            <h1>MECÁNICA:</h1>
                            </div>
                            <div class="description">
                                <p>
                                •	Sigue la página de el @QuindeCajamarca y @lachozadelaanacondafastfood
                                </p>
                                <p>
                                •	Etiqueta 2 personas con quién compartirías esta ronda amazónica.    
                                </p>
                                <p>
                                •	Completa tus datos en el siguiente link <a href="https://bit.ly/3jg18gi">https://bit.ly/3jg18gi</a> para participar
                                </p>

                                <h2>PREMIO</h2>
                                <p>
                                Se sorteará 1 “Ronda Amazónica” del restaurante “La Choza de la anaconda”. El premio incluye Mix Amazónico con 2 bebidas de 12 onz de Cocona. Premio válido SOLO para recojo en tienda.
                                </p>
                                <h2>ANUNCIO DE GANADOR:</h2>
                                <p>
                                El ganador se anunciará el día lunes 5 de octubre del 2020 a través del fanpage del Quinde Cajamarca.
                                </p>
                                <h2>ENTREGA DEL PREMIO:</h2>
                                <p>
                                - El ganador deberá contactarse por inbox (máximo 24 horas después de haber anunciados los ganadores), de lo contrario, se realizará otro sorteo que reemplazará al anterior ganador.
                                </p>
                                <p>
                                - El ganador tiene 48 horas para consumir su premio luego de contactar al CC
                                </p>
                                <p>
                                - La entrega del premio será coordinada por interno.
                                </p>
                                <p>
                                - El ganador deberá presentar su DNI o Carnet de Extranjería al momento del recojo del premio.
                                </p>
                                <p>
                                - La entrega del premio es personal e intransferible.
                                </p>
                                <h2>CONDICIONES Y RESTRICCIONES:</h2>
                                <p>
                                - Se realizará un sorteo dentro de todos los participantes que cumplan con lo anteriormente estipulado.
                                </p>
                                <p>
                                - El premio no podrá ser canjeado por dinero en efectivo, ni ningún otro bien o servicio.
                                </p>
                                <p>
                                - No participan colaboradores de las empresas que pertenecen al grupo económico Parque Arauco, personal de seguridad (Securitas), ni limpieza (OL Servicios Generales), personal de las tiendas del Centro Comercial (ni familiares de primer y segundo grado de los trabajadores del Centro Comercial), ni personal administrativo de EL QUINDE SHOPPING PLAZA S.A.C.
                                </p>
                                <p>
                                - Válido solo para Cajamarca
                                </p>
                                <p>
                                - Fecha de participación: del 29 de Setiembre al 4 de Octubre del 2020.
                                </p>
                                <p>
                                - Fecha del sorteo y anuncio del ganador: lunes 5 de octubre del 2020.
                                </p>
                            </div>

                        </div>
                    <?php } ?>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
    <script>
        var selectElement = document.getElementById('cbx-campanas');
        selectElement.addEventListener('change', (event) => {
            var url = event.target.value;
            window.location = url;
        });
    </script>
@endsection
