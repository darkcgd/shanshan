/**
 * Created by szmg on 17/9/21.
 */
/*https://github.com/nakupanda/bootstrap3-dialog*/
document.write("<script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/js/bootstrap-dialog.min.js'></script>");
document.write("<link href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/css/bootstrap-dialog.min.css'  rel='stylesheet'></link>");

function showDialog(msg) {
    BootstrapDialog.show({
        type:  BootstrapDialog.TYPE_PRIMARY,
        title: '提示',
        message: msg,
        closable: true,
        closeByBackdrop: true,
        closeByKeyboard: true,
        buttons: [{
            label: '知道了',
            action: function(dialogRef){
                dialogRef.close();
            }
        }]
    });
}