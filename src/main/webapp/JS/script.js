  $(function () {
        // 왼쪽메뉴 드롭다운
        $(".sidebar ul.submenu").hide();
        $(".sidebar ul.menu-v2").click(function () {
            $("ul", this).slideToggle(300);
        });
    });