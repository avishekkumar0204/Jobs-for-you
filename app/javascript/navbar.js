(function() {
    var hamburger = document.getElementById("js-hamburger");
    var navLists = document.getElementById("js-nav-lists");
    var close = document.getElementById("js-close");
    var openMobileNavList = function(){
        hamburger.classList.remove("show");
        hamburger.classList.add("hide");
        navLists.classList.remove("hide");
        navLists.classList.add("show");
        close.classList.remove("hide");
        close.classList.add("show");
    }
    var closeMobileNavList = function(){
        close.classList.remove("show");
        close.classList.add("hide");
        navLists.classList.remove("show");
        navLists.classList.add("hide");
        hamburger.classList.remove("hide");
        hamburger.classList.add("show");
    }
    var init = function(){
        hamburger.addEventListener("click", openMobileNavList);
        close.addEventListener("click", closeMobileNavList)
    }
    window.addEventListener('load', init);
})();


