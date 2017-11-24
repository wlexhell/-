$(()=>{
    var nav=document.querySelector(".common-topbar-all-nav-dropdown"),
        navFather=document.querySelector(".common-nav-bar");
    navFather.onmouseover=function(){
        nav.style.display="block";
    }
    navFather.onmouseout=function(){
        nav.style.display="none";
    }
    var elem=document.querySelectorAll("[data-key]"),
        Felem=document.querySelector(".common-topbar-level1-nav");
    nav.onmouseover=function(e){
        nav.style.display="block";
        var ev=e||window.event,
            target=ev.target||ev.srcElement,
            tar = target.getAttribute("data-key"),
            showName=document.getElementById(tar);
        //console.log(tar);
        if(showName!==null)
            showName.className="common-type on-w";
    }
    nav.onmouseout=document.querySelector(".common-type").onmouseout=function(e){
        nav.style.display = "none";
        var ev=e||window.event,
            target=ev.target||ev.srcElement,
            tar = target.getAttribute("data-key"),
            showName=document.getElementById(tar);
        if(showName!==null)
            showName.className="common-type";
    }
    //楼层2的控制
    var ali_product=document.querySelector(".ali-product-tabs"),
        trigger=document.querySelector(".indicator-triangle"),
        gg_product=document.querySelectorAll(".gg-product-bottom");
    ali_product.onclick=function(e){
        e.preventDefault();
        var tar=e.target,
            i=tar.getAttribute("data-tab");
        //console.log(gg_product);
        //console.log(tar.parentNode);
        trigger.style.left=240*i+110+"px";
        var it=gg_product[i];
        it.style.display="block";
        it.className="gg-product-bottom active";
        for(var a of gg_product){
            if(a!=it){
                a.style.display="none";
                a.className="gg-product-bottom";
            }
        }
    }
});
//header导航
$(()=>{
    "use strict";
    var timer=null,
        details=$(".common-nav-bar-show");
    $("[data-num]").hover(function () {
        var $this=$(this),
            $num = $this.attr("data-num");
        $("[data-tiggle="+$num+"]").css({
            "height":"600",
            "display":"block",

        });
    },function () {
        var $this=$(this),
            $num = $this.attr("data-num");
        timer=setTimeout(()=>{
            $("[data-tiggle="+$num+"]").css({
                "height":"0",
                "display":"none",
            });
        },500);

    });
    details.hover(()=>{
        clearTimeout(timer);
    },()=>{
        details.css("display","none");
    })
});
