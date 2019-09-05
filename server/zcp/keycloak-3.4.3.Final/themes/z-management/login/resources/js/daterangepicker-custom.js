$(document).ready(function(){
    /*$("input[name='datetimes']").daterangepicker({
        timePicker24Hour: true,
        timePicker: true,
        startDate: moment().startOf("hour"),
        endDate: moment().startOf("hour").add(24, "hour"),
        locale: {
            format: "YYYY-MM-DD hh:mm A",
            separator: " ~ ",
            daysOfWeek: [
                "일",
                "월",
                "화",
                "수",
                "목",
                "금",
                "토"
            ],
            monthNames: [
                "1월",
                "2월",
                "3월",
                "4월",
                "5월",
                "6월",
                "7월",
                "8월",
                "9월",
                "10월",
                "11월",
                "12월"
            ]
        }
    });*/
    $("input[name='datetimes']").daterangepicker({
        singleDatePicker: true,
        timePicker24Hour: true,
        timePicker: true,
        locale: {
            format: "YYYY-MM-DD hh:mm A",
            separator: " ~ ",
            daysOfWeek: [
                "일",
                "월",
                "화",
                "수",
                "목",
                "금",
                "토"
            ],
            monthNames: [
                "1월",
                "2월",
                "3월",
                "4월",
                "5월",
                "6월",
                "7월",
                "8월",
                "9월",
                "10월",
                "11월",
                "12월"
            ]
        }
    });
});