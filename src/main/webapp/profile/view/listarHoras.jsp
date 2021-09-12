<%@page import="bean.Login_Bean"%>
<%@page import="bean.Agenda_Bean"%>
<%@page import="modal.listar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">    
 <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<title>Home</title>
</head>
<body>
 <%
 Login_Bean obj_Login_Bean=(Login_Bean)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
 session.setAttribute("login_message", "Por favor, iniciar sesión");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8070/clinica/index.jsp";
 </script>
 <% 
 }else{
 %>
 <nav class="navbar navbar-expand-sm navbar-light bg-light" aria-label="Third navbar example">
    <div class="container-fluid">
      <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav me-auto mb-2 mb-sm-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="http://localhost:8070/clinica/profile/view/Home.jsp">Inicio</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="http://localhost:8070/clinica/profile/view/ingresarCliente.jsp" >Registrar Cliente</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="http://localhost:8070/clinica/profile/view/listarHoras.jsp" >Listar Horas</a>
          </li>
        </ul>
        <form>
          <a href="http://localhost:8070/clinica/Signoutcontroller" id="salir" class="btn btn-outline-secondary">
            Salir
          </a>
        </form>
      </div>
    </div>
  </nav>
<center>
<h2 >Agenda de Horas</h2>
</center>
 <div class="mt-5 row d-flex justify-content-center">                               
              <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-10">    
                  <table class="table table-bordered border-dark text-center mt-4">
                  <thead>
                     <tr class="bg-secondary text-white">
                       <th scope="col">Id Mascota</th>
                       <th scope="col">Nombre Mascota</th>
                       <th scope="col">Rut Dueño</th>            
                       <th scope="col">Fecha</th>  
                       <th scope="col">Hora</th>          
                     </tr>
                   </thead>
                   <tbody>
                   <% 
                   listar l=new listar();
                   List<Agenda_Bean>list=l.listarAgenda();
                   Iterator<Agenda_Bean>iter=list.iterator();
                   Agenda_Bean agenda=null;
                   while(iter.hasNext()){
                	   agenda=iter.next();
                   %>
                        <tr>
                          <td><%= agenda.getIdMascota() %></td>
                          <td><%= agenda.getNombreMascota() %></td>
                          <td><%= agenda.getRut() %></td>
                          <td><%= agenda.getFecha() %></td>
                          <td><%= agenda.getHora() %></td>
                        </tr>
                      <% } %>
                   </tbody>
                 </table>
                </div>
              </div>
              </div>
<%
 }
%>
</body>
</html>