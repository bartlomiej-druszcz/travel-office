function getNumberPeople() {
    document.getElementById("numberOfAdults").innerHTML = document.getElementById('adults').value;
    document.getElementById("numberOfChldren").innerHTML = document.getElementById('children').value;
}

$(function () {
    var owl = $(".owl-carousel");
    owl.owlCarousel({
        center: true,
        items: 1.5,
        margin: 10,
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000
    });
});
