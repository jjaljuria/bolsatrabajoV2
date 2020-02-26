<?php include("includes/headerTrabajador.php") ?>

<!-- <?php include("includes/sesionTrabajador.php") ?> -->

<!-- Modal -->
<div class="modal fade" id="subirFoto" tabindex="-1" role="dialog" aria-labelledby="exampleModal3Label" aria-hidden="true">
</div>

<?php 
    $idusuarios = $_SESSION['idusuarios'];
    $query = "SELECT nombre, apellido from usuarios where idusuarios = '$idusuarios'";
    $rsQuery = mysqli_query($conexion, $query) or die(mysqli_error($conexion));
    $fila = mysqli_fetch_assoc($rsQuery);
?>



<div class="container mt-3">
    <div class="row text-center">
        <div class="col-md-6">
            <!-- FOTO DE PERFIL -->

            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <div class="contenedor-foto-perfil my-4" data-toggle="modal" data-target="#subirFoto">
                            <img src="" alt="perfil" class="responsive bg-white" id="fotoPerfil" style="border-radius: 5%">
                            <div class="texto-editar bg-white">Editar</div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"> <h3 class="p-3 mb-5 bg-white"><?php echo $fila["nombre"]; ?></h3> </h5>
                            <hr>
                            <h3 style="margin-top: -70px" class="card-title p-3 mb-5 bg-white"><?php echo $fila["apellido"]; ?></h3>
                            
                            
                        </div>
                    </div>
                </div>
            </div>


<h1 class="text-center bg-dark">Habilidades</h1>
            <div class="card card-body" data-toggle="modal">

              <form id="habilidades" class="card card-body needs-validation" novalidate>
              <input type="hidden" id="habilidadId" name="habilidadId">
                  <div class="form-group">
                      <input type="text" id="habilidad" name="habilidad" placeholder="Ingresa una habilidad" class="form-control" maxlength="100">
                  </div>

                <div class='form-group'>
 
                        <label class='form-control' for='nivelHabilidad'>Nivel Habilidad</label>
                        <select class='form-control' id='nivelHabilidad' name='nivelHabilidad'>
                    
                        <option value='Basico'>Basico</option>
                        <option value='Intermedio'>Intermedio</option>
                        <option value='Avanzado'>Avanzado</option>
                        </select>

                </div>
                  

                  <button class="btn btn-success" id="btnHabilidad">Agregar</button>
              </form>


            </div>
            
            <div id="mostrar" style="max-height: 23rem;overflow: auto;">
               
            </div>

           

            <h1 class="text-center bg-dark">Experiencias Laborales</h1>
            <div class="bg-white p-3 rounded mb-2">
            <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal" id="anadirExp">
                    Añadir experiencia Laboral
                </button>
            </div>
            <div id="experiencia" style="max-height: 23rem; overflow: auto;">

            </div>


        </div>

        <!-- formulario de datos -->

        <div class="col-md-6">


            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-center" id="exampleModalLabel">Añade tu experiencia Laboral</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form class="card card-body needs-validation" id="formularioExperiencia" novalidate>
                                <input type="hidden" id="experienciaID" name="experienciaID">
                                <div class="form-group">
                                    <input type="text" name="expEmpresa" id="expEmpresa" placeholder="Empresa" class="form-control" required maxlength="100">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="expPais" id="expPais" placeholder="País" class="form-control" required maxlength="50">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="expSector" id="expSector" placeholder="Sector de Empresa" class="form-control" title="Por favor" required maxlength="100">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="expArea" id="expArea" placeholder="Área que laboró" class="form-control" title="Por favor" required maxlength="100">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="expLabor" id="expLabor" placeholder="Funciones realizadas" class="form-control" title="Por favor" required maxlength="100">
                                </div>

                                <div class="row">

                                    <div class="col-md-6 form-group">
                                        <input placeholder="Fecha de inicio" type="text" class="form-control" name="expFechaIni" id="expFechaIni" required autocomplete="off">
                                    </div>

                                    <div class="col-md-6 form-group">
                                        <input type="text" autocomplete="off" placeholder="Fecha de culminacion" class="form-control" name="expFechaFin" id="expFechaFin" required>
                                    </div>
                                </div>



                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" id="cerrar-modal" data-dismiss="modal">Cerrar</button>
                            <button id="guardar" class="btn btn-primary" form="formularioExperiencia" type="submit">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>            
            <div class="">
                <?php include("includes/mostrarDescripcion.php") ?>
            </div>
        
            <div class="card">
                <!-- card-body para un espaciado interno entre los componentes -->
                <div class="card-body col-12">
                    <?php include("includes/datosPersonales.php") ?>
                </div>

            </div>
        </div>
    </div>
</div>

<?php include("includes/footer.php") ?>
<script src="js/validaciones.js"></script>
<script src="js/perfilTrabajador.js"></script>
<script>
    $(document).ready(function() {
        var maximaFechaInicio = new Date();
        var minimoFechaInicio = new Date(maximaFechaInicio.getFullYear()-18, 
        maximaFechaInicio.getMonth(), maximaFechaInicio.getDate());


        $.datepicker.regional['es'] = {
closeText: 'Cerrar',
prevText: '<Ant',
nextText: 'Sig>',
currentText: 'Hoy',
monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
weekHeader: 'Sm',
dateFormat: 'dd/mm/yy',
firstDay: 1,
isRTL: false,
showMonthAfterYear: false,
yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['es']);

        $("#expFechaIni").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1970:' + 2020,
            dateFormat: "yy-mm-dd",
            maxDate: "0",
        }).keydown(function(e){
            e.preventDefault();
	    });


        $("#expFechaFin").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1970:' + 2020,
            dateFormat: "yy-mm-dd",
            maxDate: "0"
        }).keydown(function(e){
            e.preventDefault();
        });

        $("#fechaNacimiento").datepicker({
            changeMonth: true,
            changeYear: true,
            maxDate: '0',
            yearRange: '1950:' + 2002,
            dateFormat: "yy-mm-dd",
            maxDate: minimoFechaInicio
        }).keydown(function(e){
            e.preventDefault();
        });

        $("#fechaNacimiento").change(() => {
            $.ajax({
                type: "POST",
                data: "fecha=" + $("#fechaNacimiento").val(),
                url: "includes/calcularEdad.php",
                success: (r) => {

                    $("#edadCalculada").text(r + " años")

                }
            })
        })
    })
</script>

<script src="js/habilidad.js"></script>
<script src="js/direcciones.js"></script>
