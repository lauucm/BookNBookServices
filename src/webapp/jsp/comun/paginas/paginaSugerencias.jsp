<html>
<head>
    <title>Book N Book: Descubrir</title>
	<meta charset="UTF-8">
    <script src="https://use.fontawesome.com/releases/v5.12.0/js/all.js" data-auto-replace-svg="nest"></script>
    <script src="https://kit.fontawesome.com/6c0d70b43d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%@ include file="../encabezado/encabezado.jsp" %>

    <!-- FORMULARIO -->
    <section class="vh-100" style="background-color: #C0ECEF;">
          <div class="container py-5 w-50 h-100">
            <div class="justify-content-center align-items-center h-100">
                <form action="/BookNBookServices/libroTematicaServlet" method="POST">
                    <div class="mb-3">
                      <label for="exampleFormControlInput1" class="form-label">Correo</label>
                      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div>
                    <div class="mb-3">
                      <label for="exampleFormControlTextarea1" class="form-label">Mensaje de sugerencia:</label>
                      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                      <input type="submit" value="Enviar" class="btn btn-info btn-lg btn-block" style="background-color: #2fc0ca;"/>
                    </div>
                </form>
            </div>
          </div>
        </section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>