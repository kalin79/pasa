function startAnimation(index) {
    var tl = gsap.timeline()
    console.log(gsap)
    if (index === 0){
        tl.set("#pictureReloj", {scale: 0})
            .set("#pictureMil", {opacity: 0, y:-50})
            .set("#pictureHora", {opacity: 0, y:50})
            .set(".Slidermain .box-title h2", {opacity: 0, x:-50})
            .set(".Slidermain .box-title h1", {opacity: 0, x:50})
            .to("#pictureReloj", {scale: 1, duration: .25}, "+=.5")
            .to("#pictureMil", {opacity: 1, y: 0, duration: .25}, "+=.35")
            .to("#pictureHora", {opacity: 1, y: 0, duration: .25}, "+=.35")
            .to(".Slidermain .box-title h2", {opacity: 1, x: 0, duration: .25}, "+=.35")
            .to(".Slidermain .box-title h1", {opacity: 1, x: 0, duration: .25}, "+=.35");
    }
    if (index === 1){
        tl.set("#pictureReloj", {scale: 0})
            .set("#pictureMil", {opacity: 0, y:-50})
            .set("#pictureHora", {opacity: 0, y:50})
            .set(".Slidermain .box-title h2", {opacity: 0, x:-50})
            .set(".Slidermain .box-title h1", {opacity: 0, x:50})
    }

}

function callback(event){
    // startAnimation(event.page.index)
}
$(document).ready(function(){
    $('.owl-days2').owlCarousel({
        // animateOut: 'fadeOut',
        loop:false,
        margin:10,
        autoplay:false,
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
    $('.owl-days3').owlCarousel({
        // animateOut: 'fadeOut',
        loop:false,
        margin:10,
        autoplay:false,
        autoplayTimeout: 5000,
        autoplayHoverPause:true,
        nav:true,
        responsive:{
            0:{
                items:1
            }
        }
            
    })
    // var controller = new ScrollMagic.Controller();
    // var scene = new ScrollMagic.Scene({triggerElement: "#trigger1"})
    // .setClassToggle("#pin1", "active") // add class toggle
    // // .addIndicators({name: "1 (duration: 300)"}) // add indicators (requires plugin)
    // .addTo(controller);

    // $(".btn-category").click(function(){

    //     $(".btn-category").removeClass("active");
    //     var _name = $(this).data('name');
    //     var _category = $(this).data('category');
    //     $(".category-all").addClass("novisible");
    //     $("#"+_name).removeClass("novisible");
    //     $(this).addClass("active");
    //     console.log(_name)

    //     $(".btn-category2").removeClass("active");
    //     var _name2 = $(this).data('name')+ "2";
    //     $(".category-all2").addClass("novisible");
    //     $("#"+_name2).removeClass("novisible");
    //     $(this).addClass("active");
    //     console.log(_name2);


    // })



    // CSSPlugin.defaultTransformPerspective = 1000;
    // //we set the backface 
    // TweenMax.set($(".cardBack"), {rotationY:-180});

    // $.each($(".cardCont"), function(i,element) {
  
    //     var frontCard = $(this).children(".cardFront"),
    //         backCard = $(this).children(".cardBack"),
    //         tl = new TimelineMax({paused:true});
        
    //         tl
    //             .to(frontCard, 1, {rotationY:180})
    //             .to(backCard, 1, {rotationY:0},0)
    //             .to(element, .5, {z:50},0)
    //             .to(element, .5, {z:0},.5);
        
    //     element.animation = tl;
      
    // });

    // $(".cardCont").hover(elOver, elOut);

    // function elOver() {
    //     this.animation.play();
    // }
    
    // function elOut() {
    //     this.animation.reverse();
    // }

    $(".cardBack").click(function(){
        console.log('back');
        console.log($(this).parent().children(".cardFront"));
        console.log($(this).parent().children(".cardBack"));
        var frontCard = $(this).parent().children(".cardFront"),
        backCard = $(this).parent().children(".cardBack");

        $(backCard).css("transform","rotateY(-180deg)");
        $(frontCard).css("transform","translate(0,0)");
    })
   
    // setTimeout(function(){ 
    //     startAnimation(0)
    //  }, 100);

    $('.owl-banner').owlCarousel({
        // animateOut: 'fadeOut',
        loop:false,
        margin:0,
        autoplay:true,
        autoplayTimeout: 6000,
        autoplayHoverPause:true,
        nav: true,
        dots: false,
        // onTranslate: callback,
        responsive:{
            0:{
                items:1
            }
            
        }
    });

    $('.owl-navegation').owlCarousel({
        // animateOut: 'fadeOut',
        loop:false,
        margin:2,
        autoplay:true,
        autoplayTimeout: 5000,
        autoplayHoverPause:true,
        nav: true,
        dots: false,
        responsive:{
            0:{
                items:4
            },
            512:{
                items:6
            },
            768:{
                items:8
            },
            992:{
                items:12
            }
            
        }
    });
});