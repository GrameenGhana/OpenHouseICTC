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
                        <label class="pull-right">Amount:400</label>
                    </div> 
                </div>

                <div class="panel-body">
                    <div class="radio">
                        <label>
                            <input type="radio" name="agrostage1" id="optionsRadios1" value="290">
                            Herbicide and HandHoe
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="agrostage1" id="optionsRadios1" value="150">
                            Hand Hoeing
                        </label>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="panel-title">
                        <span class="glyphicon glyphicon-grain"></span>Life Choices

                    </div> 
                </div>

                <div class="panel-body">
                    <div class="radio">
                        <label>
                            <input type="radio" name="lifechoice1" id="optionsRadios1" value="200" checked>
                            Child’s school fees
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
                          <label class="pull-right">Amount:400</label>
                      </div> 
                  </div>

                  <div class="panel-body">
                      <div class="radio">
                          <label>
                              <input type="radio" name="agrostage2" id="optionsRadios1" value="180">
                              Certified seed of improved variety
                          </label>
                      </div>
                      <div class="radio">
                          <label>
                              <input type="radio" name="agrostage2" id="optionsRadios1" value="20" >
                              Farmer saved seed of local variety
                          </label>
                      </div>
                  </div>

              </div>
          </div>
      </div>
      <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                        </div> 
                    </div>

                    <div class="panel-body">
                        <div class="radio">
                            <label>
                                <input type="radio" name="lifechoice2" id="optionsRadios1" value="3">
                                Child’s school fees
                            </label>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      
      <div class="row">
          <div class="col-md-12">
              <div class="panel panel-primary">
                  <div class="panel-heading">
                      <div class="panel-title">
                          <span class="glyphicon glyphicon-grain"></span>Loan

                      </div> 
                  </div>

                  <div class="panel-body">
                     
                      <div class="form-group">
                          <label for="loan" class="col-sm-4 control-label">Loan</label>
                          <div class="col-sm-6">   
                              <select class="form-control" name="loan" id="season">
                                  <option>Choose amount</option>
                                  <option>400</option>
                                  <option>500</option>
                              </select>
                          </div>
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
                                                <label class="pull-right">Amount:400</label>
                                            </div> 
                                        </div>

                                        <div class="panel-body">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="agrostage3" id="optionsRadios1" value="370">
                                                    Herbicide + Hoe Weeding
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="agrostage3" id="optionsRadios1" value="170">
                                                    Hoe weeding
                                                </label>
                                            </div>
                                           
                                        </div>

                                    </div>
                                </div>
        
    </div>
    
    
    <div class="row">
         <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                        </div> 
                    </div>

                    <div class="panel-body">
                        <div class="radio">
                            <label>
                                <input type="radio" name="lifechoice3" id="optionsRadios1" value="300" checked>
                                Child’s school fees
                            </label>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    
    <div class="row">
          <div class="col-md-12">
              <div class="panel panel-primary">
                  <div class="panel-heading">
                      <div class="panel-title">
                          <span class="glyphicon glyphicon-grain"></span>Loan

                      </div> 
                  </div>

                  <div class="panel-body">
                     
                      <div class="form-group">
                          <label for="loan" class="col-sm-4 control-label">Loan</label>
                          <div class="col-sm-6">   
                              <select class="form-control" name="loan" id="season">
                                  <option>Choose amount</option>
                                  <option>400</option>
                                  <option>500</option>
                              </select>
                          </div>
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
                         <label class="pull-right">Amount:400</label>
                     </div> 
                 </div>

                 <div class="panel-body">
                     <div class="radio">
                         <label>
                             <input type="radio" name="agrostage4" id="optionsRadios1" value="800">
                             Fertilizer
                         </label>
                     </div>
                     <div class="radio">
                         <label>
                             <input type="radio" name="agrostage4" id="optionsRadios1" value="200">
                             Minimum Fertilizer Application
                         </label>
                     </div>

                 </div>

             </div>
         </div>
     </div>
     <div class="row">
          <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                        </div> 
                    </div>

                    <div class="panel-body">
                        <div class="radio">
                            <label>
                                <input type="radio" name="lifechoice4" id="optionsRadios1" value="3">
                                Child’s school fees
                            </label>
                        </div>
                    </div>
                </div>
            </div>
         
     </div>
     
     <div class="row">
          <div class="col-md-12">
              <div class="panel panel-primary">
                  <div class="panel-heading">
                      <div class="panel-title">
                          <span class="glyphicon glyphicon-grain"></span>Loan

                      </div> 
                  </div>

                  <div class="panel-body">
                     
                      <div class="form-group">
                          <label for="loan" class="col-sm-4 control-label">Loan</label>
                          <div class="col-sm-6">   
                              <select class="form-control" name="loan" id="season">
                                  <option>Choose amount</option>
                                  <option>400</option>
                                  <option>500</option>
                              </select>
                          </div>
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
                          <label class="pull-right">Amount:400</label>
                      </div> 
                  </div>

                  <div class="panel-body">
                      <div class="radio">
                          <label>
                              <input type="radio" name="agrostage5" id="optionsRadios1" value="160">
                              Good Post Harvesting
                          </label>
                      </div>
                      <div class="radio">
                          <label>
                              <input type="radio" name="agrostage5" id="optionsRadios1" value="60">
                              Bad Post Harvesting
                          </label>
                      </div>

                  </div>

              </div>
          </div>
      </div>
      
      <div class="row">
          <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <span class="glyphicon glyphicon-grain"></span>Life Choices

                        </div> 
                    </div>

                    <div class="panel-body">
                        <div class="radio">
                            <label>
                                <input type="radio" name="lifechoice5" id="optionsRadios1" value="3">
                                Child’s school fees
                            </label>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      
      
      <div class="row">
        
          <div class="col-md-12">
              <div class="panel panel-primary">
                  <div class="panel-heading">
                      <div class="panel-title">
                          <span class="glyphicon glyphicon-grain"></span>Loan

                      </div> 
                  </div>

                  <div class="panel-body">

                      <div class="form-group">
                          <label for="loan" class="col-sm-4 control-label">Loan</label>
                          <div class="col-sm-6">   
                              <select class="form-control" name="loan" id="season">
                                  <option>Choose amount</option>
                                  <option>400</option>
                                  <option>500</option>
                              </select>
                          </div>
                      </div>
                  </div>
              </div>
          </div>


      </div>
  </fieldset>   

 <input type="submit" value="submit" />
</form>
          <script src="<%=request.getContextPath()%>/public/js/jquery.min.js" type="text/javascript"></script>
          <script src="<%=request.getContextPath()%>/public/js/bootstrap.min.js" type="text/javascript"></script>
           <script src="<%=request.getContextPath()%>/public/js/jquery.stepy.js" type="text/javascript"></script>
          <script type="text/javascript">
              $(function(){
                $('form').stepy();  
                
                
                
              });
                    
          </script>
    </body>
</html>
