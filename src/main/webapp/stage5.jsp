<%-- 
    Document   : stage5
    Created on : Jun 16, 2015, 1:59:14 PM
    Author     : Joseph George Davis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pre and Post Harvest</title>
          <link href="<%=request.getContextPath()%>/public/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/public/js/jquery-2.1.0.min.js" type="text/javascript"></script>
    </head>
    <body>
       <div class="container">
            <div class="row">
                <form  class="form-horizontal"  method="POST" action="<%=request.getContextPath()%>">
                    <table>
                        <tr>
                            <td>
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
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="" checked>
                                                    Good Post Harvesting
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                    Bad Post Harvesting
                                                </label>
                                            </div>
       
                                        </div>

                                    </div>
                                </div>
                            </td>

                            <td>


                            </td>
                        </tr>
                        <tr>
                            <td>
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
                                                    <input type="radio" name="optionsRadios1" id="optionsRadios2" value="option1" checked>
                                                     Child’s school fees
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios1" id="optionsRadios2" value="option1" checked>
                                                    Child’s medical bill
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios1" id="optionsRadios2" value="option1" checked>
                                                   The death of a close friend/relative
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <span class="glyphicon glyphicon-grain"></span>Loan

                                            </div> 
                                        </div>

                                        <div class="panel-body">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios2" id="optionsRadios3" value="option1">
                                                    Take a loan
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                        </tr>
                        <tr>
                            <td>

                                <div class="col-sm-4">   
                                    <input type="submit" name="submit"  class="btn btn-info btn-sm btn-block" value="Submit"/>
                                    <input type="hidden" name="action" value ="ADD"/>
                                </div>  
                                
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>

        <script src="<%=request.getContextPath()%>/public/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
