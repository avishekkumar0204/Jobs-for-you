(function() {
    var hamburger = document.getElementById("js-hamburger");
    var navLists = document.getElementById("js-nav-lists");
    var close = document.getElementById("js-close");

    var toggleClass = function(ele, cr, ca){
        ele.classList.remove(cr);
        ele.classList.add(ca);
    }

    var openMobileNavList = function(){
        toggleClass(hamburger, "show", "hide");
        toggleClass(navLists, "hide", "show");
        toggleClass(close, "hide", "show");
    }

    var closeMobileNavList = function(){
        toggleClass(close, "show", "hide");
        toggleClass(navLists, "show", "hide");
        toggleClass(hamburger, "hide", "show");
    }

    var init = function(){
        hamburger.addEventListener("click", openMobileNavList);
        close.addEventListener("click", closeMobileNavList);
    }

    window.addEventListener('load', init);
})();


