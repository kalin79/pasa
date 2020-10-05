@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
    <title>PROMOCIONES | C.C El Quinde Shopping Plaza Cajamarca</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="8">
@endsection
@section('contenido')
    <main class="main">
        <section class="promotions-banner">
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-promotions">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div><span class="line-bar"></span>
            <div class="pursue"><a href="#promo-section">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div>
        </section>
        <section class="section promotions-section setcion-up" id="promo-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 xs-mx-auto">
                        <div class="promotions-info my-2">
                            <h3 class="subtitle subtitle--medium">PROMOCIONES</h3><p>Encuentra todo lo que te gusta.<span id="fechasPromo"></span></p>
                        </div>
                    </div>
                </div>
                <div class="up-page"><a href="#promo-section">
                        <div class="up-page__container">
                            <div class="circle">
                                <div class="arrow"></div>
                            </div>
                        </div>
                    </a></div>
                <div class="row">
                    <div class="col-xl-8 xs-mx-auto xs-center">
                        <div class="container-items-cards container-promotions"></div><button class="btn btn--theme3 mt-4" id="view_more_promotions" type="button">VER MÁS PROMOCIONES</button>
                    </div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection
