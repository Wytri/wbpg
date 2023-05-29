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

                int coda=0;
                
                if(request.getParameter("listFun")!=null)
                coda=Integer.parseInt(request.getParameter("listFun"));
             %>   


            <h2 class="alert-default-info">Lista de Salas</h2>

            
        <center>
            <form action="" name="fr">
                
            <select name="listFun" required>
                    <option value="">Elegir</option>
                    <%
                       String xd="";
                       for (Funciones f: obj.lisfun()) {
                       if(f.getFuncion()==coda)
                            out.print("<option value="+f.getFuncion()+" selected>"+f.getFuncion()+" "+f.getInicio());
                        else
                            out.print("<option value="+f.getFuncion()+">"+f.getFuncion()+" "+f.getInicio());
                        }                  
                %>    
                </select>
                <input type="submit">
                
            </form><br>
                
                <%
                    if (request.getParameter("listFun")!=null) {
                         int c = Integer.parseInt(request.getParameter("listFun"));
                         
                        int[] asientos = new int[20];
                        String sala="";
                        for (Funciones ff: obj.lisfun()) {
                            for (Detalle pas : obj.lisasifun(c)) {
                                if (pas.getFuncion()== ff.getFuncion()) {
                                    sala = ff.getSala();
                                    
                                }
                            }
                        }
                        out.print(sala);
                            out.print("<br><br>");
                        for (int i = 0; i < asientos.length; i++) {
                            asientos[i] = i + 1;
                        }

                        for (int asiento : asientos) {
                            boolean ocupado = false;
                            for (Detalle pas : obj.lisasifun(c)) {
                                if (pas.getAsi()== asiento) {
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
    <a href="crud.jsp">Retornar</a><br>
    </body>
</html>