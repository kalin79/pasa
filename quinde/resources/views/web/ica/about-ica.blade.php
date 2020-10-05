@extends('layouts.ica.layout-ica')
@section('meta')
    <title>NOSOTROS | C.C El Quinde Shopping Plaza Ica</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="3">
@endsection
@section('contenido')
    <main class="main">
        <section class="about-banner">
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-about">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div><span class="line-bar"></span>
            <div class="pursue"><a href="#about-section">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div>
        </section>
        <section class="section about-section" id="about-section">
            <div class="container">
                <div class="about-info my-2">
                    <h3 class="subtitle subtitle--medium">NOSOTROS</h3>
                    <div id="data_nosotros"></div>
                </div>
                <div class="about-location mt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="subtitle subtitle--medium">DÓNDE ESTAMOS</h3><p class="mb-4">El Quinde Ica Av. de los Maestros, Ica 11000.</p>
                        </div>
                        <div class="col-md-8">
                            <div class="embed-container"><iframe src="//www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3870.0470504747213!2d-75.74188158462141!3d-14.074398990139281!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9110e2ec5f515db5%3A0x6fabc73b25a5aa2e!2sEl+Quinde+Shopping+Plaza+Ica!5e0!3m2!1ses-419!2spe!4v1549912204657" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe></div>
                        </div>
                    </div>
                </div>
                <div class="about-directions mt-5">
                    <h3 class="subtitle subtitle--medium mb-0">HORARIO DE ATENCIÓN</h3>
                    <div class="row mt-4">
                        <div class="col-12">
                            <div class="row table-horarios" id="table_horarios"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection
