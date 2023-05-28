<%-- 
    Document   : pagSala
    Created on : 27/05/2023, 08:50:59 PM
    Author     : henry
--%>

<%@page import="modelo.*"%>
<%@page import="Controlador.Control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body {
              background-color: rgb(233, 233, 213);
              font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            p {
              display: flex;
              align-items: center;
            }

            label {
              margin-left: 0.5rem;
            }

            .mycheck {
                border: 3px solid red;
                background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
                background-size: 100% 100%;
                background-position: center;
                background-repeat: no-repeat;
                width: 300px;
                height: 300px;
                appearance: none;
                display: inline-block;
                vertical-align: middle;
                background-origin: border-box;
                padding: 0;
                user-select: none;
                flex-shrink: 0;
                color: #2563eb;
                background-color: #888;
                border-color: #6b7280;
                border-width: 1px;
            }

            .mycheck {
                cursor: pointer;
                background-color: #fff;
                background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
                width: 48px;
                height: 48px;
                appearance: none;
                border: 2px solid #888;
                transition: background-color 0.3s ease-in-out;
                pointer-events: none;
            }

            .mycheck:checked {
              background-color: rgb(236 72 153);
            }

            .mycheck:focus {
              border-color: rgb(80, 67, 250);
            }

            .mycheck:disabled {
              background-color: rgb(198, 198, 198);
              background-image: none;
            }

            .mycheck:disabled:checked {
              background-color: rgb(198, 198, 198);
              background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
            }

            .mycheck2 {
              cursor: pointer;
              background-color: #fff;
              color: #fff;
              background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e");
              width: 24px;
              height: 24px;
              appearance: none;
              border: 2px solid #888;
              background-position: 0 -2rem;
              background-size: 100%;
              background-repeat: no-repeat;
              transition: all 0.3s ease-in-out;
            }

            .mycheck2:checked {
              background-color: rgb(75, 156, 13);
              color: rgb(75, 156, 13);
              background-position: 0 0;
            }
        </style>
    </head>
    <body>
            <h1>Ejercicio 1 - Listar Salas (DEPENDINETE)!</h1>
             <%
                Control obj = new Control();
                String code="",coda="";
                if(request.getParameter("cbe")!=null)
                code=request.getParameter("cbe");

                if(request.getParameter("cba")!=null)
                coda=request.getParameter("cba");
             %>   


            <h2 class="alert-default-info">Lista de Salas</h2>

            <a href="crud.jsp">Retornar</a><br>
        <center>
            <form action="" name="fr">
                <select name="listCla" required>
                    <option value="">Elegir</option>
                    <%
                       String sala="";
                       for (Sala x: obj.lisala()) {
                       if(x.getSala().equals(code))
                            out.print("<option value="+x.getSala()+" selected>"+x.getSala());
                        else
                            out.print("<option value="+x.getSala()+">"+x.getSala());
                  }                  
                %>    
                </select>
                <input type="submit">
            </form><br>
                
                <%
                    if (request.getParameter("listCla")!=null) {
                         String c = request.getParameter("listCla");
                         
                        int[] asientos = new int[20];
                        for (int i = 0; i < asientos.length; i++) {
                            asientos[i] = i + 1;
                        }

                        for (int asiento : asientos) {
                            boolean ocupado = false;
                            for (Asiento pas : obj.lisasibus(c)) {
                                if (pas.getAsiento() == asiento) {
                                    ocupado = true;
                                    break;
                                }
                            }
                            if (asiento==6 || asiento==11 || asiento==16) {
                                    out.print("<br><br>");
                                }
                            
                            if (asiento<10) {
                                if (!ocupado) {
                                    out.print("<input type='checkbox' class='mycheck' name='box' value="+asiento+">0"+asiento);

                                }else{
                                        out.print("<input type='checkbox' class='mycheck' name='box' value="+asiento+" checked='checked'>0"+asiento);
                                    }
                            }else{
                            if (!ocupado) {
                                out.print("<input type='checkbox' class='mycheck' name='box' value="+asiento+">"+asiento);

                            }else{
                                    out.print("<input type='checkbox' class='mycheck' name='box' value="+asiento+" checked='checked'>"+asiento);
                                }
                            }  
                        }
                    }
                %>   
        </center>        
    </body>
</html>
