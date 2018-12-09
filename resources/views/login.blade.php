@include('partials.header');
<body>
    <div class="box">
        <div class="box-header" style="display:flex; justify-content:center;">
        <img src="views/img/logooficialisss.png" alt="">
        </div>
        <form id="frm-login">
            <div class="inputBox">
                <input type="text" name="usuario" id="usuario" autocomplete="off" required>
                <label>Ingresa tu usuario</label>
            </div>
            <div class="inputBox" >
                <input type="password" name="contrasena" id="contrasena" class="password" required>
                <label>Ingresa tu contraseña</label>
            </div>
            <!--<a href="index.php?c=login&a=registro">Registrarse</a>-->
            <button class="btn btn-primary btn-login" type="submit">Ingresar</button>
        </form>
    </div>
    
</body>
@include('partials.scripts');