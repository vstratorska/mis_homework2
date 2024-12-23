const localsRawData =
  [
    {
      "name": "TINEX",
      "address": "2C35+558, Булевар Партизански Одреди, Скопје 1000",
      "distance": 270,
      "type": "MARKET",
      "working_hours": "пон-саб 08:00 - 22:00                             нед  Затворено",
      "image": "https://s.vrabotuvanje.com.mk/data/images/preview/article/44/ef783544-resize-820x0x100.jpg"
    },
    {
      "name": "Џој",
      "address": "Никола Тесла 9a, Скопје 1000",
      "distance": 260,
      "type": "BAKERY",
      "working_hours": "пон-пет 08:00 - 18:00                             саб, нед  Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Xd8EQCYUVf8AOG-oF_dtgyJRC2AF5twnFzBQ3mkEEA&s"
    },
    {
      "name": "Фреш кантина",
      "address": "2C35+W7R Факултет за Електротехника и Информациони технологии, Ruger Boskovic 18, Руѓер Бошковиќ, Скопје 1000",
      "distance": 180,
      "type": "RESTAURANT",
      "working_hours": "пон-пет 08:00 – 19:00                             саб, нед  Затворено",
      "image": "https://scontent.fskp4-2.fna.fbcdn.net/v/t39.30808-6/304808804_550973693460466_7096567863058070497_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Bdh_2kMER0cQ7kNvgF1cw1w&_nc_zt=23&_nc_ht=scontent.fskp4-2.fna&_nc_gid=AyL048EMbshDzRXmkxvxWay&oh=00_AYAqlLu143aSaT_WQQazO0xrXx72e7uCSrOAoC5TvB-jlQ&oe=676F5AE1"
    },
    {
      "name": "Бифе МФС",
      "address": "2C35+W7R Факултет за Електротехника и Информациони технологии, Руѓер Бошковиќ, Скопје 1000",
      "distance": 180,
      "type": "RESTAURANT",
      "working_hours": "пон-пет 08:00 – 19:00                             саб, нед  Затворено",
      "image": "https://img.restaurantguru.com/w400/re65-Bife-MFS-interior.jpg",
    },
    {
      "name": "Бифе ТМФ",
      "address": "2C35+WX4, Скопје 1000",
      "distance": 80,
      "type": "RESTAURANT",
      "working_hours": "пон-пет 08:00 – 17:00                             саб, нед  Затворено",
      "image": "https://fastly.4sqi.net/img/general/200x200/51636364_QHIk0Eks5atvjoFXmpPaE3EGpoK-0rWZwsggREHN3gE.jpg"
    },
    {
      "name": "Тетекс 5",
      "address": "ul, Орце Николов 206, Скопје 1000",
      "distance": 250,
      "type": "FAST FOOD RESTAURANT",
      "working_hours": "пон-саб 09:00 – 00:00                             нед  13:00 – 00:00",
      "image": "https://scontent.fskp4-1.fna.fbcdn.net/v/t39.30808-6/347595760_656095679888544_8635580761779819772_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=hlCzDW7GrPkQ7kNvgGWIZZV&_nc_zt=23&_nc_ht=scontent.fskp4-1.fna&_nc_gid=Ak8wjI7gZCWZMh6okVxptpz&oh=00_AYDuvAh0JxIwCgQjrfmfEwF1xlPmL5bYZ9eIU0jzFyHy0A&oe=676F43D4"
    },
    {
      "name": "Лира",
      "address": "Никола Тесла 11, Скопје 1000",
      "distance": 270,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 09:00 – 00:00                             пет,саб 09:00 – 01:00                                 нед 09:00 – 21:00",
      "image": "https://www.restorani.com.mk/storage/images/restaurants/galleries/15222398061287569981_gallery.jpg"
    },
    {
      "name": "Рустикана 2.0",
      "address": "Булевар Илинден 94, Скопје 1000\n",
      "distance": 750,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 11:00 – 23:30                             пет,саб 11:00 – 01:00                             нед 11:50 – 20:00",
      "image": "https://lh3.googleusercontent.com/p/AF1QipOJaCtLQpP_3O43HLqMlGDTGhQo-PePJehaJjdL=s1360-w1360-h1020"
    },
    {
      "name": "Ботаника",
      "address": "Орце Николов 166, Скопје 1000",
      "distance": 350,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 12:00 – 00:00                             пет,саб 12:00 – 01:00                             нед Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOqnMcAjNux1uWO66iDLn-mBi7QxmN9EguZw&s"
    },
    {
      "name": "Балканика Рустикана\n",
      "address": "2C55+RWP, Скопје 1000",
      "distance": 1000,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 08:00 – 00:00                             пет-нед 08:00 – 01:00 ",
      "image": "https://abv-core.s3.amazonaws.com/images/5c471a46824e1a12905e011d.jpg"
    },
    {
      "name": "Вегера Селф Сервице\n",
      "address": "Bulevar Partizanski Odredi br. 82, Скопје 1000",
      "distance": 900,
      "type": "RESTAURANT",
      "working_hours": "пон-нед 00:00 – 23:59",
      "image": "https://lh3.googleusercontent.com/p/AF1QipPbdAdxWpB5XVcgtpxb5zE4Z03sRV2QtqL_HysR=s1360-w1360-h1020"
    },
    {
      "name": "Трибека\n",
      "address": "Јавно Претпријатие ”Паркови и зеленило”, Булевар Илинден 1000, Скопје 1000",
      "distance": 400,
      "type": "RESTAURANT",
      "working_hours": "пон-нед 08:00 – 00:00",
      "image": "https://lh3.googleusercontent.com/p/AF1QipPjajvuFLtjD91CwyaE6EKHF6bjdc-i7USeTTsM=s1360-w1360-h1020"
    },
    {
      "name": "Марѓер\n",
      "address": "Булевар Илинден 93, Скопје 1000",
      "distance": 1000,
      "type": "RESTAURANT",
      "working_hours": "пон-саб  10:00 – 00:00                             нед Затворено",
      "image": "https://scontent.fskp4-1.fna.fbcdn.net/v/t39.30808-6/453408038_2427834557419707_7328396241725350178_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=86c6b0&_nc_ohc=M9bKf1VXuh4Q7kNvgHdNOpi&_nc_zt=23&_nc_ht=scontent.fskp4-1.fna&_nc_gid=Aaw-hugSR4l9w8Z3Knpv4Te&oh=00_AYC4xyHBYjQrE6wHsl8cLlXgW1IVpKcAhcXO0MIMW4Ka8Q&oe=676F3B1E"
    },
    {
      "name": "Скадарлија\n",
      "address": "Орце Николов, Скопје 1000",
      "distance": 500,
      "type": "RESTAURANT",
      "working_hours": "пон-чет  09:00 – 00:00                               пет,саб 09:00 – 01:00                             нед 12:00 – 20:00",
      "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/56/40/f5/ansprechendes-ausseres.jpg?w=1400&h=-1&s=1"
    },
    {
      "name": "Галерија\n",
      "address": "Франклин Рузвелт 63a, Скопје 1000",
      "distance": 600,
      "type": "COFFEE BAR",
      "working_hours": "пон-пет 07:30 – 00:00                             саб, нед  08:00 – 01:00",
      "image": "https://thegallery.com.mk/wp-content/uploads/2022/12/122.jpg"
    },
    {
      "name": "Марвел",
      "address": "Никола Тесла 9, Скопје 1000",
      "distance": 190,
      "type": "COFFEE BAR",
      "working_hours": "пон-нед 08:00 – 00:00",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRltmdvvrohGHsONHdt4RS8tiDfzxETozkIm_0MaZvxyzQDjDBhX6cbnYLcXKKzkBreSdg&usqp=CAU"
    },
    {
      "name": "Three Monkeys",
      "address": "MK, Булевар 8-ми Септември 7/6, Скопје 1000",
      "distance": 850,
      "type": "COFFEE BAR",
      "working_hours": "пон-саб  09:00 – 00:00                             нед Затворено",
      "image": "https://scontent.fskp4-1.fna.fbcdn.net/v/t39.30808-1/291923678_713033926431050_445079696324336588_n.png?stp=dst-png_s200x200&_nc_cat=111&ccb=1-7&_nc_sid=2d3e12&_nc_ohc=unkf6x3-8QgQ7kNvgHR9tfs&_nc_zt=24&_nc_ht=scontent.fskp4-1.fna&_nc_gid=AGkJP5GB6Kki_iIex0PZ0N5&oh=00_AYBpskb7MD5Zj4O32xc4W8wjcjPNZL3WsBjKtr42EaWoZQ&oe=676F3F2A"
    },
    {
      "name": "Тесла",
      "address": "Nikola Tesla 9, Скопје 1000",
      "distance": 190,
      "type": "COFFEE BAR",
      "working_hours": "пон-чет 08:00 – 23:30                             пет 08:00 – 01:00                                саб 09:00 – 01:00                                нед 09:00 – 17:00",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs49jUXg3yBKuB4o-dtdWT5CEInpKp7jxHOjgG-HvmLbglvdyXM_J5tms7QMrcAQTVDNE&usqp=CAU"
    },
    {
      "name": "Кафе Концепт 37",
      "address": "Франклин Рузвелт 37, Скопје 1000",
      "distance": 850,
      "type": "COFFEE BAR",
      "working_hours": "пон-чет  09:00 – 00:00                             пет,саб 09:00 – 01:00                             нед Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7QikTd-Vl896T6CZhCUizpotZq8HWuv7wi6DFvvsxMcwjDS0IzX6B5WSaJdR_7rZvJ2A&usqp=CAU"
    },
    {
      "name": "La Noi",
      "address": "Орце Николов 204, Скопје 1000, Скопје 1000",
      "distance": 270,
      "type": "MARKET",
      "working_hours": "пон-саб 07:30 – 21:00                             нед  Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcvgL85r7k0kcAp5lhZ4T0-FejG5Uj9_tlKeeXS1odVWrPN6NKyYPBENLQ0Gq0k5CnjU&usqp=CAU"
    },
    {
      "name": "Броз Кафе",
      "address": "MK, Булевар Партизански Одреди, Скопје 1000",
      "distance": 900,
      "type": "COFFEE BAR",
      "working_hours": "пон-чет  08:00 – 00:00                             пет,саб 08:00 – 01:00                             нед 09:00 – 00:00",
      "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/19/2e/0d/outdoor-seating-downtown.jpg?w=400&h=-1&s=1"
    },
    {
      "name": "Стокомак ",
      "address": "2C34+457, Скопје 1000",
      "distance": 550,
      "type": "MARKET",
      "working_hours": "пон-саб  07:30 – 21:30                             нед Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqaD8xuQXbSqtzkwS7KtKhu8qJ3tfLtsRumOFQEK6yjJ5WqH4xT-umX-c8ned4k8Tu2l4&usqp=CAU"
    },
    {
      "name": "Маркет „Зур“",
      "address": "Karposh 1, Скопје 1000",
      "distance": 300,
      "type": "MARKET",
      "working_hours": "пон-пет 07:30 – 22:00                             саб 07:30 – 21:00                              нед Затворено",
      "image": "https://s.vrabotuvanje.com.mk/data/images/preview/article/a6/d78e3a6a-resize-820x0x100.jpg"
    },
    {
      "name": "Рептил Маркети",
      "address": "Булевар Партизански Одреди no. 59, Скопје 1000",
      "distance": 850,
      "type": "MARKET",
      "working_hours": "пон-саб 07:00 – 21:00                             нед  Затворено",
      "image": "https://1050864291.rsc.cdn77.org/sites/zk/docs/image_1384333036_36.png?t=true&w=350&h=350"
    },
    {
      "name": "Маркет „Кам“",
      "address": "Blagoj Davkov 2, Скопје 1000",
      "distance": 850,
      "type": "MARKET",
      "working_hours": "пон-саб 08:00 – 21:00                             нед  Затворено",
      "image": "https://kam.com.mk/wp-content/uploads/2017/06/montaza2-845x300.jpg"
    },
    {
      "name": "Amaro Store \n",
      "address": "Никола Тесла 9/1-2, Скопје 1000",
      "distance": 180,
      "type": "MARKET",
      "working_hours": "пон-саб 08:00 – 00:00                             нед  Затворено",
      "image": "https://amaro.mk/wp-content/uploads/2023/06/Amaro_Store_ViberPhoto.jpg"
    },
    {
      "name": "Пезого",
      "address": "Веселин Маслеша, Скопје 1000",
      "distance": 350,
      "type": "BAKERY",
      "working_hours": "пон-пет 06:30 – 14:30                             саб 06:30 – 12:00                               нед Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzk40OhSi3f15oSscFKvGW38Yj1f4vmm4F-hpBaVj4-RogxMkB0ZewKz8Zliz0JJMkUW0&usqp=CAU"
    },
    {
      "name": "Дием ГП",
      "address": "Шекспирова 15, Скопје 1000",
      "distance": 400,
      "type": "MARKET",
      "working_hours": "пон-пет 07:00 – 18:00                              саб 08:00 – 15:00                             нед Затворено",
      "image": "https://diem-gp.mk/img/marketi/market_karpos2.png"
    },
    {
      "name": "Мал Одмор\n",
      "address": "2C26+5WQ, Булевар Партизански Одреди, Скопје 1000",
      "distance": 800,
      "type": "BAKERY",
      "working_hours": "пон-саб 06:00 – 21:30                             нед  Затворено",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR_2siXbfttYQ-D8jwxTqGF6S3wjpYuNY2DNFiLdUGMGH_axpfexAYV_lSSatK_Wm6QmQ&usqp=CAU"
    },
    {
      "name": "Силбо",
      "address": "Мајаковски 3, Скопје 1000",
      "distance": 850,
      "type": "BAKERY",
      "working_hours": "пон-саб 00:00 – 23:59                             нед  Затворено",
      "image": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/d8/a5/e1/shop.jpg?w=900&h=-1&s=1"
    },
    {
      "name": "Burger Factory",
      "address": "Roosevelt 63A, Скопје 1000",
      "distance": 600,
      "type": "FAST FOOD RESTAURANT",
      "working_hours": "пон-пет 09:00 – 00:00                               саб, нед  12:00 – 00:00",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe_apiXJqr-Wj6DYY5dspbVS6055ch6jSvPViJPXPFPyn7ASGkBZX4F_gmpNc2DJP5VjQ&usqp=CAU"
    },
    {
      "name": " „Ројал“ - 2\n",
      "address": "Орце Николов, Скопје 1000",
      "distance": 750,
      "type": "FAST FOOD RESTAURANT",
      "working_hours": "пон-чет  10:00 – 00:00                               пет,саб 10:00 – 01:00                             нед Затворено",
      "image": "https://royalburger.com.mk/wp-content/uploads/2018/03/as.png"
    },
    {
      "name": "Junk food",
      "address": "Булевар Илинден, Скопје 1000",
      "distance": 700,
      "type": "FAST FOOD RESTAURANT",
      "working_hours": "пон-пет 09:00 – 22:00                             саб, нед  11:00 – 23:00",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS10-4V5ObJ8hOcfIh_JNK_DyUmIkyOCdi4UPP6w-JNW0Ljm_3TGatLHT9bOXnPafweSTc&usqp=CAU"
    },
    {
      "name": "FITNESS HOUSE",
      "address": "Булевар Партизански Одреди 40, Скопје 1000",
      "distance": 800,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 10:00 – 23:50                              пет 10:00 – 00:50                               саб 13:00 – 01:00                               нед Затворено",
      "image": "https://kariera.mk/uploads/companies/x3y-RqcPbkK27w4Rui5XSg-2.jpg"
    },
    {
      "name": "Мексиканска храна „Taco's Jam“",
      "address": "Булевар Партизански Одреди 46A, Скопје 1000",
      "distance": 750,
      "type": "RESTAURANT",
      "working_hours": "пон-чет 10:00 – 23:50                             пет 10:00 – 00:50                               саб 13:00 – 01:00                               нед Затворено",
    "image": "https://www.kliknijadi.mk/images/products/1537_140823143232093_400x400.jpg?v=1"
    },
    {
      "name": "Донер „Пласет“ (Универзална Сала)",
      "address": "Булевар Партизански Одреди 43, Скопје 1000",
      "distance": 1000,
      "type": "FAST FOOD RESTAURANT",
      "working_hours": "нед-пет 10:00 – 00:00                               саб 10:00 – 03:00  ",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlILZ3FRchHruMRfCUB8p_gPhVxBo_fmu8vE-l7O7HxGr_LD4byKm41x-ixkLqu-HxdHQ&usqp=CAU"
    }

];