<%-- 
    Document   : mainpage
    Created on : Jun 17, 2015, 10:10:14 AM
    Author     : Joseph George Davis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%=request.getContextPath()%>/public/css/jquery.stepy.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/public/css/bootstrap.min.css" rel="stylesheet">


    </head>
    <body>
        <form  action="<%=request.getContextPath()%>/GameOn">

            <fieldset title="Player code">
                <legend>Enter Player code</legend>
                <div class="form-group">
                    <label for="playercode" class="col-sm-4 control-label">Player Code</label>
                    <div class="col-sm-6">   
                        <input type="text" class="form-control" id="playercode" name="playercode" placeholder="Code" required/>
                    </div>
                </div>
            </fieldset>   

            <fieldset title="Stage 1">
                <legend>Land Preparation Stage</legend>

                <div class="row">

                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <span class="glyphicon glyphicon-grain"></span>Agro Practice-Land Prep
                                    <label class="pull-right amt">Amount:400</label>
                                </div> 
                            </div>

                            <div class="panel-body">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage1" id="optionsRadios1" value="290" onclick="processStageSelected(1, this.value)">
                                        Herbicide and HandHoe
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage1" id="optionsRadios1" value="150"  onclick="processStageSelected(1, this.value)">
                                        Hand Hoeing
                                    </label>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                
            </fieldset>

            <fieldset title="Stage 2">
                <legend>Seed Planting</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <span class="glyphicon glyphicon-grain"></span>Agro Practice-Seed Selection
                                    <label class="pull-right amt">Amount:400</label>
                                </div> 
                            </div>

                            <div class="panel-body">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage2" id="optionsRadios1" value="180"  onclick="processStageSelected(2, this.value)">
                                        Certified seed of improved variety
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage2" id="optionsRadios1" value="20"   onclick="processStageSelected(2, this.value)">
                                        Farmer saved seed of local variety
                                    </label>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


            </fieldset>

            <fieldset title="Stage 3">
                <legend>Planting</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <span class="glyphicon glyphicon-grain"></span>Agro Practice-Planting
                                    <label class="pull-right amt">Amount:400</label>
                                </div> 
                            </div>

                            <div class="panel-body">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage3" id="optionsRadios1" value="370"  onclick="processStageSelected(3, this.value)">
                                        Herbicide + Hoe Weeding
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage3" id="optionsRadios1" value="170"  onclick="processStageSelected(3, this.value)">
                                        Hoe weeding
                                    </label>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>


            </fieldset>


            <fieldset title="Stage 4">
                <legend>Weed Control</legend> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <span class="glyphicon glyphicon-grain"></span>Agro Practice-Weed Control
                                    <label class="pull-right amt">Amount:400</label>
                                </div> 
                            </div>

                            <div class="panel-body">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage4" id="optionsRadios1" value="800"  onclick="processStageSelected(4, this.value)">
                                        Fertilizer
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage4" id="optionsRadios1" value="200"  onclick="processStageSelected(4, this.value)">
                                        Minimum Fertilizer Application
                                    </label>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
         
            </fieldset>   

            <fieldset title="Stage 5">
                <legend>Post Harvest</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <span class="glyphicon glyphicon-grain"></span>Pre & Post Harvesting
                                    <label class="pull-right amt">Amount:400</label>
                                </div> 
                            </div>

                            <div class="panel-body">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage5" id="optionsRadios1" value="160"  onclick="processStageSelected(5, this.value)">
                                        Good Post Harvesting
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="agrostage5" id="optionsRadios1" value="60"  onclick="processStageSelected(5, this.value)">
                                        Bad Post Harvesting
                                    </label>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


            </fieldset>   

            <input type="submit" value="submit" />
            
            
                <div class="modal fade" id="myModalloan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Loan

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                      <select class="form-control" name="loan" id="loanamt">
                                          <option value="0">Choose amount</option>
                                            <option>400</option>
                                            <option>500</option>
                                        </select>



                              </div>
                            <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="takeLoan()">Save changes</button>
      </div>
                        </div>
                    </div>
                </div>
            
            
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                Child’s school fees <div class="right_round">
                                    <div class="btn-group" role="group" aria-label="...">
                                    </div>
                                </div>

                                <input type="hidden" name="lifechoice1" id="lifechoice1" value="0" />

                              </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" onclick="lifeChoice(1, 200)">Yes</button>
                                <button type="button" class="btn btn-info" onclick="lifeChoice(1, 0)">No</button>

                            </div>
                        </div>
                    </div>
                </div>

              
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                Child’s school fees <div class="right_round">
                                    <div class="btn-group" role="group" aria-label="...">
                                    </div>
                                </div>

                                <input type="hidden" name="lifechoice2" id="lifechoice2" value="0" />

                              </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" onclick="lifeChoice(2, 200)">Yes</button>
                                <button type="button" class="btn btn-info" onclick="lifeChoice(2, 0)">No</button>

                            </div>
                        </div>
                    </div>
                </div>

                
            
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                Child’s school fees <div class="right_round">
                                    <div class="btn-group" role="group" aria-label="...">
                                    </div>
                                </div>

                                <input type="hidden" name="lifechoice3" id="lifechoice3" value="0" />

                              </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" onclick="lifeChoice(3, 200)">Yes</button>
                                <button type="button" class="btn btn-info" onclick="lifeChoice(3, 0)">No</button>

                            </div>
                        </div>
                    </div>
                </div>

              
            
            
            <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                Child’s school fees <div class="right_round">
                                    <div class="btn-group" role="group" aria-label="...">
                                    </div>
                                </div>

                                <input type="hidden" name="lifechoice4" id="lifechoice4" value="0" />

                              </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" onclick="lifeChoice(4, 1200)">Yes</button>
                                <button type="button" class="btn btn-info" onclick="lifeChoice(4, 0)">No</button>

                            </div>
                        </div>
                    </div>
                </div>

              
            
            <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"> <div class="panel-heading">
                                        <div class="panel-title">
                                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                                        </div> 
                                    </div></h4>
                            </div>
                            <div class="modal-body">
                                Child’s school fees <div class="right_round">
                                    <div class="btn-group" role="group" aria-label="...">
                                    </div>
                                </div>

                                <input type="hidden" name="lifechoice5" id="lifechoice5" value="0" />

                              </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" onclick="lifeChoice(5, 200)">Yes</button>
                                <button type="button" class="btn btn-info" onclick="lifeChoice(5, 0)">No</button>

                            </div>
                        </div>
                    </div>
                </div>

              
        </form>
        <script src="<%=request.getContextPath()%>/public/js/jquery.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/public/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/public/js/jquery.stepy.js" type="text/javascript"></script>

        <script src="<%=request.getContextPath()%>/public/js/ictc-game.js" type="text/javascript"></script>
        <script type="text/javascript">
                                    $(function () {
                                        $('form').stepy();



                                    });

        </script>
    </body>
</html>
