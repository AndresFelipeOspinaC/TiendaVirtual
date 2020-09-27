<?php
session_start();
if(isset($_SESSION["usuario"])){
?>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Administrador MT</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link href="admin.css"rel="StyleSheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.php" class="nav-link">Nosotros</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Productos</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
 </nav>
 <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="paneladministrador.php" class="brand-link">
      <img src="../Imagenes/logomt.PNG" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin Mis Trapitos</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../Imagenes/logomt.PNG" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="paneladministrador.php" class="d-block"><?php echo"Bienvenido"." ".$_SESSION["usuario"]."<a href='logout.php'> Salir </a>"?></a>
        </div>
      </div>
      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>
      <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="paneladministrador.php" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312654">Tablero Principal</p>
            </a>
             </li><li class="nav-item">
                <a href="administrarusuario.php" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">Administrar Usuarios</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="administraproducto.php" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">Administrar Productos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="PQRS.php" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">PQR'S</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="administraproducto.php" class="nav-link disabled">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">Inventario</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="administraproducto.php" class="nav-link disabled">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">Mis Contactos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="paneladministrador.php" class="nav-link disabled">
                <i class="nav-icon fas fa-tachometer-alt"></i>
              <p _msthash="2925169" _msttexthash="312754">Realizar Pedido</p>
                </a>
              </li>
           </ul>
          </nav>
      <!-- /.sidebar-menu -->
      </div>
    </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  <main class="container p-4">
  <div class="row">
  </div>
    <div class="col-md-8">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>ID_Producto</th>
            <th>Nombre_Producto</th>
            <th>Imagen_Producto</th>
            <th>Talla</th>
            <th>Color</th>
            <th>Material</th>
            <th>precio</th>
            <th>Categoria</th>
            <th>Clasificacion</th>
            <th>Descripcion</th>
            <th>Acción</th>
          </tr>
        </thead>
        <tbody>
          <?php

          $id= $_GET["id"];

          $conectar = mysqli_connect("localhost","root","","trapitos");

          $query = "SELECT ID_Producto, Nombre_Producto, Imagen_Producto, Talla, Color, Material, precio, Nombre_Categoria, Nombre_Clasificacion,
          Descripcion 
          FROM producto
          join categoria on producto.ID_categoria = categoria.ID_Categoria
          join clasificacion on producto.ID_clasificacion = clasificacion.ID_Clasificacion
          where ID_Producto='$id'";
          $result_tasks = mysqli_query($conectar,$query);    

          while($row = mysqli_fetch_array($result_tasks)) { ?>
           <form  action="productoactualizado.php?id=<?php echo $row['ID_Producto'] ?>" method="POST"
           enctype="multipart/form-data" >
          <tr>
            <td> <input type="text" name="Producto"  value="<?php echo $row['ID_Producto']; ?>" /></td>
            <td> <input type="text" name="Nombre"   value="<?php echo $row['Nombre_Producto']; ?>"/></td>
            <td><img src="<?php echo $row['Imagen_Producto']?>" width=100 height=100 alt="foto"/> 
            <input type="file" name="Imagen" />
            </td>
            <td> <input type="text" name="Talla"   value="<?php echo $row['Talla']; ?>" /></td>
            <td> <input type="text" name="Color"   value="<?php echo $row['Color']; ?>" /></td>
            <td><input type="text" name="Material"   value="<?php echo $row['Material']; ?>"/></td>
            <td><input type="text" name="precio2"   value="<?php echo $row['precio']; ?>"/></td>
            <td>  <select name="Categoria">
            <option> <?php echo $row['Nombre_Categoria']?> </option>
            <?php
            
            $concat = "SELECT Nombre_Categoria from categoria
            where ID_Categoria <> '$row[Nombre_Categoria]'";
           
           $conscat = mysqli_query($conectar,$concat);

           while ($conscatrray = mysqli_fetch_array($conscat)) {

               echo "<option> $conscatrray[Nombre_Categoria] </option>";


           };



            ?>
            </select>
            </td>
            <td><select name="Clasificacion"> 
            <option> <?php echo $row['Nombre_Clasificacion']; ?> </option>
            <?php
            
            $concla = "SELECT Nombre_Clasificacion from clasificacion
            where ID_Clasificacion <> '$row[Nombre_Clasificacion]'";
           
           $conscla = mysqli_query($conectar,$concla);

           while ($consclarray = mysqli_fetch_array($conscla)) {

               echo "<option> $consclarray[Nombre_Clasificacion] </option>";


           };



            ?>
            
            
            </select>
            </td>

            <td><input type="text" name="Descripcion"   value="<?php echo $row['Descripcion']; ?>"/></td>
            <td>
            <input type="submit" value="Actualizar Datos"  class="btn btn-secondary" class="botones"/>
                
                <a href="administaproducto.php" class="btn btn-danger" class="botones">
                 Volver Administrar Productos
                </a>
              </a>
            </td>
          </tr>
          </form>
          <?php } ?>
        </tbody>
      </table>
    </div>
    <!-- 
<div class="containerform">
<form action="save.php" method="POST" enctype="multipart/form-data">

Código del Producto <input type="text" name="Producto" placeholder="Escriba el Código del Producto" />

Nombre del Producto: <input type="text" name="Nombre_Producto" id="Nombre_Producto">

Imagen del Producto: <input type="file" name="Imagen" >
Talla: <input type="text" name="Talla" id="Talla">
Color: <input type="text" name="Color" id="Color">
Material: <input type="text" name="Material" id="Materia">
precio: <input type="text" name="precio" id="precio">
Descripcion: <input type="text" name="Descripcion" id="Descripcion">
Categoria: <select name="ID_categoria" id="ID_categoria"> 
        <option>Chaquetas</option>
        <option>Pantalones</option>
        <option>Formal</option>
        <option>Informal</option>
        <option >Blusa</option>
         </select></br>
Clasificacion: <select name="ID_clasificacion" id="ID_clasificacion"> 
        <option>Unisex</option>
        <option>Mujeres</option>
        <option>Niños</option>
        <option>Bebes</option>
        <option>Niñas</option>
        <option>Hombres</option>
         </select></br>
         <input type="submit" value="Guardar">
         
         
</form>
</div>
-->
</div>
</main>

    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">pagina pricipal</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Mis Trapitos</a></li>
              <li class="breadcrumb-item active">Administrador</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>


  <footer class="main-footer">
  <strong>Copyright &copy; 2018-2020 <a href="index.html">2 Version </a></strong>Mis Trapitos S.A
  </footer>
</div>

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
<?php
}else{
  header("location:../iniciarsesion.html");
}
?>