
@extends('layouts.ica.layout-ica')
@section('meta')
    <title>TIENDAS | C.C El Quinde Shopping Plaza Ica</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="5">
@endsection
@section('contenido')
    <main class="main">
        <section class="section-banner stores-banner">
            <div class="shadow-home"></div>
            <div class="swiper-container swiper-full swiper-with-gutter-top" id="swiper-banner-stores">
                <div class="swiper-wrapper"></div>
                <div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
                <div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
            </div>
            <div class="section-banner__info">
                <div class="container">
                    <div class="section__textcontent xs-m-left-auto animated fadeInRight stores-title">
                        <h1 class="section__big-title color1 xs-center animate-title"><span class="section__big-subtitle">NUESTRAS</span> TIENDAS</h1>
                    </div>
                </div>
            </div>
            <div class="pursue"><a href="#filtrer">
                    <div class="pursue__container">
                        <div class="circle">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </a></div><span class="line-bar"></span>
        </section>
        <section class="section stores-filter-section" id="filtrer">
            <div class="container container-menu-filter">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-md-4 order-1 mt-5 mt-md-4 mt-md-45 mb-3 mb-sm-0 xs-center sm-left d-sm-flex justify-content-sm-center align-items-sm-center">
                        <div class="store-filter-category text-sm-right text-sm-center"><label>CATEGORÍAS:&nbsp;</label><select class="select select-store border-input" id="category" name="category"></select></div>
                    </div>
                    <div class="col-12 col-lg-4 mt-md-45 order-0 order-lg-2 xs-center sm-left d-sm-flex justify-content-sm-center align-items-sm-center">
                        <div class="store-filter-search text-center d-flex justify-content-center align-items-center mt-4"><input class="search text-center w-100 border-input" id="lookfor" type="text" name="lookfor" placeholder="Buscar"><button class="btn--search" id="btn_lookfor" type="button" for="lookfor"><img src="../../assets/images/loupe-w.png" alt=""></button></div>
                    </div>
                    <div class="col-md-4 mt-4 mt-md-45 order-2 order-lg-3 xs-center sm-left d-sm-flex justify-content-sm-center align-items-sm-center">
                        <div class="store-filter-location text-sm-right text-sm-center"><label>UBICACIÓN:&nbsp;</label><select class="select select-store border-input" id="location" name="location">
                                <option value="0">Todas</option>
                                <option value="1">1er nivel</option>
                                <option value="2">2do nivel</option>
                                <option value="3">3er nivel</option>
                            </select></div>
                    </div>
                </div>
                <div class="row mt-4 xs-none d-md-flex">
                    <div class="col-12 mt-4">
                        <div class="store-filter-abc flex-column flex-sm-row text-md-center"><label>LISTADO:</label>
                            <ul class="letters d-none d-md-block">
                                <li><span class="letter">#</span></li>
                                <li><span class="letter">A</span></li>
                                <li><span class="letter">B</span></li>
                                <li><span class="letter">C</span></li>
                                <li><span class="letter">D</span></li>
                                <li><span class="letter">E</span></li>
                                <li><span class="letter">F</span></li>
                                <li><span class="letter">G</span></li>
                                <li><span class="letter">H</span></li>
                                <li><span class="letter">I</span></li>
                                <li><span class="letter">J</span></li>
                                <li><span class="letter">K</span></li>
                                <li><span class="letter">L</span></li>
                                <li><span class="letter">M</span></li>
                                <li><span class="letter">N</span></li>
                                <li><span class="letter">O</span></li>
                                <li><span class="letter">P</span></li>
                                <li><span class="letter">Q</span></li>
                                <li><span class="letter">R</span></li>
                                <li><span class="letter">S</span></li>
                                <li><span class="letter">T</span></li>
                                <li><span class="letter">U</span></li>
                                <li><span class="letter">V</span></li>
                                <li><span class="letter">W</span></li>
                                <li><span class="letter">X</span></li>
                                <li><span class="letter">Y</span></li>
                                <li><span class="letter">Z</span></li>
                            </ul><select class="letters d-block d-md-none select select-store border-input" id="SelecLetters" name="">
                                <option value=""><span class="letter">Seleccionar</span></option>
                                <option value="#"><span class="letter">#</span></option>
                                <option value="A"><span class="letter">A</span></option>
                                <option value="B"><span class="letter">B</span></option>
                                <option value="C"><span class="letter">C</span></option>
                                <option value="D"><span class="letter">D</span></option>
                                <option value="E"><span class="letter">E</span></option>
                                <option value="F"><span class="letter">F</span></option>
                                <option value="G"><span class="letter">G</span></option>
                                <option value="H"><span class="letter">H</span></option>
                                <option value="I"><span class="letter">I</span></option>
                                <option value="J"><span class="letter">J</span></option>
                                <option value="K"><span class="letter">K</span></option>
                                <option value="L"><span class="letter">L</span></option>
                                <option value="M"><span class="letter">M</span></option>
                                <option value="N"><span class="letter">N</span></option>
                                <option value="O"><span class="letter">O</span></option>
                                <option value="P"><span class="letter">P</span></option>
                                <option value="Q"><span class="letter">Q</span></option>
                                <option value="R"><span class="letter">R</span></option>
                                <option value="S"><span class="letter">S</span></option>
                                <option value="T"><span class="letter">T</span></option>
                                <option value="U"><span class="letter">U</span></option>
                                <option value="V"><span class="letter">V</span></option>
                                <option value="W"><span class="letter">W</span></option>
                                <option value="X"><span class="letter">X</span></option>
                                <option value="Y"><span class="letter">Y</span></option>
                                <option value="Z"><span class="letter">Z</span></option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row mt-4 md-none-force">
                    <div class="col-12 mt-4">
                        <div class="stores-all d-md-flex xs-center"><label class="xs-block-force">TIENDAS:</label><select class="select select-store border-input" id="select_stores_all">
                                <option>seleccione</option>
                            </select></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section stores-section" id="stores_section">
            <div class="container">
                <div>
                    <div class="content-stores-data"></div>
                    <div class="content-stores-pagination">
                        <div class="stores-pagination" id="stores_pagination"><span class="number is-active" onclick="loadDataStores(1)">1</span><span class="pipe"></span><span class="number" onclick="loadDataStores(2)">2</span><span class="pipe"></span><span class="number" onclick="loadDataStores(3)">3</span><span class="pipe"></span><span class="number" onclick="loadDataStores(4)">4</span><span class="pipe"></span><span class="number" onclick="loadDataStores(5)">5</span><a class="icon-right" href="javascript:void(0);" onclick="loadDataStores(2)"></a></div>
                    </div>
                    <div class="content-stores-intermal hide"></div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection
