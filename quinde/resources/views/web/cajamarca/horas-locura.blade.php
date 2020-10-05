@extends('layouts.milhoras')

@section('content')
<header id=headerMain>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light ">
            <a class="navbar-brand" href="https://www.elquinde.pe/">
                <picture >
                    <source srcset="{{ asset('assets/images/ofertas/logo.png') }}">
                    <img srcset="{{ asset('assets/images/ofertas/logo.png') }}" alt="El Quinde">
                </picture>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.elquinde.pe/cajamarca/tiendas">Tiendas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="https://www.elquinde.pe/cajamarca/promociones">Promociones</a>
                    </li>
                </ul>
                <div class="social" >
                    <div class="d-flex">
                        <a href="https://web.facebook.com/CCElQuindeCajamarca/?_rdc=1&_rdr" target="_blank" alt="El Quinde en Facebook">
                            <i class="icofont-facebook"></i>
                        </a>
                        <!-- <a href="https://www.instagram.com/inoutletperu/" target="_blank" alt="Larcomar en Intagran">
                            <i class="icofont-instagram"></i>
                        </a> -->
                    </div>
                </div>
                <div class="form-inline my-2 my-lg-0">
                    <button type="button" class="btn btn-primary button-general" id="btn-suscripcion">Suscríbete aquí</button>
                </div>
                
            </div>
        </nav>
    </div>
    
</header>
<section class="Slidermain" id="BannerMain">
    <div class="owl-carousel owl-theme owl-banner">
        <div class="div">
            <img src="{{ asset('assets/images/ofertas/Bannerquinde.png') }}"  class="responseImg"  alt="Mil horas de locura :: El Quinde">
        </div>
    </div>
</section>
<div class="scrollGsap">
    <milhoras></milhoras>
</div>



@endsection