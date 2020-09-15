const app = new Vue ({
    el: '#app',
    data: {
        fondo: 'bg-warning',
        color: false,
        productsDays: [],
        productsAll: [],
        productsCategory: [], 
        productFilterCat: [],
        nameCategory: 'CALZADO'
    },
    created(){
        var _this = this;
        $.getJSON("assets/data/days.json", function(data){
            // console.log(data)
            _this.productsDays = data.filter(product => {
                if ((product.publicarDias === true) && (product.publish === true)  ){
                    return true
                }
            })
            setTimeout(function(){ 
                $('.owl-days').owlCarousel({
                    // animateOut: 'fadeOut',
                    loop:false,
                    margin:10,
                    autoplay:true,
                    autoplayTimeout: 5000,
                    autoplayHoverPause:true,
                    nav:true,
                    responsive:{
                        0:{
                            items:1
                        },
                        992:{
                            items:3
                        }
                    }
                        
                })

                CSSPlugin.defaultTransformPerspective = 1000;
                //we set the backface 
                TweenMax.set($(".cardBack"), {rotationY:-180});

                $.each($(".cardCont"), function(i,element) {

                var frontCard = $(this).children(".cardFront"),
                backCard = $(this).children(".cardBack"),
                tl = new TimelineMax({paused:true});

                tl
                .to(frontCard, 1, {rotationY:180})
                .to(backCard, 1, {rotationY:0},0)
                .to(element, .5, {z:50},0)
                .to(element, .5, {z:0},.5);

                element.animation = tl;

                });

                $(".cardCont").hover(elOver, elOut);

                function elOver() {
                this.animation.play();
                }

                function elOut() {
                this.animation.reverse();
                }
            }, 3000);
        });
        $.getJSON("assets/data/all.json", function(data){
            // console.log(data)
            _this.productsAll = data.filter(product => {
                if (product.publish === true  ){
                    return true
                }
            })
            setTimeout(function(){ 
                
                $('.owl-fulldays').owlCarousel({
                    // animateOut: 'fadeOut',
                    loop: false,
                    margin:10,
                    autoplay:true,
                    autoplayTimeout: 5000,
                    autoplayHoverPause:true,
                    nav: true,
                    responsive:{
                        0:{
                            items:1
                        },
                        992:{
                            items:3
                        }
                        
                    }
                });

                CSSPlugin.defaultTransformPerspective = 1000;
                //we set the backface 
                TweenMax.set($(".cardBack"), {rotationY:-180});

                $.each($(".cardCont"), function(i,element) {

                var frontCard = $(this).children(".cardFront"),
                backCard = $(this).children(".cardBack"),
                tl = new TimelineMax({paused:true});

                tl
                .to(frontCard, 1, {rotationY:180})
                .to(backCard, 1, {rotationY:0},0)
                .to(element, .5, {z:50},0)
                .to(element, .5, {z:0},.5);

                element.animation = tl;

                });

                $(".cardCont").hover(elOver, elOut);

                function elOver() {
                this.animation.play();
                }

                function elOut() {
                this.animation.reverse();
                }
            
                // console.log(543);
            }, 3000);
            
        });

        $.getJSON("assets/data/all.json", function(data){
            _this.productsCategory = data.filter(product => {
                if ((product.publish === true && product.category === "CALZADO"  )){
                    return true
                }
            });
            // console.log("ok");
        })
        .always(function () {
            var items,
            page;
            items = _this.productsCategory.length;
            // console.log(_this.productsCategory,items )
            if (items % 6 != 0 ){
                page = Math.floor(items % 6);
                page++;
            }else{
                page = items / 6
            }
            var cont = 0;
            var auxArray = [];
            var iniC = 0;
            var iniF = 6;
            // console.log(page)
            for (x = 0; x<page; x++){
                // console.log("x",x)
                // console.log(iniC);
                // console.log(iniF);
                auxArray = [];
                for (y=iniC; y<iniF; y++){
                    auxArray.push(_this.productsCategory[cont]);
                    cont++;
                }
                iniC = cont;
                iniF = cont + 5
                if (iniF > items){
                    iniF = items;
                }
                _this.productFilterCat.push(auxArray)
                // console.log(auxArray)
                // _this.productFilterCat[x].push()
            }
            
            setTimeout(function(){ 
                
                $('.owl-categories').owlCarousel({
                    // animateOut: 'fadeOut',
                    loop:false,
                    margin: 10,
                    autoplay:false,
                    autoplayTimeout: 5000,
                    autoplayHoverPause:false,
                    nav: true,
                    responsive:{
                        0:{
                            items:1
                        }
                        
                    }
                });

                CSSPlugin.defaultTransformPerspective = 1000;
                //we set the backface 
                TweenMax.set($(".cardBack"), {rotationY:-180});

                $.each($(".cardCont"), function(i,element) {
            
                    var frontCard = $(this).children(".cardFront"),
                        backCard = $(this).children(".cardBack"),
                        tl = new TimelineMax({paused:true});
                    
                        tl
                            .to(frontCard, 1, {rotationY:180})
                            .to(backCard, 1, {rotationY:0},0)
                            .to(element, .5, {z:50},0)
                            .to(element, .5, {z:0},.5);
                    
                    element.animation = tl;
                
                });

                $(".cardCont").hover(elOver, elOut);

                function elOver() {
                    this.animation.play();
                }
                
                function elOut() {
                    this.animation.reverse();
                }
            
                // console.log(543);
            }, 3000);


        });
    },
    methods: {

        JsonCategoryProduct: function(category){
            // console.log(category)
            this.productsCategory = []; 
            this.productFilterCat = [];
            var _this = this;
            var $carousel = $('.owl-categories');
            $carousel.owlCarousel('destroy');
            console.log($carousel)
            $.getJSON("assets/data/all.json", function(data){
                _this.productsCategory = data.filter(product => {
                    if ((product.publish === true && product.category === category  )){
                        return true
                    }
                });
                // console.log("ok");
            })
            .always(function () {
                var items,
                page;
                items = _this.productsCategory.length;
                console.log(_this.productsCategory,items )
                if (items % 6 != 0 ){
                    // page = Math.floor(items % 6);
                    page = Math.trunc(items / 6)
                    page++;
                }else{
                    page = items / 6
                }
                var cont = 0;
                var auxArray = [];
                var iniC = 0;
                var iniF = 6;
                // console.log(page)
                for (x = 0; x<page; x++){
                    // console.log("x",x)
                    // console.log(iniC);
                    // console.log(iniF);
                    auxArray = [];
                    for (y=iniC; y<iniF; y++){
                        auxArray.push(_this.productsCategory[cont]);
                        cont++;
                    }
                    iniC = cont;
                    iniF = cont + 5
                    if (iniF > items){
                        iniF = items;
                    }
                    _this.productFilterCat.push(auxArray)
                    // console.log(auxArray)
                    // _this.productFilterCat[x].push()
                }
                
                setTimeout(function(){ 
                    // $('.owl-categories').trigger('refresh.owl.carousel');
                    $('.owl-categories').owlCarousel({
                        // animateOut: 'fadeOut',
                        loop:false,
                        margin: 10,
                        autoplay:false,
                        autoplayTimeout: 5000,
                        autoplayHoverPause:false,
                        nav: true,
                        responsive:{
                            0:{
                                items:1
                            }
                            
                        }
                    });
    
                    CSSPlugin.defaultTransformPerspective = 1000;
                    //we set the backface 
                    TweenMax.set($(".cardBack"), {rotationY:-180});
    
                    $.each($(".cardCont"), function(i,element) {
                
                        var frontCard = $(this).children(".cardFront"),
                            backCard = $(this).children(".cardBack"),
                            tl = new TimelineMax({paused:true});
                        
                            tl
                                .to(frontCard, 1, {rotationY:180})
                                .to(backCard, 1, {rotationY:0},0)
                                .to(element, .5, {z:50},0)
                                .to(element, .5, {z:0},.5);
                        
                        element.animation = tl;
                    
                    });
    
                    $(".cardCont").hover(elOver, elOut);
    
                    function elOver() {
                        this.animation.play();
                    }
                    
                    function elOut() {
                        this.animation.reverse();
                    }
                
                    // console.log(543);
                }, 1500);
    
    
            });
        },
        mostrarOfertas: function(_name,_category,event, _nameCategory){
            // console.log($(event.target), _name, _category)
            $(".btn-category").removeClass("active");
            // $(".category-all").addClass("novisible");
            // $("#"+_name).removeClass("novisible");
            $(event.target).parent().addClass("active");
            this.JsonCategoryProduct(_category);
            this.nameCategory = _nameCategory;
        } 
    },
    computed: {
        
    }
})