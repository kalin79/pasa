@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
  @foreach($data_cartelera as $cartelera)
    <title>{{$cartelera->titulo}} | C.C El Quinde Shopping Plaza Cajamarca</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="11">
  @endforeach
@endsection
@section('contenido')
  @foreach($data_cartelera as $cartelera)
    <main class="main">
      <section class="billboard-internal-banner">
        <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-billboard-internal">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              @if ($cartelera->video_background)
                <iframe src="{{$cartelera->video_background}}" frameborder="0" allowfullscreen=""></iframe>
              @else
                <div class="bg-image" style="background-image: url('{{asset('storage/'.$cartelera->img_background)}}');"></div>
              @endif
            </div>
          </div>
        </div><span class="line-bar"></span>
      </section>
      <section class="section billboard-internal-section" id="billboard-internal-section">
        <div class="container">
          <div class="row">
            <div class="col-lg-10 xs-mx-auto">
              <div class="row">
                <div class="col-12 mb-4">
                  <div class="breadcrumb"><a href="{{url('cajamarca/carteleras')}}">CARTELERA</a> > <span class="text-breadcrumb" id="title_breadcrumb">{{$cartelera->titulo}}</span></div>
                </div>
              </div>
              <div class="row" id="item_billboard">
                <div class="col-md-5 col-xxl-4 internal-border mb-5">
                  <article class="card-item">
                    <div class="card">
                      <div class="card__image">
                        <div class="bg-image" style="background-image: url('{{asset('storage/'.$cartelera->img_presentacion)}}');"></div>
                      </div>
                      @if($cartelera->estreno == '1')
                        <div class="card__footer"><span>Estreno</span></div>
                      @endif
                    </div>
                  </article>
                </div>
                <div class="col-md-7 col-xxl-8">
                  <div class="billboard-internal__description">
                    <h1 class="title-billboard">{{$cartelera->titulo}}</h1>
                    @if ($cartelera->sinopsis)
                      <label class="ref">Sinopsis</label>
                      <p>{{$cartelera->sinopsis}}</p>
                    @endif
                    @if ($cartelera->director)
                      <label class="ref">Director</label>
                      <p>{{$cartelera->director}}</p>
                    @endif
                    @if(count($actores) > 0)
                      <label class="ref">Actores</label>
                      @foreach($actores as $a)
                        <p>{{$a->nombre}}</p>
                      @endforeach
                    @endif
                    @if ($cartelera->duracion)
                      <label class="ref">Duración</label>
                      <p>{{$cartelera->duracion}}</p>
                    @endif
                    @if ($cartelera->idioma)
                      <label class="ref">Idioma</label>
                      @if($cartelera->idioma == 1)
                        <p>Sub</p>
                      @elseif($cartelera->idioma == 2)
                        <p>Dob</p>
                      @elseif($cartelera->idioma == 3)
                        <p>Sub | Dob</p>
                      @endif
                    @endif
                  </div>
                </div>
              </div>
              <div class="row mt-5">
                <div class="col-12 mt-5 xs-center"><a class="btn btn--theme3" href="{{url('cajamarca/carteleras')}}">Volver</a></div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main><span class="line-bar"></span>
  @endforeach
@endsection