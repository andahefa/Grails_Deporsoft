
<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Libro</title>
	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="font-awesome.min.css"/>
	<asset:stylesheet src="nprogress.css"/>
	<asset:stylesheet src="bootstrap-progressbar-3.3.4.min.css"/>
	<asset:stylesheet src="jqvmap.min.css"/>
	<asset:stylesheet src="daterangepicker.css"/>
	<asset:stylesheet src="custom.min.css"/>
</head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <g:render template="/templates/sideBar"/>
        <!-- top navigation -->
        <g:render template="/templates/navBar"/>
        <!-- /top navigation -->
        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#nuevoCampeonato">Nuevo Campeonato</button>
            <!--Modal Campeonato-->
            <div id="nuevoCampeonato" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Datos Nuevo Campeonato</h4>
                        </div>
                        <div class="modal-body">
                            <label>Nombre Campeonato</label>
                            <input type="text" class="form-control" id="nameCampeonato">
                            <label>Cantidad minima Equipos</label>
                            <input type="number" class="form-control" id="cantMinEquipos">
                            <label>Fecha de Incio Inscripción</label>
                            <input type="date" class="form-control" id="fechaIniInscripcion">
                            <label>Fecha Fin de Inscripción</label>
                            <input type="date" class="form-control" id="fechaFinInscripcion">
                            <label>Fecha Inicio Campeonato</label>
                            <input type="date" class="form-control" id="fechaIniCampeonato">
                            <label>Fecha Fin Campeonato</label>
                            <input type="date" class="form-control" id="fechaFinCampeonato" >
                            <label>Organizador del Campeonato</label>
                            <input type="text" class="form-control" id="organizadorCampeonato" >
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-primary" onclick="guardarCampeonato()" value="guardar"></input>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
                <table class="table table-bordered">
                    <thead>
                        <th>Id</th>
                        <th>Nombre Campeonato</th>
                        <th>Cantidad Minima Equipos</th>
                        <th>Fecha Inicio Inscripción</th>
                        <th>Fecha Fin Inscripción</th>
                        <th>Fecha Inicio Campeonato</th>
                        <th>Fecha Fin Campeonato</th>
                        <th>Edición</th>
                    </thead>
                    <tbody>
                        <g:each in="${listaCampeonatos}" var="lista">
                            <tr>
                                <td>${lista.id}</td>
                                <td>${lista.nombre}</td>
                                <td>${lista.cantMinEquipos}</td>
                                <td>${lista.fechaIniInscrip}</td>
                                <td>${lista.fechaFinInscrip}</td>
                                <td>${lista.fechaIniCamp}</td>
                                <td>${lista.fechaFinInscrip}</td>
                                <td><input type="button" id="Editar" value="Editar" class="btn btn-warning"></td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>
        </div>
    </div>
        <!-- footer content -->
    <g:render template="/templates/footer"/>
        <!-- /footer content -->
    </div>  
    <!-- jQuery -->

<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
<script type="text/javascript">
    function guardarCampeonato(){
        var nameCampeonato = $('#nameCampeonato').val()
        var cantMinEquipos = $('#cantMinEquipos').val()
        var fechaIniInscripcion = $('#fechaIniInscripcion').val()
        var fechaFinInscripcion = $('#fechaFinInscripcion').val()
        var fechaIniCampeonato = $('#fechaIniCampeonato').val()
        var fechaFinCampeonato = $('#fechaFinCampeonato').val()
        var organizador = $('#organizadorCampeonato').val()
        if(nameCampeonato == ''){
            alert('Debe ingresar el Nombre del campeonato')
        }
        else if(cantMinEquipos == ''){
            alert('Debe ingresar la cantidad minima de equipos')
        }
        else if(fechaIniInscripcion == ''){
            alert('Debe ingresar la fecha de inicio de inscripcion')
        }
        else if(fechaFinInscripcion == ''){
            alert('Debe ingresar la fecha fin de inscripcion')
        }
        else if(fechaIniCampeonato == ''){
            alert('Debe ingresar la fecha de inicio del campeonato')
        }
        else if(fechaFinCampeonato == ''){
            alert('Debe ingresar la fecha fin del campeonato')
        }
        else if(organizador == ''){
            alert('Debe ingresar el organizador')
        }
        else{
            $.ajax({
                method:'POST',
                url:"${createLink(controller:'campeonatos', action:'save')}",
                data:{
                    name:nameCampeonato,
                    cantidadMinimaEquipos:cantMinEquipos,
                    fechaInicioInscripcion:fechaIniInscripcion,
                    fechaFinInscripcion:fechaFinInscripcion,
                    fechaInicioCampeonato:fechaIniCampeonato,
                    fechaFinCampeonato:fechaFinCampeonato,
                    organizador:organizador
                },
                success:function(result){
                    var resultado=result
                },
                error:function(status, text, result, xhr) {
                            console.log(status.responseText)
                }
            })
    }   }
</script>
<asset:javascript src="fastclick.js"/>
<asset:javascript src="nprogress.js"/>
<asset:javascript src="green.js"/>

<asset:javascript src="Chart.min.js"/>
<asset:javascript src="gauge.min.js"/>
<asset:javascript src="bootstrap-progressbar.min.js"/>
<asset:javascript src="icheck.min.js"/>

<asset:javascript src="jquery.flot.js"/>
<asset:javascript src="jquery.flot.pie.js"/>
<asset:javascript src="jquery.flot.time.js"/>
<asset:javascript src="jquery.flot.stack.js"/>
<asset:javascript src="jquery.flot.resize.js"/>
<asset:javascript src="jquery.flot.orderBars.js"/>
<asset:javascript src="jquery.flot.spline.min.js"/>
<asset:javascript src="curvedLines.js"/>
<asset:javascript src="date.js"/>
<asset:javascript src="jquery.vmap.js"/>
<asset:javascript src="jquery.vmap.world.js"/>
<asset:javascript src="jquery.vmap.sampledata.js"/>

<asset:javascript src="moment.min.js"/>
<asset:javascript src="daterangepicker.js"/>
<asset:javascript src="custom.min.js"/>
</body>
</html>