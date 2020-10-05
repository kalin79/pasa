@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
    @foreach($data_tienda as $tienda)
        <title>{{$tienda->nombre}} | C.C El Quinde Shopping Plaza Cajamarca</title>
        <meta name="description" content="">
        <meta name="autor" content="La Agencia - la-agencia.pe">
        <meta name="data_tienda" content="6">
    @endforeach
@endsection
@section('contenido')
    @foreach($data_tienda as $tienda)
        <main class="main">
            <section class="section-gutter-top height-0"></section>
            <section class="store-internal">
                <div class="container">
                    <div class="content-stores-intermal pt-5">
                        <div class="stores-intermal-title">
                            <div id="title-store"><a href="{{url('cajamarca/tiendas')}}">TIENDAS</a><span id="subTitle-store"> > {{$tienda->nombre}}</span></div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row mb-4 xs-center sm-left">
                                    <div class="col-sm-4">
                                        <div class="logoInternal">
                                            @if($tienda->logo)
                                                <img class="xs-m-auto" id="logoInternal" src="{{asset('storage/'.$tienda->logo)}}" alt="">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-sm-8 mt-4 mt-sm-0">
                                        <h4 class="internal-title">{{$tienda->nombre}}</h4>
                                        @if($tienda->descripcion)
                                            <div class="internal-subtitle">DESCRIPCIÓN:</div>
                                            <div class="internal-text"><span><?php echo $tienda->descripcion ?></span></div>
                                        @endif
                                        @if($categoria)
                                            <div class="internal-subtitle">CATEGORÍA:</div>
                                            @foreach($categoria as $c)
                                                <div class="internal-text"><span>{{$c->nombre}}</span></div>
                                            @endforeach
                                        @endif
                                        @if($tienda->nivel)
                                            <div class="internal-subtitle">NIVEL:</div>
                                            @if ($tienda->nivel =='1')
                                                <?php $d_nivel = '1er Nivel'; ?>
                                            @elseif($tienda->nivel =='2')
                                                <?php $d_nivel = '2do Nivel'; ?>
                                            @elseif($tienda->nivel =='3')
                                                <?php $d_nivel = '3er Nivel'; ?>
                                            @endif
                                            <div class="internal-text"><span id="nivelDetail">{{$d_nivel}}</span></div>
                                        @endif
                                        @if($tienda->ubicacion)
                                            <div class="internal-subtitle">UBICACIÓN:</div>
                                            <div class="internal-text"><span id="nivelDetail">{{$tienda->ubicacion}}</span></div>
                                        @endif
                                        @if(count($horario) > 0)
                                            <div class="internal-subtitle">HORARIOS:</div>
                                            @foreach($horario as $h)
                                                <div class="internal-text"><span>{{$h->dia}} {{\Carbon\Carbon::parse($h->hora_ini)->format('H:i')}} - {{\Carbon\Carbon::parse($h->hora_fin)->format('H:i')}}</span></div>
                                            @endforeach
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="gb-internal-content">
                                    @if($tienda->imagen)
                                        <img class="gb-internal" id="bg-internal" src="{{asset('storage/'.$tienda->imagen)}}" alt="">
                                    @else
                                        <img class="gb-internal" id="bg-internal" src="https://via.placeholder.com/594x390?text=No+Imagen " alt="">
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="text-center mt-5 mb-lg-0"><a class="btn--back mb-5" href="{{url('cajamarca/tiendas')}}">Volver al listado</a></div>
                    </div>
                </div>
            </section>
        </main><span class="line-bar"></span>
    @endforeach
@endsection