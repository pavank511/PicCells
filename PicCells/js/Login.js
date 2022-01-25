const ContainerTab = document.querySelector(".ContainerTab");
const Paragraph = document.querySelector("#Paragraph");
const header = document.querySelector(".logo-text");
const t1 = new TimelineMax();
t1.fromTo(ContainerTab, 1.25, { opacity: 0, x: -30 }, { opacity: 1, x: 0 })
    .fromTo(Paragraph, 4, { opacity: 0, x: 0 }, { opacity: 1, x: 0 }, "-=1.5");