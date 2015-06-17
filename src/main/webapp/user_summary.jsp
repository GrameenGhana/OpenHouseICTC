<%-- 
    Document   : user_summary
    Created on : Jun 17, 2015, 3:21:10 PM
    Author     : Joseph George Davis
--%>

<%@page import="com.grameenfoundation.ictcgame.entities.Player"%>
<%@page import="com.grameenfoundation.ictcgame.utilities.ModelFactory"%>
<%@page import="com.grameenfoundation.ictcgame.utilities.FactoryId"%>
<%@page import="com.grameenfoundation.ictcgame.models.PlayerModel"%>
<%
   String code = null;
   
   Player player = new Player();
  try{
      code = request.getParameter("code");
      System.out.print(code);
      
      PlayerModel playerModel =(PlayerModel)ModelFactory.getModel(FactoryId.PLAYERGAME);
      player= playerModel.getPlayerByCode(code);
      
      
  }  
  catch(Exception e)
  {
      
  }


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Summary</title>
        <link href="<%=request.getContextPath()%>/public/css/jquery.stepy.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/public/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container" style="margin-left:250px">
            <div class="row">
                <div class="col-md-8">
                    <form  class="form-inline"  method="GET" action="user_summary.jsp" >
                        <div class="form-group">
                            <label for="crop" class="col-sm-4 control-label">Player Code</label>
                            <div class="col-sm-6">   
                                <input type="text" class="form-control" id="codes" name="code" placeholder="code" required/>
                            </div>
                        </div>
                         <div class="form-group">
                                    <label for="submit" class="col-sm-4 control-label"></label>
                                    
                                     <div class="col-sm-10">   
                                         <input type="submit" name="submit"  class="btn btn-info  btn-block" value="Submit"/>
                                    </div>
                                    
                         </div>
                        
                        
                       
                    </form>
                    
                </div>
                
                
            </div>
            <div class="row">
                 <div class="col-md-8">
                    <table class="table-striped" width="75%">
                        <thead>
                            <tr>

                                <th>Stage</th>  
                                <th>Amount Used</th> 
                            </tr>
                        </thead>

                        <tbody>
                           <tr>
                                <td>
                                    Stage 1
                                </td>
                                <td><%=player.getStage1Agro()%></td>
                            </tr>
                            <tr>
                                <td>
                                    Stage 2
                                </td>
                                <td><%=player.getStage2Agro()  %></td>
                            </tr>
                            <tr>
                                <td>
                                    Stage 3
                                </td>
                                <td><%=player.getStage3Agro()%></td>
                            </tr>
                            <tr>
                                <td>
                                    Stage 4
                                </td>
                                <td><%=player.getStage4Agro()%></td>
                            </tr>
                             <tr>
                                <td>
                                    Stage 5
                                </td>
                                <td><%=player.getStage5Agro()%></td>
                            </tr>
                            <tr>
                                <td>
                                    Revenue
                                </td>
                                <td><%= player.getRevenue() %></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <script src="<%=request.getContextPath()%>/public/js/jquery.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/public/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
