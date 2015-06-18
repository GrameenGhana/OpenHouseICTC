//Initialise Variables
var takenLoan = 0;
var initialAmount = 400;
var loanAmount = 0;
var stageCost = [0, 0, 0, 0, 0, 0, 0, 0];
var lifeCost = [0, 0, 0, 0, 0, 0, 0, 0];
var stagesCost = 0;
var oldCost = 0;


function processStageSelected(idx, idxValue) {
    $('#myModal' + idx).modal('show')
    stageCost[idx] = idxValue;
    stagesCost += parseInt(idxValue)
    //stageCosts-=oldCost
    //alert(stageCost[idx] +" -- "+idxValue)
    getCost()
    oldCost = idxValue
}


function lifeChoice(idx, idxValue) {
    $("#lifeChoice" + idx).val(idxValue);
    lifeCost[idx] = idxValue;
    getCost()
    $('#myModal' + idx).modal('hide')
    if (loanAmount === 0) {
        $('#myModalloan').modal('show');
    }else{    }
}

function takeLoan(){
   
    loanAmount =parseInt($("#loanamt").val());
            $('#myModalloan').modal('hide');

}

function getCost() {
    var sum = 0;
    var su="";
    var ch="";

    for (i = 1; i < 6; i++) {
        sum += parseInt(stageCost[i]) + 0;
        su+=","+parseInt(stageCost[i]);
    }

    for (i = 1; i < 6; i++) {
        sum += parseInt(lifeCost[i]) + 0;
                ch+=","+parseInt(lifeCost[i]);

    }

    $(".amt").html("Amount : " + sum)
}
