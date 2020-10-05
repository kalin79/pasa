@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
    <title>CARTELERA | C.C El Quinde Shopping Plaza Cajamarca</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="12">
@endsection
@section('contenido')
    <main class="main">
        <section class="billboards-banner">
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-billboards">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div><span class="line-bar"></span>
            <div class="pursue"><a href="#billboards-section">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div>
        </section>
        <section class="section billboards-section" id="billboards-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 xs-mx-auto">
                        <div class="billboards-info my-2">
                            <h3 class="subtitle subtitle--medium">CARTELERA</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 xs-mx-auto xs-center">
                        <div class="row container-billboards"></div><button class="btn btn--theme3 mt-4" id="view_more_billboards" type="button">VER MÁS CARTELERA</button>
                    </div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection