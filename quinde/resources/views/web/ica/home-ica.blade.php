@extends('layouts.ica.layout-ica')
@section('meta')
    <title>INICIO | C.C El Quinde Shopping Plaza Ica</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="1">
@endsection
@section('contenido')

    <style>
        .box-button{
			background: #1f8f36;
			border-radius: 50%;
			width: 100px;
			height: 100px;
			position: fixed;
			top: 35%;
			right: 1%;
			display: flex;
			justify-content: center;
			flex-direction: column;
			z-index: 9999;
			transition: .5s ease background;
		}
		.box-button:hover{
			background: #fbd700;
		}
		.box-button a {
			color: #fff;
			font-size: 12px;
			font-family: 'Gotham-Book',sans-serif;
			line-height: 1.25em;
			display: block;
			text-align: center;
			text-decoration: none;
		}
		.box-button:hover a{
			color: #1f8f36;
        }
        .banner-full{
            padding-top: 136px;
        }
        .banner-full a {display:block}
    </style>
    <link rel="stylesheet" href="https://inoutlet.pe/milhorasdelocura/node_modules/owl.carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="https://inoutlet.pe/milhorasdelocura/node_modules/owl.carousel/dist/assets/owl.theme.default.min.css" />
    <main class="main">
        <div class="box-button">
            <a href="https://www.elquinde.pe/juntosnosprotegemos-locatarios" id="btn-ica-home-juntos-locatarios">
                ¿Tienes <br>
                un local con <br>
                nosotros? <br>
                Haz Click <br>
                aquí
            </a>
        </div>
        <!-- Ocultamos los 
        <section class="section-banner home-banner">
            <div class="shadow-home"></div>
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-home">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div>
            <div class="container-birds" style="display:none">
                <div class="bird-content">
                    <div class="bird bird-1"></div>
                </div>
                <div class="bird-content">
                    <div class="bird-face-right bird-2"></div>
                </div>
            </div>
            <div class="pursue"><a href="#home-section">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div><span class="line-bar bt"></span>
        </section>
        -->
        <div class="banner-full">
            <div class="owl-carousel owl-theme owl-carousel-home">
                <!-- <a href="https://www.elquinde.pe/cajamarca/milhorasdelocura" id="btn-banner-reapertura">
                    <img src="{{ asset('assets/images/ofertas/Banner_web_Quinde.png') }}" alt="">
                </a> -->
                <a href="https://www.elquinde.pe/juntosnosprotegemos" id="btn-banner-reapertura">
                    <img src="https://www.elquinde.pe/storage/5f1786b065961_reapertura.png" alt="Reapertura">
                </a>
            </div>
        </div>
        <section class="section home-sections" id="home-section">
            <div class="card-section-home mt-5">
                <div class="card-section-home__image wow bounceInRight"><img class="img-cover" src="{{asset('assets/images/storage/section-home-1.jpg')}}"></div>
                <div class="card-section-home__data wow bounceInLeft bg-color7">
                    <div class="content-title xs-center">
                        <div class="xs-relative">
                            <div class="about-leafs-left"></div>
                            <h3 class="section__title color2"><span class="section__subtitle">Nuestras</span> Tiendas</h3>
                            <div class="about-leafs-right"></div>
                        </div>
                        <a class="btn btn--theme3 card-content__link mt-3" href="{{url('ica/tiendas')}}">Conócelas aquí</a>
                    </div>
                </div>
            </div>
            <div class="card-section-home mt-5">
                <div class="card-section-home__image wow bounceInRight"><img class="img-cover" src="{{asset('assets/images/storage/homePROMOCIONES.PNG')}}"></div>
                <div class="card-section-home__data wow bounceInLeft bg-color5">
                    <div class="content-title xs-center">
                        <div class="xs-relative">
                            <div class="about-leafs-left"></div>
                            <h3 class="section__title color3"><span class="section__subtitle">Ofertas y</span> Promociones</h3>
                            <div class="about-leafs-right"></div>
                        </div>
                        <a class="btn btn--theme3 card-content__link mt-3" href="{{url('ica/promociones')}}">Conócelas aquí</a>
                    </div>
                </div>
            </div>
            <div class="card-section-home mt-5 mb-5">
                <div class="card-section-home__image wow bounceInRight"><img class="img-cover" src="{{asset('assets/images/storage/homeEVENTOS.PNG')}}"></div>
                <div class="card-section-home__data wow bounceInLeft bg-color3">
                    <div class="content-title xs-center">
                        <div class="xs-relative">
                            <div class="about-leafs-left"></div>
                            <h3 class="section__title color4 py-3">Eventos</h3>
                            <div class="about-leafs-right"></div>
                        </div>
                        <a class="btn btn--theme3 card-content__link mt-3" href="{{url('ica/eventos')}}">Conócelos aquí</a>
                    </div>

                </div>
            </div>
        </section>
        <section class="section home-billboard bg-grey-color max-1920">
            <div class="container pd-bill">
                <h3 class="section__title color5 xs-center"><span class="section__subtitle">LA</span> CARTELERA</h3>
                <div class="content-billboards mt-4">
                    <div class="swiper-container swiper-items" id="swiper-billboards-home">
                        <div class="swiper-wrapper"></div>
                        <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                        <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
                    </div>
                </div>
                <div class="xs-center"><a class="btn btn--theme3" href="{{url('ica/carteleras')}}">REVÍSALA AQUÍ</a></div>
            </div>
            <div class="bg-home-bottom bg-home-bottom-footer"></div>
        </section>
    </main><span class="line-bar"></span>


   <!--
    <main class="main">
        <section class="section-banner home-banner">
            <div class="shadow-home"></div>
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-home">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div>
            <div class="pursue"><a href="#home-section">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div><span class="line-bar bt"></span>
        </section>
        <section class="section home-sections" id="home-section">
            <div class="card-home">
                <div class="card-home__image">
                    <div class="bg-image" style="background-image: url('{{asset('assets/images/storage/section-home-1.jpg')}}')"></div>
                </div>
                <div class="card-home__data box-card-home box-card-home-stores bg-color7">
                    <div class="box-card-home-stores"></div>
                    <div class="card-content">
                        <h3 class="section__title color2">
                            <div class="about-leafs-left"></div><span class="section__subtitle">Nuestras</span> Tiendas<div class="about-leafs-right"></div>
                        </h3><a class="btn btn--theme3 card-content__link" href="{{url('ica/tiendas')}}">Conócelas aquí</a>
                    </div>
                    <div class="bg-home-bottom bg-home-bottom-our-stores"></div>
                </div>
            </div>
            <div class="card-home">
                <div class="card-home__image">
                    <div class="bg-image" style="background-image: url('{{asset('assets/images/storage/homePROMOCIONES.PNG')}}')"></div>
                </div>
                <div class="card-home__data card-home__data box-card-home box-card-home-prom bg-color5">
                    <div class="card-content">
                        <h3 class="section__title color3">
                            <div class="about-leafs-left"></div><span class="section__subtitle">Ofertas y</span> Promociones<div class="about-leafs-right"></div>
                        </h3><a class="btn btn--theme3 card-content__link" href="{{url('ica/promociones')}}">Conócelas aquí</a>
                    </div>
                    <div class="bg-home-bottom bg-home-bottom-prom"></div>
                </div>
            </div>
            <div class="card-home">
                <div class="card-home__image">
                    <div class="bg-image" style="background-image: url('{{asset('assets/images/storage/homeEVENTOS.PNG')}}')"></div>
                </div>
                <div class="card-home__data card-home__data box-card-home box-card-home-events bg-color3">
                    <div class="card-content">
                        <h3 class="section__title color4">
                            <div class="about-leafs-left"></div> Eventos<div class="about-leafs-right"></div>
                        </h3><a class="btn btn--theme3 card-content__link" href="{{url('ica/eventos')}}">Conócelos</a>
                    </div>
                    <div class="bg-home-bottom bg-home-bottom-events"></div>
                </div>
            </div>
        </section>
        <section class="section home-billboard bg-grey-color max-1920">
            <div class="container pd-bill">
                <h3 class="section__title color5 xs-center"><span class="section__subtitle">La</span> Cartelera</h3>
                <div class="content-billboards mt-4">
                    <div class="swiper-container swiper-items" id="swiper-billboards-home">
                        <div class="swiper-wrapper"></div>
                        <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                        <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
                    </div>
                </div>
                <div class="xs-center"><a class="btn btn--theme3" href="{{url('ica/carteleras')}}"> REVÍSALA AQUI</a></div>
            </div>
            <div class="bg-home-bottom bg-home-bottom-footer"></div>
        </section>
    </main><span class="line-bar"></span>-->
    <script src="https://inoutlet.pe/milhorasdelocura/node_modules/jquery/dist/jquery.min.js"></script>

    <script src="https://inoutlet.pe/milhorasdelocura/node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
    <script>
        $('.owl-carousel-home').owlCarousel({
            loop:false,
            margin:10,
            responsiveClass:true,
            autoplay:false,
            autoplayTimeout:5000,
            autoplayHoverPause:false,
            responsive:{
                0:{
                    items:1,
                    nav:false
                }
            }
        })
    </script>
@endsection	