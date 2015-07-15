$(document).ready(function () {
    $('#id_operario').change(function () {
        if ($(this).is(':checked')) {
            var returnVal = confirm('Are you sure?');
            $(this).attr('checked', returnVal);
            $(this).val("1");
        }
        else
        {
            $(this).val("0");
        }
        $('#id_txt_operario').val($(this).is(':checked'));
    });

    if ($("#id_operario").val() == "1"){
        $('#id_operario').prop('checked', true);
    }else {
        $('#id_operario').prop('checked', false);
    }
    if (status_operario == '1') {
        $("#boolean_operario").html("Sí");
    }
    else
    {
        $("#boolean_operario").html("No");
    }
});
