/**
 * Created by 符启晗 on 2016/12/21.
 */
$(document).ready(
    function () {
        $("#userName").on("blur",function () {
            $("#checkresult").html("11");
            var userName=$("#userName").val();


            $.post("/fruit/registerName.html","userName="+userName,function (res) {
                $("#checkresult").html(res);
                console.log(res)

            })



        })

    }
);