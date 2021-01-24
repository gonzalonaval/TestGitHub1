<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PM_mockup.aspx.cs" Inherits="TestGitHub1.PM_mockup" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>My Today Tasks</title>
    <style type="text/css">
        html,
        body {
            display: block;
            margin: 0px;
            height: 100%;
            overflow: hidden;
        }

        input {
            border-color: white;
            background-color: white;
            border-image: none;
            border-width: 0px;
            font-family: verdana, arial, sans-serif;
            font-size: 12px;
        }

        .pie {
            float: right;
            vertical-align: middle;
        }

        .footer {
            font-family: verdana, arial, sans-serif;
            font-size: 15px;
            padding-top: 4px;
            padding-bottom: 4px;
            padding-right: 4px;
            height: 20px;
            background-color: #f7f7f7;
            position: absolute;
            left: 0;
            bottom: 0;
            height: auto;
            width: 100%;
        }

        ul {
            list-style-type: none;
            padding: 0px;
            margin: 0px;
        }

        .contenido {
            display: block;
            overflow: hidden;
        }

        .Div_trabajo {
            display: block;
            overflow: hidden;
        }

        .text0 {
            font-family: verdana, arial, sans-serif;
            font-size: 16px;
            color: black;
            text-align: center;
        }

        .Tipo_Project {
            border-color: grey;
            border-width: 2px;
            border-bottom-width: 1px;
        }

        .Text_sel,
        .text_lateral {
            font-family: verdana, arial, sans-serif;
            font-size: 13px;
            text-align: center;
            color: #4c4c4c;
            height: 18px;
            padding: 4px;
            padding-right: 20px;
            vertical-align: middle;
            text-align: left;
        }

        .Text_nosel {
            font-family: verdana, arial, sans-serif;
            font-size: 14px;
            text-align: center;
            color: #4c4c4c;
            height: 18px;
            padding: 8px;
            padding-right: 20px;
            vertical-align: middle;
            text-align: center;
        }

        .text_lateral2 {
            font-family: verdana, arial, sans-serif;
            font-size: 12px;
            text-align: left;
            color: #4c4c4c;
            height: 18px;
            padding: 4px;
            padding-right: 20px;
            padding-left: 2px;
            vertical-align: middle;
            text-align: left;
        }

        .text2 {
            font-family: verdana, arial, sans-serif;
            font-size: 18px;
            text-align: center;
            color: grey;
        }

        .panel_superior {
            height: 50px;
            color: grey;
            width: 100%;
        }

        hr {
            width: 100%;
            position: relative;
            margin: 1px;
        }

        .panel_lateral {
            float: left;
            overflow-x: hidden;
            overflow-y: auto;
            position: absolute;
            background-color: #dcdcdc;
            box-sizing: border-box;
            border-right: 2px solid #e4dedc;
            background-color: #f7f7f7;
        }

        .panel_datos_css {
            height: 100%;
            overflow-x: auto;
            overflow-y: auto;
            position: absolute;
            box-sizing: border-box;
            background-color: white;
        }

        .panel_scroll_x {
            overflow-x: auto;
        }

        .panel_tiemposT {
            padding-right: 10px;
            padding-left: 10px;
            display: block;
        }

        .Sel_superior {
            margin: 0px;
            border: 0px;
            width: 150px;
            outline: none;
        }

        .Sel_superior0 {
            margin: 0px;
            border: 0px;
            background-color: white;
            width: 150px;
            outline: none;
        }

        .Sel_superior0:hover {
            background-color: #dcdcdc;
        }

        .Sel_lateral2 {
            font-weight: bold;
            background-color: #eeeeee;
        }

        .search_li:hover {
            background-color: white;
            font-weight: bold;
        }

        .panel1 {
            border: 1px;
            margin: 2px;
            margin-left: 15px;
            margin-right: 15px;
            background-color: #ece9e9;
        }

        .panel2 {
            border: 1px;
            margin: 2px;
            margin-left: 5px;
            margin-right: 5px;
            background-color: rgb(240, 247, 152);
            height: 140px;
            width: 240px;
        }

        .panel_lateral_plan {
            float: left;
            overflow-x: hidden;
            overflow-y: auto;
            position: absolute;
            background-color: #eeeeee;
            box-sizing: border-box;
            border-right: 2px solid #e4dedc;
        }


        .Titulo_proyecto {
            font-family: verdana, arial, sans-serif;
            font-size: 14px;
            text-align: left;
            color: #4c4c4c;
            height: 18px;
            padding: 15px;
            padding-right: 20px;
            padding-left: 2px;
            vertical-align: middle;
            border: 2px;
            border-color: gray;
            text-align: left;
        }

        .Menu_lateral {
            padding-top: 15px;
        }

        .row_ps {
            padding: 5px;
        }

        .Titulo_tabla {
            font-family: verdana, arial, sans-serif;
            font-size: 18px;
            padding-top: 9px;
            color: grey;
            text-align: left;
        }

        .cab_meses {
            font-family: verdana, arial, sans-serif;
            background-color: #f7f7f7;
            color: grey;
            font-size: 14px;
            height: 15px;
            border-width: 1px;
            border-color: #f7f7f79a;
            border-collapse: collapse;
            text-align: center;
            vertical-align: middle;
        }

        .fecha {
            width: 125px;
        }

        .cab_mes2 {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            text-align: center;
        }

        .cab_mes21 {
            max-width: 46px;
            overflow: hidden;
            text-overflow: ellipsis;
            text-align: center;
        }

        .cab_semanas {
            font-family: verdana, arial, sans-serif;
            background-color: #f7f7f7;
            font-size: 10px;
            height: 10px;
            max-width: 46px;
            text-align: center;
            vertical-align: middle;
        }

        .cab_border0 {
            border: 1px solid white;
            height: 20px;
        }

        .Fase_sel {
            padding-bottom: 7px;
            padding-top: 7px;
        }

        .Fase0 {
            padding-left: 0px;
            padding-right: 0px;
        }

        .Tabla_sin_espacios {
            border-collapse: separate;
            border-spacing: 0px;
        }

        .Tabla_con_bordes {
            border: 1px solid #f0f0f0;
            border-collapse: collapse;
        }

        TD {
            font-family: verdana, arial, sans-serif;
            font-size: 13px;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            text-align: left;
        }

        .Titulo1 {
            font-family: verdana, arial, sans-serif;
            font-size: 25px;
            color: black;
            margin: 20px;
            margin-left: 5px;
        }

        .Titulo2 {
            font-family: verdana, arial, sans-serif;
            font-size: 20px;
            color: black;
            margin: 20px;
            margin-left: 5px;
            margin-bottom: 5px;
        }

        .Cabecera1 {
            font-family: verdana, arial, sans-serif;
            font-size: 13px;
            height: 40px;
            color: rgb(26, 26, 26);
            margin: 20px;
            border-bottom: 2px solid grey;
            font-weight: normal;
            text-align: left;
        }

        .Fila1 {
            font-family: verdana, arial, sans-serif;
            font-size: 13px;
            height: 35px;
            color: rgb(26, 26, 26);
            margin: 20px;
            font-weight: normal;
            text-align: left;
        }

        .Clave {
            color: blue;
        }

        .Icono {
            vertical-align: bottom;
            margin: 3px;
        }

        .Filter {
            width: 260px;
            padding: 5px;
            margin-left: 20px;
            outline: none;
            border: 1px solid #999999;
            border-radius: 5px;
            background-color: #FBFBFB;
            font-family: verdana, arial, sans-serif;
            font-size: 14px;
            background: url(../Images/Buscar_azul2.png) no-repeat scroll;
            background-position: right;
            background-size: 12%;
        }

        .Filter:focus {
            background: none;
        }

        .Entrada {
            margin-right: 5px;
            width: 80%;
            padding-top: 1px;
            padding-bottom: 1px;
            padding-left: 4px;
            padding-right: 2px;
        }

        .Entrada_obl {
            width: 80%;
            padding-top: 1px;
            padding-bottom: 1px;
            padding-left: 2px;
            padding-right: 2px;
            border: 1px solid red;
        }

        /* ESTILOS DE PLANIFICACION COSTES PROYECTOS */
        .displayperfil {
            width: 190px;
            text-align: left;
            display: block;
            padding: 5px;
        }

        .TOTALES {
            font-weight: bold;
        }

        /* ESTILOS DE GESTION DE TIEMPOS */
        .T_but_text {
            font-family: Tahoma;
            font-size: 20px;
            color: grey;
            vertical-align: middle;
        }

        .T_header_table {
            font-family: Tahoma;
            font-size: 15px;
            color: #597bfc;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            text-align: left;
            background: #f7f7f7;
        }

        .T_header2 {
            font-family: verdana, arial, sans-serif;
            background-color: #e0e0e0;
            font-size: 15px;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            text-align: center;
            vertical-align: middle;
        }

        .T_row_p {
            font-family: Tahoma;
            font-size: 15px;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            text-align: left;
            background: white;
        }

        .T_row_o {
            font-family: Tahoma;
            font-size: 15px;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            text-align: left;
            background: #f7f7f7;
        }

        .T_valueh {
            width: 50px;
            height: 20px;
            float: left;
        }

        .T_valuesel {
            height: 20px;
            padding-left: 6px;
        }

        .T_Tipo_T {
            background-color: #deebf7;
        }

        .T_Tipo_PR {
            background-color: #cef1cb;
        }

        /* <-- proyectos */
        .T_Tipo_GR {
            background-color: #ffccff;
        }

        /* <-- MANTENIMIENTO GRUPO */
        .T_Tipo_F {
            background-color: #fbd1b2;
        }

        .T_Tipo_GES {
            background-color: #ffffcc;
        }

        /* <-- GESTION INTERNA */
        .T_Tipo_H {
            background-color: #f17c1a;
        }

        .T_myselect {
            font-family: verdana, arial, sans-serif;
            font-size: 14px;
            height: 20px;
            width: 110px;
            color: grey;
        }

        .T_Propuesta {
            font-family: Tahoma;
            font-size: 14px;
            vertical-align: central;
            border-width: 1px;
            border-color: #dcdcdc;
            border-collapse: collapse;
            text-align: center;
            height: 16px;
        }

        .T_Propuesta2 {
            background-color: #abf57e;
            font-family: Tahoma;
            font-size: 14px;
            vertical-align: central;
            border-width: 1px;
            border-color: #dcdcdc;
            border-collapse: collapse;
            text-align: center;
            height: 16px;
        }

        .modal-box {
            display: none;
            position: absolute;
            z-index: 1000;
            background: white;
            border-bottom: 1px solid #aaa;
            border-radius: 4px;
            box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
            border: 1px solid rgba(0, 0, 0, 0.1);
            background-clip: padding-box;
        }

        .modal-box header,
        .modal-box .modal-header {
            padding: 0.25em;
            border-bottom: 1px solid #ddd;
        }

        .modal-box .modal-body {
            padding: 0.2em;
        }

        .modal-box footer,
        .modal-box .modal-footer {
            padding: 0.2em;
            border-top: 1px solid #ddd;
            background: rgba(0, 0, 0, 0.02);
            text-align: right;
        }

        .modal-overlay {
            opacity: .5;
            filter: alpha(opacity=0);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 900;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3) !important;
        }

        .Modal_header {
            background: #fd6600;
            border-radius: 2px;
            border-top: 1px solid #dcdcdc;
            font-family: Tahoma;
            color: white;
            font-size: 13px;
            padding: 4px;
        }

        .circle {
            width: 22px;
            height: 22px;
            border-radius: 50%;
            border: 1px solid grey;
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
        }

        .circle div {
            position: relative;
            left: 0px;
            top: 3px;
            width: 22px;
            height: 22px;
            color: white;
            text-align: center;
        }

        .circle2 {
            width: 16px;
            margin-top: 3px;
            height: 16px;
            border-radius: 50%;
            border: 1px solid grey;
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
        }

        .circle2 div {
            position: relative;
            left: 0px;
            top: 1px;
            width: 16px;
            height: 16px;
            color: white;
            text-align: center;
        }

        .circle3 {
            width: 12px;
            margin-top: 1px;
            height: 12px;
            border-radius: 50%;
            border: 1px solid grey;
            font-family: verdana, arial, sans-serif;
            font-size: 13px;
            font-weight: bold;
        }

        .circle3 div {
            position: relative;
            left: 0px;
            bottom: 2px;
            width: 12px;
            height: 12px;
            color: blue;
            text-align: center;
        }

        .linea {
            display: table;
            table-layout: fixed;
            width: 50%;
            max-width: 50px;
        }

        .linea>div {
            display: table-cell;
            width: 20px;
        }

        .contenedor {
            display: block;
        }

        .multi-div {
            display: flex;
        }

        .multi-div2 {
            display: inline-block;
        }

        .Recurso {
            border: 1px solid grey;
            display: flex;
            border-radius: 24px;
            background-color: #dcdcdc;
        }

        .texto-centrado {
            position: relative;
            left: 0px;
            top: 3px;
        }

        .justi-dcha {
            margin-left: auto;
            margin-right: 0;
        }

        .Add_R {
            font-style: italic;
            border-top: 2px solid grey;
            padding-top: 5px;
        }

        .Yasel {
            background-color: #dcdcdc;
        }

        .sel1 {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
        }

        .Porcent {
            border: solid 1px grey;
            height: 25px;
        }

        .box_sel {
            border: solid 1px grey;
            height: 25px;
            margin-left: 4px;
            padding-top: 4px;
        }

        .box_sel01 {
            font-weight: bold;
            background-color: #deebf7;
        }

        .box_sel11 {
            font-weight: bold;
            background-color: #deebf7;
        }

        .box_sel02 {
            font-weight: normal;
            background-color: white;
        }

        .EH {
            padding-left: 2px;
            padding-right: 2px;
        }

        .Home0 {
            overflow: scroll;
        }

        .sel_lateral {
            height: 36px;
        }
    </style>
    <script type="text/javascript" src="js2/jquery-2.2.0.min.js"></script>
    <script type="text/javascript" src="js2/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="icon"
        type="image/png"
        href="../Images/todaytasks.png" />
    <link rel="stylesheet" href="jquery-ui/jquery-ui.css" />
    <script src="jquery-ui/jquery-ui.js"></script>
    <script type="text/javascript">
        // VARIABLES GLOBALES
        var Mes_ini = 0; var Mes_fin = 0; var Anyo_ini = 0; var Anyo_fin = 0;
        var V_recurso_index = 0; var V_raton_pres = "0"; V_id_selected = ""; V_fec_MOD = "";
        var Dia_ini0 = ''; var Sem_ini = "0"; var V_iniGT = ''; var D_inicioG = new Date(2016, 01, 01);
        var Dia_fin0 = ''; var V_finGT = ''; var D_finG = new Date(2022, 12, 31);
        var Dia_ini0_inicial = ''; var Dia_fin0_inicial = ''; var V_htmlPerf = ""; var V_htmlUsu = ""; var V_proyecto_sel = "";
        var V_nombreT = ""; var V_auxG = ""; var V_auxGG = "";
        // TABLAS GLOBALES
        var T_PROYECTOS = []; var T_FASES = []; var T_FASES_REC = []; var T_FASES_DET = []; var T_RECURSOS = []; var T_PERFILES = []; var T_USUARIOS_ACT = []; var T_ACUM = [];
        var T_COSTES = []; var T_COLOR = ["green", "orange", "blue", "yellow", "grey", "red", "salmon", "lime", "olive", "cyan", "navy", "magenta", "peru"];
        var T_VALORES = []; var D_DATOS = []; var D_GRAFICOS = [];
        $(document).ready(function () {
            $body = $("body");   // NEW
            $(".modal-overlay").remove();  // NEW
            var domain = document.domain;
            console.log('domain:' + domain);
            var V_loaded_path = "0";
            // Imagenes-iconos pantalla planificacion
            var V_img_planG = '<input type="image" src="../Images/Plan_gris.png" alt="Planificacion" width="40" height="40">';
            var V_img_recG = '<input type="image" src="../Images/Recursos_gris.png" alt="Planificacion" width="40" height="40">';
            var V_img_costesG = '<input type="image" src="../Images/Costes_reales_gris.png" alt="Planificacion" width="40" height="40">';
            var V_img_dele = '<input type="image" src="../Images/dele_blue.png" title = "Borrar Recurso" alt="Planificacion" width="14" height="18">';
            var V_img_addblue = '<div class="Icono"><input type="image" src="../Images/add_blue.png" title = "Add record" alt="Add" width="14" height="14"><div>';
            var V_img_cerrada = '<input type="image" src="../Images/Carpeta_cerrada2.png" alt="Planificacion" width="10" height="10">';
            var V_img_abierta = '<input type="image" src="../Images/Carpeta_abierta2.png" alt="Planificacion" width="10" height="10">';
            var V_img_config = '<input type="image" src="../Images/Cofig_azul.png" alt="Configuracion" width="20" height="20">';
            var V_img_config = '<input type="image" src="../Images/Cofig_azul.png" alt="Configuracion" width="20" height="20">';
            var V_img_gener = '<input type="image" src="../Images/Generate_blue.png" title ="Rellena entradas con valores restantes" alt="Configuracion" width="20" height="20">';
            var V_img_runBlue = '<input type="image" src="../Images/Run_blue.png" title ="Rellena entradas" alt="Configuracion" width="20" height="20">';
            var V_img_semana = '<input type="image" src="../Images/semana.png" title ="SEMANA" alt="Configuracion" width="30" height="30">';
            var V_img_quincena = '<input type="image" src="../Images/quincena.png" title ="QUINCENA" alt="Configuracion" width="30" height="30">';
            var V_img_excel = '<input type="image" src="../Images/Ic_excel.png" title ="QUINCENA" alt="Configuracion" width="20" height="20">';
            var V_img_save = '<input type="image" src="../Images/Save_blue2.png" title ="QUINCENA" alt="Configuracion" width="20" height="20">';

            // Datos dinamicos panel superior
            var V_display_mode_PLAN = "";
            var V_display_mode_RECURSOS = "";
            var V_display_mode_COSTES = "";
            leerdatosgenerales();
            Panel_superior();
            My_Day();
            $('#MyDay').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $(this).addClass('Yasel');
                My_Day();
            });
            $('#MyProjects').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $(this).addClass('Yasel');
                D_DATOS = Cargar_datos_pantalla("Proyectos", "");
                //console.log('D_DATOS0: ' + D_DATOS.length);
                Pantalla_Listado("Proyectos", "", "");
                for (var i = 0; i < D_DATOS.length; i++) {
                    var V_proy = D_DATOS[i]["ID_Proy"]; var V_nom = D_DATOS[i]["Nom_Proy"];
                    T_PROYECTOS.push({ ID_Proy: V_proy, Nom_Proy: V_nom })
                }
            });
            $('#MyTime').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $(this).addClass('Yasel');
                Pantalla_Tiempos();
            });
            $('#MyTeams').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $(this).addClass('Yasel');
                $('.footer').empty();
                D_DATOS = Cargar_datos_pantalla("Usuarios", "");
                Pantalla_Listado("Usuarios", "", "");
            });
            $('#MyReports').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $(this).addClass('Yasel');
                $('.footer').empty();
                $('.Div_trabajo').empty();
                display_menu_seleccion("REPORT");
            });
            $('#MyConfig').on('click', function (e) {
                $('.Yasel').removeClass('Yasel');
                $('.footer').empty();
                display_menu_seleccion("CONFIG");
            });
            function Panel_superior() {
                var V_html = '<tr><td><div class ="AD0"></div></td>';
                V_html = V_html + '<td class = "Sel_superior0" id="MyDay"><div class = "Sel_superior text0">My Day</div></td>';
                V_html = V_html + '<td class = "Sel_superior0" id="MyProjects"><div class = "Sel_superior text0">My Projects</div></td>';
                //V_html = V_html + '<td><input class = "Sel_superior text0" type="button" readonly value="My Tasks" id="MyTasks" /></td>';
                V_html = V_html + '<td class = "Sel_superior0" id="MyTime"><div class = "Sel_superior text0">My Time</div></td>';
                V_html = V_html + '<td class = "Sel_superior0" id="MyTeams"><div class = "Sel_superior text0">My Team</div></td>';
                V_html = V_html + '<td class = "Sel_superior0" id="MyReports"><div class = "Sel_superior text0">My Reports</div></td>';
                V_html = V_html + '<td><div class ="AD0"></div></td>';
                // Datos del usuario y salida alineado derecha
                V_html = V_html + '<td class = "Sel_superior0" style="text-align:right; float:right">';
                V_html = V_html + '<div class="multi-div"><div id="MyConfig" style="padding-top:10px">' + V_img_config + '</div><div style="width:10px"></div>';
                V_html = V_html + '<div><div class="head1 text0" style="text-align:right"><Label ID="usuario">Usuario</asp:Label></div>';
                V_html = V_html + '<div class="salir text0" style="text-align:right; float:right"><asp:Label ID="Label1" class="jarr1" runat="server" >Sign out</asp:Label>';
                V_html = V_html + '</div></div></div></td></tr>';
                $('#TABLA_SEL').append(V_html);
                console.log('$(window).width(): ' + $(window).width());
                var V_ancho = $(window).width() - 6 * 152; V_ancho_PL = V_ancho / 2 + 'px';
                $('.AD0').css('width', V_ancho_PL);
            }
            function My_Day() {
                $('#MyDay').addClass('Yasel');
                $('.Div_trabajo').empty();
                var T_ACTIVE_TASKS = []; var T_MISSING_HOURS = []; var T_PROJECTS_STATUS = [];
                Cargar_MyDay(T_ACTIVE_TASKS, T_MISSING_HOURS, T_PROJECTS_STATUS);
                var D_CAMPOS = Cargar_campos_pantalla("ACT_TASKS", "");
                var V_nom1 = "Active tasks in Projects"
                var V_htmlT = '<div class="Home0"><div class="Area0"></div><div><div class="multi-div">';
                V_htmlT = V_htmlT + '<div><div class="Titulo2">' + V_nom1 + '(' + T_ACTIVE_TASKS.length + ')</div>';
                V_htmlT = V_htmlT + Codifica_html(T_ACTIVE_TASKS, D_CAMPOS, "0.45") + '</div><div class="AD2"><div class="AD2"></div></div>';
                // AÑADE GRAFICO
                var V_nom1 = "Project Status";
                V_htmlT = V_htmlT + '<div><div class="Titulo2">' + V_nom1 + '(' + T_ACTIVE_TASKS.length + ')</div>';
                V_htmlT = V_htmlT + '<div><table><tr><td>Project 1</td><td><div id = "GRAF1.1" class="PANEL_GRAF GRAF11"></div></td></tr></div></div>';
                V_htmlT = V_htmlT + '<tr><td>Project 2</td><td><div id = "GRAF1.2" class="PANEL_GRAF GRAF11"></div></td></tr>';
                V_htmlT = V_htmlT + '</table></div></div></div>';
                var V_nom1 = "Pending times allocation last 30 days";
                V_htmlT = V_htmlT + '<div class="multi-div"><div><div class="Titulo2">' + V_nom1 + '(' + T_ACTIVE_TASKS.length + ')</div>';
                var D_CAMPOS = Cargar_campos_pantalla("MISSING_HOURS", "");
                V_htmlT = V_htmlT + Codifica_html(T_MISSING_HOURS, D_CAMPOS, "0.6") + '</div><div class="AD2"></div>';
                var V_nom1 = "Missing hours";
                V_htmlT = V_htmlT + '<div><div class="Titulo2">' + V_nom1 + '</div>';
                V_htmlT = V_htmlT + '<div id = "GRAPH_HOURS"></div></div>';
                //$('.Div_trabajo').append(V_htmlT);
                $('.Div_trabajo').append(V_htmlT);
                $('.AD2').css({ 'width': '80px', 'height': '257px' });
                var V_ancho = $(window).width(); var V_anchoT = V_ancho + 'px';
                $('.Area0').css({ 'width': V_anchoT, 'height': '20px' });
                var V_alto0 = $(window).height() - 240; var V_altoT = V_alto0 + 'px';
                $('#GRAPH_HOURS').css('padding-top', '20px');
                $('#GRAPH_HOURS').css('padding-left', '60px');
                //
                D_GRAFICOS = [];
                D_GRAFICOS.push({ C_ID: "1", DIV: "GRAF1.1" });
                D_GRAFICOS.push({ C_ID: "2", DIV: "GRAF1.2" });
                google.charts.load("current", { packages: ["corechart", 'gauge'] });
                google.charts.setOnLoadCallback(Pinta_Graficos);
                // FIN AÑADE GRAFICO
                var V_alto = $(window).height() - $('.panel_superior').height();
                $('.Home0').css('height', V_alto)
                /// PENDIENTE CODIGO Codifica_html(T_MISSING_HOURS,D_CAMPOS)
            }
            function Pinta_Graficos() {
                // PINTA GRAFICO TAREAS
                var linechart_data = new google.visualization.DataTable();
                linechart_data.addColumn('string', 'TASK');
                linechart_data.addColumn('number', 'DONE');
                linechart_data.addColumn('number', 'PENDING');
                var chartdataLINE = [];
                chartdataLINE[0] = []; chartdataLINE[1] = [];
                chartdataLINE[0][0] = 'ACTUALS';
                chartdataLINE[0][1] = 50;
                chartdataLINE[0][2] = 50;
                chartdataLINE[1][0] = 'PLANNED';
                chartdataLINE[1][1] = 60;
                chartdataLINE[1][2] = 40;
                linechart_data.addRows(chartdataLINE);
                var view = new google.visualization.DataView(linechart_data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    },
                    2]);
                var options = {
                    width: 600,
                    height: 100,
                    legend: { position: 'top', maxLines: 3 },
                    bar: { groupWidth: '75%' },
                    isStacked: true
                };
                for (var i = 0; i < D_GRAFICOS.length; i++) {
                    if (i > 0) {
                        options = {
                            width: 600,
                            height: 100,
                            legend: { position: 'none', maxLines: 3 },
                            bar: { groupWidth: '75%' },
                            isStacked: true
                        };
                    }
                    var V_div = D_GRAFICOS[i]["DIV"];
                    var chart = new google.visualization.BarChart(document.getElementById(V_div));
                    chart.draw(view, options);
                }
                // PINTA GRAFICO HORAS
                var data = google.visualization.arrayToDataTable([
                    ['Label', 'Value'],
                    ['Missing hours', 80],
                ]);

                var options = {
                    width: 400, height: 180,
                    redFrom: 0, redTo: 60,
                    greenFrom: 80, greenTo: 100,
                    yellowFrom: 60, yellowTo: 80,
                    minorTicks: 5
                };

                var chart = new google.visualization.Gauge(document.getElementById('GRAPH_HOURS'));

                chart.draw(data, options);

            }
            function Pantalla_Listado(V_pantalla, V_subtipo_0, V_lateral) {
                // VERSION SIN GRABAR Y MODIFICAR ON THE FLY
                console.log('Funcion Listado 2 ' + V_pantalla);
                // LLAMADA METODO LEER_SCREEN CON TABLA_PROYECTOS PARA CARGAR ESTRUCTURA DE CAMPOS
                var D_CAMPOS = Cargar_campos_pantalla(V_pantalla, V_subtipo_0);
                // LLAMADA FUNCION ATRIBUTOS SCREEN
                var D_ATRIB = Cargar_atr_pantalla(V_pantalla, V_subtipo_0);
                var V_nombre1 = D_ATRIB[0]["Nombre"]; var V_nombre0 = D_ATRIB[0]["Nombre0"];
                var V_funcion = D_ATRIB[0]["Funcion"]; var V_tipo = D_ATRIB[0]["Tipo"];
                // LLAMADA METODO DE CARGA DE VAORES POSIBLES DE CAMPOS SELECCIONABLE     
                var D_VALORES = Cargar_datos_validacion(); // EN CAMPO COLOR INDICA SI ESTA SUJETO A VALORES
                // MOSTRAR TABLA LISTADO PROYECTO CON FILTROS SUPERIORES
                // TABLA DE ACCIONES PARA AGILIZAR GRABAR
                var T_ACCIONES = [];
                var V_Aid = 1;
                // FILA CABECERAS CON FILTRO
                var V_htmlT = '<div class="Titulo1">' + V_nombre1 + '(' + D_DATOS.length + ')</div>';
                // AÑADIR FILA DE ACCIONES
                var V_htmlT = V_htmlT + '<div style="margin: 20px"><table style=" border-collapse: collapse"><tr><td></td>';
                var V_htmlT = V_htmlT + '<td><div style="margin-right: 20px"><input class ="Filter" placeholder="Filter" type="text" style="width: 150px;"/></div>';
                //var V_htmlT = V_htmlT + '<td>' + V_img_addblue + '</td><td style="width:140px" class="Crea_reg Clicable">New ' + V_nombre0 + '</td>';
                //var V_htmlT = V_htmlT + '<td>' + V_img_dele + '</td><td style="width:140px"  class="Borra_reg Clicable">Delete ' + V_nombre0 + '</td>';
                var V_htmlT = V_htmlT + '<td>' + V_img_addblue + '</td><td style="width:140px" class="Crea_reg Clicable">New</td>';
                var V_htmlT = V_htmlT + '<td>' + V_img_dele + '</td><td style="width:140px"  class="Borra_reg Clicable">Delete </td>';
                var V_htmlT = V_htmlT + '<td>' + V_img_save + '</td><td style="width:140px"  class="Graba Clicable">Save </td></tr></table></div>';
                
                // AÑADIR FILA MENSAJES
                var V_htmlT = V_htmlT + '<div style="margin-left: 20px; margin-top: 10px"><table id="TABLA_MENSAJES"></table></div>';
                // MONTA EL HTML DE LISTADO (D_CAMPOS, D_DATOS)
                var V_htmlT = V_htmlT + '<div style="margin-left: 20px"><table id = "TABLA_TRABAJO" style=" border-collapse: collapse"><tr class="Cabecera1"><th></th>';
                // PARA UBICAR LOS CAMPOS PROPORCIONALES EN LA PANTALLA SE SUMA LA LONGITUD DE LOS CAMPOS
                var I_long = parseFloat(D_CAMPOS.length) * 5 + 5;
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    I_long = parseFloat(I_long) + parseFloat(D_CAMPOS[i]["LongT"]);
                }
                var V_ancho = $(window).width();
                var I_escala = parseFloat(V_ancho) / parseFloat(I_long);
                //console.log(' I_escala:'+I_escala);
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    var V_display = D_CAMPOS[i]["Display"];
                    if (V_display != "N")  // EN LA TABLA PARAMENTROS NO DEBE ENSEÑAR LA COLUMNA
                    {
                        var V_width = parseFloat(D_CAMPOS[i]["LongT"]) * parseFloat(I_escala);
                        V_htmlT = V_htmlT + '<th class="Cabecera1" style="width:' + V_width + 'px">' + D_CAMPOS[i]["C_Text"] + '</th>';
                    }
                    //console.log(' Campo:'+D_CAMPOS[i]["C_Text"]+ ' Ancho:'+V_width);
                }
                var V_htmlT = V_htmlT + '</tr>';
                //MOSTRAR TABLA DATOS
                var returnedData_clave = $.grep(D_CAMPOS, function (element) {
                    return (element.Clave == "X");
                });
                var V_campo_clave = returnedData_clave[0]["C_ID"];
                var V_obligM = ""; var V_cursor = "";
                //console.log('V_campo_clave:' + V_campo_clave);
                for (var i = 0; i < D_DATOS.length; i++) {
                    var V_htmlT = V_htmlT + '<tr class="Fila1" id="' + D_DATOS[i][V_campo_clave] + '"><td class = "CHECKBOX_SEL1"><input type="checkbox"></td>';
                    for (var j = 0; j < D_CAMPOS.length; j++) {
                        // SI ES EL CAMPO CLAVE DEBE PERMITIR NAVEGAR A LA PANTALLA SIGUIENTE CON UN CLICK
                        var V_oblig = D_CAMPOS[j]["C_Oblig"]; var V_oblig2 = "";// SI ES OBLIGATORIO SE PONE EL MARGEN ROJO
                        var V_Color = "";
                        var V_anchura = parseFloat(D_CAMPOS[j]["LongT"]) * parseFloat(I_escala);
                        var V_anchura0 = parseFloat(V_anchura) + 2;
                        var V_anchura1 = parseFloat(V_anchura) - 7;
                        var V_valor_campo = D_DATOS[i][D_CAMPOS[j]["C_ID"]];
                        var V_display = D_CAMPOS[j]["Display"];
                        //console.log('V_display:' + V_display);
                        if (V_display != "N")  // EN LA TABLA PARAMENTROS NO DEBE ENSEÑAR LA COLUMNA
                        {
                            if (V_oblig == "X" && V_valor_campo == "") {
                                V_oblig2 = "X";
                                V_obligM = "X";
                            }
                            if (D_CAMPOS[j]["Clave"] == "X" && V_funcion != "") {
                                var V_htmlT = V_htmlT + '<td id=' + V_valor_campo + ' class="Tabla_con_bordes Clave Clicable" style="width:' + V_anchura + 'px" Valor_i ="' + i + '" Valor_j ="' + j + '">' + D_DATOS[i][D_CAMPOS[j]["C_ID"]] + '</td>';
                            }
                            else if (D_CAMPOS[j]["Clave"] == "X" && V_funcion == "") {
                                var V_htmlT = V_htmlT + '<td id=' + V_valor_campo + ' class="Tabla_con_bordes" style="width:' + V_anchura + 'px" Valor_i ="' + i + '" Valor_j ="' + j + '">' + D_DATOS[i][D_CAMPOS[j]["C_ID"]] + '</td>';
                            }
                            else {
                                switch (D_CAMPOS[j]["TipoT"]) {
                                    case "Selec":
                                        if (V_oblig2 == "X") {
                                            V_htmlT = V_htmlT + '<td id ="' + V_id + '" campo = "' + D_CAMPOS[j]["C_ID"] + '" class="Tabla_con_bordes selD" style="width:';
                                            V_htmlT = V_htmlT + V_anchura + 'px;" Valor_i ="' + i + '" Valor_j ="' + j + '" ><div class="Entrada_obl" style="height: 18px;"></div></td>';
                                        }
                                        else {
                                            // VER SI LOS VALORES TIENEN COLORES ASIGNADOS
                                            var returnedData = $.grep(D_VALORES, function (element) {
                                                return (element.Campo == D_CAMPOS[j]["C_ID"] && element.V_value == V_valor_campo);
                                            });
                                            if (returnedData.length > 0) {
                                                V_Color = returnedData[0]["Color"];
                                            }
                                            var V_id = D_CAMPOS[j]["C_ID"] + i;
                                            V_htmlT = V_htmlT + '<td id ="' + V_id + '" campo = "' + D_CAMPOS[j]["C_ID"] + '" class="Tabla_con_bordes selD" style="width:';
                                            V_htmlT = V_htmlT + V_anchura + 'px; background:' + V_Color + '" Valor_i ="' + i + '" Valor_j ="' + j + '">' + V_valor_campo + '</td>';
                                        }
                                        break;
                                    case "Fecha":
                                        var V_fecha = V_valor_campo;
                                        var V_inid = V_fecha.substring(0, 2); var V_inim = V_fecha.substring(3, 5); var V_inia = V_fecha.substring(6, 10);
                                        var V_fecha1 = V_inia + "-" + V_inim + "-" + V_inid;
                                        if (V_oblig2 == "X") {
                                            V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div class="Entrada_obl"><input class ="fecha Fecha_sel" type="date" value="' + V_fecha1 + '"/></div></td>';
                                        }
                                        else {
                                            V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div><input class ="fecha Fecha_sel" type="date" value="' + V_fecha1 + '"/></div></td>';
                                        }
                                        break;
                                    case "UserM":
                                        V_htmlT = V_htmlT + '<td id = "SelR_' + i + '" tabla = "RECURSOS" Valor_i ="' + i + '" Valor_j ="' + j + '" class="Tabla_con_bordes selR">';
                                        var V_ini = ""; var V_color = "";
                                        if (V_oblig2 == "X") {
                                            V_htmlT = V_htmlT + '<div class="Entrada_obl" style="width:' + V_anchura + 'px;"><div>';
                                        }
                                        else {
                                            // LAS CLAVES ESTAS SEPARADAS POR COMAS, LO PRIMERO SERA DESCIFRAR LOS CAMPOS Y PONERLOS EN UN ARRAY
                                            var T_USERM = [];
                                            T_USERM = DesglosaEnArray(V_valor_campo, ",");
                                            V_htmlT = V_htmlT + '<div class="linea">';
                                            for (var k = 0; k < T_USERM.length; k++) {
                                                var V_usu = T_USERM[k];
                                                //console.log('V_usu:' + V_usu);
                                                if (k < 3) {
                                                    var V_otros = "";
                                                    if (k == 2 && T_USERM.length > 3) { V_otros = T_USERM.length - 2; }
                                                    var V_recurso = T_USERM[k];
                                                    //console.log('V_recurso:' + V_recurso);
                                                    var V_ini = ""; var V_color = "";
                                                    var resultArray2 = $.grep(T_USUARIOS_ACT, function (element2) {
                                                        return element2.ID == V_recurso;
                                                    });
                                                    if (resultArray2.length != "0") {
                                                        V_ini = resultArray2[0].INI;
                                                        V_color = resultArray2[0].COLOR;
                                                    }
                                                    // PINTA LA BOLETES
                                                    //console.log('V_ini:' + V_ini);
                                                    if (V_otros == "") {
                                                        V_htmlT = V_htmlT + Circulo(V_color, V_ini, "1");
                                                    }
                                                    else {
                                                        V_htmlT = V_htmlT + Circulo("black", '+' + V_otros, "1");
                                                    }
                                                }
                                            }
                                        }
                                        V_htmlT = V_htmlT + '</div>';
                                        V_htmlT = V_htmlT + '</div></td>';
                                        break;
                                    default:
                                        if (V_oblig2 == "X") {
                                            V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div class="Entrada_obl" style="width:' + V_anchura + 'px;" >';
                                            if (V_cursor == "") {
                                                V_htmlT = V_htmlT + '<input class ="Fase Desc Cursor" type="text" value="' + V_valor_campo;
                                                V_cursor = "X"
                                            }
                                            else { V_htmlT = V_htmlT + '<input class ="Fase Desc" type="text" value="' + V_valor_campo; }
                                            V_htmlT = V_htmlT + '" style="width:' + V_anchura1 + 'px; padding-left: 5px"/></div></td>';
                                        }
                                        else {
                                            V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div style="width:' + V_anchura + 'px;">';
                                            V_htmlT = V_htmlT + '<input class ="Fase Desc" type="text" value="' + V_valor_campo;
                                            V_htmlT = V_htmlT + '" style="width:' + V_anchura1 + 'px; padding-left: 5px"/></div></td>';
                                        }
                                        break;
                                }
                            }

                        }
                    }
                    V_htmlT = V_htmlT + '</tr>';
                }
                var V_htmlT = V_htmlT + '</tr></table></div>';
                if (V_lateral != "X") {
                    $('.Div_trabajo').empty();
                    $('.Div_trabajo').append(V_htmlT);
                }
                else {
                    $('.panel_datos').empty();
                    $('.panel_datos').append(V_htmlT);
                }
                if (V_obligM == "X") {
                    var V_htmlM = '<tr><td>W: Informa el campo clave por favor</td></tr>';
                    $('#TABLA_MENSAJES').empty();
                    $('#TABLA_MENSAJES').append(V_htmlM);
                }
                $('.Cursor').focus();  // POSICIONA EL CURSOR EN EL PRIMER CAMPO OBLOGATORIO
                $('.CampoMod').change(function () {
                    var V_aux = "";
                    var Valor_i = $(this).attr("Valor_i");
                    var Valor_j = $(this).attr("Valor_j");
                    $(this).find("input").each(function () {
                        V_aux = $(this).val();
                        var V_tipo = $(this).attr('type');
                        if (V_tipo == "date") {
                            var V_fecd = V_aux.substring(8, 10); var V_fecm = V_aux.substring(5, 7); var V_feca = V_aux.substring(0, 4);
                            V_aux = V_fecd + "/" + V_fecm + "/" + V_feca;
                        }
                        //console.log('V_tipo:' + V_tipo);
                    });
                    //console.log('V_aux:' + V_aux);
                    //console.log('Valor_j:' + Valor_j);
                    D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]] = V_aux;
                    Pantalla_Listado(V_pantalla, "", "");
                });
                // APLICACION DE FILTROS
                $('.Filter').keyup(function () {
                    var V_texto = $(this).val();
                    //console.log('Filter keyup:' + V_texto);
                    var i = 0;
                    var table = $('#TABLA_TRABAJO');
                    table.find('tr').each(function (index, row) {
                        if (i == 0) {
                            $(row).show();
                        }
                        else {
                            //console.log('Fila encontrada');
                            var allCells = $(row).find('td');
                            var found = false;
                            allCells.each(function (index, td) {
                                //console.log('Celda encontrada');
                                var regExp = new RegExp(V_texto, 'i');
                                if (regExp.test($(td).text())) {
                                    found = true;
                                    return false;
                                }
                            });
                            if (found == true) { $(row).show(); }
                            else {
                                $(row).hide();
                            }
                        }
                        i = i + 1;
                    });
                });
                $('.Crea_reg').on('click', function (e) {
                    var V_htmlA = '<tr class="Fila1" id=' + V_Aid + '><td class = "CHECKBOX_SEL1"><input type="checkbox"></td>';
                    var V_campo_clave = "";
                    for (var j = 0; j < D_CAMPOS.length; j++) {
                        var V_oblig = D_CAMPOS[j]["C_Oblig"]; // SI ES OBLIGATORIO SE PONE EL MARGEN ROJO
                        var V_anchura = parseFloat(D_CAMPOS[j]["LongT"]) * parseFloat(I_escala);
                        var V_anchura0 = parseFloat(V_anchura) + 2;
                        //console.log('V_anchura[' + j +']:' + V_anchura);
                        //console.log(' Campo2:'+D_CAMPOS[j]["C_Text"]+ ' Ancho:'+V_anchura);
                        if (D_CAMPOS[j]["Clave"] == "X") {
                            V_campo_clave = [D_CAMPOS[j]["C_ID"]];
                            V_htmlA = V_htmlA + '<td class="Tabla_con_bordes"><div class="Entrada_obl" style="width:' + V_anchura0 + 'px;">';
                            V_htmlA = V_htmlA + '<input class ="Fase Desc Clave Cursor" type="text" style="width:' + V_anchura + 'px"/></div></td>';
                        }
                        else {
                            V_htmlA = V_htmlA + '<td class="Tabla_con_bordes"></td>';
                            // SI ES EL CAMPO CLAVE DEBE PERMITIR NAVEGAR A LA PANTALLA SIGUIENTE CON UN CLICK
                        }
                    }
                    $('#TABLA_TRABAJO').append(V_htmlA);
                    var V_htmlM = '<tr><td>W: Informa el campo clave por favor</td></tr>';
                    $('#TABLA_MENSAJES').empty();
                    $('#TABLA_MENSAJES').append(V_htmlM);
                    $('.Cursor').focus();  // POSICIONA EL CURSOR EN EL PRIMER CAMPO OBLIGATORIO
                    var V_fila = $('#TABLA_TRABAJO tr').length; V_fila = V_fila + 1;
                    console.log('V_fila Alta:' + V_fila);
                    T_ACCIONES.push({ A_id: V_Aid, Accion: "Alta", Fila: V_fila });
                    V_Aid = V_Aid + 1;
                    $('.Clave').change(function () {
                        var V_aux = $(this).val();
                        console.log('Cambio clave:' + V_aux);
                        var resultArray = $.grep(D_DATOS, function (element2) {
                            return element2.ID_Proy == V_aux;
                        });
                        if (resultArray.length == "0") {
                            T_ACCIONES.push({ A_id: V_aux, Accion: "Nueva entrada" });
                            D_DATOS.push({ ID_Proy: V_aux, Fec_Ini: "", Fec_Fin: "" });
                            var V_index = D_DATOS.length - 1;
                            for (var j = 0; j < D_CAMPOS.length; j++) {
                                console.log('Campo nuevo:' + D_CAMPOS[j]["C_ID"] + ' V_campo_clave:' + V_campo_clave);
                                if (D_CAMPOS[j]["C_ID"] != V_campo_clave) {
                                    D_DATOS[V_index][D_CAMPOS[j]["C_ID"]] = "";
                                }
                                else {
                                    D_DATOS[V_index][D_CAMPOS[j]["C_ID"]] = V_aux;
                                }
                            }
                            Pantalla_Listado(V_pantalla, "", "");
                        }
                        else {
                            var V_htmlM = '<tr><td>E: Clave duplicada:' + V_aux + '</td></tr>';
                            console.log('Clave duplicada:' + V_aux);
                            $('#TABLA_MENSAJES').empty();
                            $('#TABLA_MENSAJES').append(V_htmlM);
                        }

                    });
                });
                $('.Borra_reg').on('click', function (e) {
                    console.log('Borra_rg');
                    $('#TABLA_TRABAJO tr').each(function (row, tr) {
                        $(this).find('input:checkbox:checked').each(function () {
                            $(this).closest('tr').hide();
                            var V_fila = $('table tr').index(tr);
                            console.log('V_fila:' + V_fila);
                            T_ACCIONES.push({ A_id: V_Aid, Accion: "Borrar", Fila: V_fila });
                            V_Aid = V_Aid + 1;
                        });
                    });
                });
                $('.Graba').on('click', function (e) {
                    console.log('Graba');
                    var V_htmlM = '<tr><td>I: Data saved</td></tr>';
                    $('#TABLA_MENSAJES').empty();
                    $('#TABLA_MENSAJES').append(V_htmlM);
                });
                $(".Fila1").hover(
                    function () { // CUANDO ESTA ENCIMA
                        $(this).css("background", "#eeeeee");
                    },
                    function () { // CUANDO LO DEJA
                        $(this).css("background", "white");
                    });
                $(".Clicable").hover(
                    function () { // CUANDO ESTA ENCIMA
                        $(this).css("text-decoration-line", "underline");
                    },
                    function () { // CUANDO LO DEJA
                        $(this).css("text-decoration-line", "initial");
                    });
                $('.Clave').on('click', function (e) {
                    console.log('Lanza funcion gestion');
                    // RECUPERA NOMBRE PROYECTO
                    var $row = $(this).closest('tr');
                    V_nombreT = $row.find('td:eq(2)').text();
                    var V_clave = $(this).attr("id");
                    if ($(this).hasClass('NoClicable')) { console.log('No clicable'); }
                    else {
                        V_funcion = V_funcion + "(" + V_clave + ")";
                        eval(V_funcion);
                    }
                });
                $('.selD').on('click', function (e) {
                    // VENTANA DE VALORES POSIBLES PARA COLUMNAS
                    var V_id_sel = $(this).attr("id");
                    var V_campo = $(this).attr("campo");
                    //console.log('Campo de seleccion activado, V_campo:' + V_campo + ' V_id_sel:' + V_id_sel);
                    var $row0 = $(this).closest('tr');
                    //var V_tarea_id = $row0.find('td:eq(0)').text();
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left + 160;
                    var V_top = $(this).offset().top; V_top = parseFloat(V_top) - 2;
                    var V_valor_clave = $row0.find('td:eq(1)').text(); // SE ENTIENDE QUE EL PRIMER CAMPO despues del checkbox ES EL CAMPO
                    // ACCEDE A LOS VALORES POSIBLES
                    var returnedData = $.grep(D_VALORES, function (element) {
                        return (element.Campo == V_campo);
                    });
                    var V_html = "";
                    for (var i = 0; i < returnedData.length; i++) {
                        V_html = V_html + '<tr id="' + returnedData[i]["V_id"] + '"><td style="width:140px; text-align: center" class ="Seleccion">';
                        V_html = V_html + '<div style="height: 25px; padding-top:5px; background:' + returnedData[i]["Color"] + '">' + returnedData[i]["V_value"] + '</div></td></tr>';
                    }
                    var V_altura = returnedData.length * 35;
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html);
                    $('.Seleccion').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("text-decoration-line", "underline");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("text-decoration-line", "initial");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left - 150,
                        width: '140px',
                        height: V_altura,
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Seleccion').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        var returnedData = $.grep(D_VALORES, function (element) {
                            return (element.V_id == V_sele && element.Campo == V_campo);
                        });
                        var V_text_set = returnedData[0]["V_value"];
                        var V_Color0 = returnedData[0]["Color"];
                        $('#' + V_id_sel).html(V_text_set);
                        //console.log('V_color:'+V_Color0);
                        if (V_Color0 != "") {
                            $('#' + V_id_sel).css('background', V_Color0);
                        }
                        for (var i = 0; i < D_DATOS.length; i++) {
                            //console.log('D_DATOS[i][V_campo_clave] Select: ' + D_DATOS[i][V_campo_clave]);
                            if (D_DATOS[i][V_campo_clave] == V_valor_clave) {
                                //console.log('V_text_set: ' + V_text_set);
                                D_DATOS[i][V_campo] = V_text_set;
                            }
                        }
                        Pantalla_Listado(V_pantalla, "", "");
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                });
                $('.selR').on('click', function (e) {
                    // SELECCION RECURSOS
                    var Valor_i = $(this).attr("Valor_i");
                    var Valor_j = $(this).attr("Valor_j");
                    console.log('Valor_j:' + Valor_j);
                    var V_valor_campo = D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]];
                    var $rowR = $(this).closest('tr');
                    var V_tarea_id = $rowR.attr("id");
                    console.log('V_valor_campo Recurso:' + V_valor_campo);
                    var T_USERM = [];
                    T_USERM = DesglosaEnArray(V_valor_campo, ",");
                    var V_filas = 0;
                    //console.log('Campo de seleccion recursos activado, V_tarea_id:' + V_tarea_id);
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left + 160;
                    var V_top = $(this).offset().top; V_top = parseFloat(V_top) - 2;
                    var V_htmlR = ""; var V_ini = ""; var V_color = ""; var V_cod_us = "";
                    var V_borrar = Circulo("red", "-", "2");
                    var V_anyadir = Circulo("red", "+", "2");
                    if (T_USERM.length != "0") {
                        for (var j = 0; j < T_USERM.length; j++) {
                            var V_recurso = T_USERM[j];
                            console.log('V_recurso:' + V_recurso);
                            var resultArray2 = $.grep(T_USUARIOS_ACT, function (element2) {
                                return element2.ID == V_recurso;
                            });
                            if (resultArray2.length != "0") {
                                V_ini = resultArray2[0].INI;
                                V_color = resultArray2[0].COLOR;
                                V_cod_us = resultArray2[0].COD_US;
                            }
                            V_htmlR = V_htmlR + '<tr class = "Asign" id="' + V_recurso + '"><td class="Recurso">' + Circulo(V_color, V_ini, "1") + '<div class = "texto-centrado">' + V_cod_us;
                            V_htmlR = V_htmlR + '</div><div class="justi-dcha">' + V_borrar + '</div></td></tr>';
                        }
                    }
                    //console.log('V_htmlR:'+V_htmlR);
                    var V_htmlR2 = "";
                    V_filas = V_filas + T_USUARIOS_ACT.length;
                    var V_altura = parseFloat(V_filas) * 32 + 12;
                    for (var i = 0; i < T_USUARIOS_ACT.length; i++) {
                        V_ini = T_USUARIOS_ACT[i].INI;
                        V_color = T_USUARIOS_ACT[i].COLOR;
                        V_cod_us = T_USUARIOS_ACT[i].COD_US;
                        V_us_id = T_USUARIOS_ACT[i].ID;
                        // FILTRA QUE NO ESTE EN LA LISTA DE SELECCIONADOS
                        var resultArray = $.grep(T_USERM, function (element) {
                            return (element == V_us_id);
                        });
                        if (resultArray.length == "0") {
                            V_htmlR2 = V_htmlR2 + '<tr class = "NoAsign" id="' + V_us_id + '"><td class="Recurso">' + Circulo(V_color, V_ini, "1") + '<div class = "texto-centrado">' + V_cod_us;
                            V_htmlR2 = V_htmlR2 + '</div><div class="justi-dcha">' + V_anyadir + '</div></td></tr>';
                        }
                    }
                    var V_html2 = V_htmlR + '<tr><td class ="Add_R" colspan = 2>Add resources</td></tr>' + V_htmlR2;
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html2);
                    $('.Recurso').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("background-color", "#f7f7f7");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("background-color", "#dcdcdc");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left - 150,
                        width: '178px',
                        height: V_altura,
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Recurso').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        console.log('Valor_j:' + Valor_j);
                        var V_valor_campo = D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]];
                        if ($row.hasClass("Asign")) {
                            console.log('Recurso a Desasignar, V_sele:' + V_sele + ' de tarea: ' + V_tarea_id);
                            var T_USERM = [];
                            T_USERM = DesglosaEnArray(V_valor_campo, ",");
                            var V_aux = ""; l = 0;
                            for (var k = 0; k < T_USERM.length; k++) {
                                if (T_USERM[k] != V_sele) {
                                    if (l > 0) { V_aux = V_aux + ","; }
                                    V_aux = V_aux + T_USERM[k];
                                    l = l + 1;
                                }
                            }
                            D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]] = V_aux;
                        }
                        else {
                            //console.log('Recurso a Asignar, V_sele:' + V_sele + ' de tarea: ' + V_tarea_id);
                            if (V_valor_campo == "") {
                                D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]] = V_sele;
                            }
                            else {
                                D_DATOS[Valor_i][D_CAMPOS[Valor_j]["C_ID"]] = V_valor_campo + ',' + V_sele;
                            }
                            //T_FASES_REC.push({ ID: V_tarea_id, REC: V_sele });
                        }
                        $('#TABLA_DATOS_PROYECTO_SEM_F2').empty();
                        Pantalla_Listado(V_pantalla, "", "");
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                });
            }
            function Codifica_html(D_DATOS, D_CAMPOS, V_ESCALA) {
                var D_VALORES = Cargar_datos_validacion(); // EN CAMPO COLOR INDICA SI ESTA SUJETO A VALORES
                var V_html = "";
                // PARA UBICAR LOS CAMPOS PROPORCIONALES EN LA PANTALLA SE SUMA LA LONGITUD DE LOS CAMPOS
                var I_long = parseFloat(D_CAMPOS.length) * 5 + 5;
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    I_long = parseFloat(I_long) + parseFloat(D_CAMPOS[i]["LongT"]);
                }
                var V_ancho = $(window).width();
                var I_escala = parseFloat(V_ancho) / parseFloat(I_long); I_escala = I_escala * parseFloat(V_ESCALA);
                // CABECERA
                var V_html = V_html + '<div style="margin-left: 20px"><table id = "TABLA_TRABAJO" style=" border-collapse: collapse"><tr class="Cabecera1">';
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    var V_width = parseFloat(D_CAMPOS[i]["LongT"]) * parseFloat(I_escala);
                    V_html = V_html + '<th class="Cabecera1" style="width:' + V_width + 'px">' + D_CAMPOS[i]["C_Text"] + '</th>';
                }
                V_html = V_html + '</tr>';
                // POSICIONES
                for (var i = 0; i < D_DATOS.length; i++) {
                    V_html = V_html + '<tr class="Fila1">';
                    for (var j = 0; j < D_CAMPOS.length; j++) {
                        // SI ES EL CAMPO CLAVE DEBE PERMITIR NAVEGAR A LA PANTALLA SIGUIENTE CON UN CLICK
                        var V_Color = "";
                        var V_anchura = parseFloat(D_CAMPOS[j]["LongT"]) * parseFloat(I_escala);
                        var V_anchura0 = parseFloat(V_anchura) + 2;
                        var V_anchura1 = parseFloat(V_anchura) - 7;
                        var V_valor_campo = D_DATOS[i][D_CAMPOS[j]["C_ID"]];
                        //console.log('D_CAMPOS[j]["TipoT"]: ' + D_CAMPOS[j]["TipoT"]);
                        switch (D_CAMPOS[j]["TipoT"]) {
                            case "Selec":
                                // VER SI LOS VALORES TIENEN COLORES ASIGNADOS
                                var returnedData = $.grep(D_VALORES, function (element) {
                                    return (element.Campo == D_CAMPOS[j]["C_ID"] && element.V_value == V_valor_campo);
                                });
                                //console.log('V_valor_campo:' + V_valor_campo); console.log('D_CAMPOS[j]["C_ID"]:' + D_CAMPOS[j]["C_ID"]);
                                if (returnedData.length > 0) {
                                    V_Color = returnedData[0]["Color"];
                                }
                                var V_id = D_CAMPOS[j]["C_ID"] + i;
                                V_html = V_html + '<td id ="' + V_id + '" campo = "' + D_CAMPOS[j]["C_ID"] + '" class="Tabla_con_bordes selD" style="width:';
                                V_html = V_html + V_anchura + 'px; background:' + V_Color + '" Valor_i ="' + i + '" Valor_j ="' + j + '">' + V_valor_campo + '</td>';
                                break;
                            case "Fecha":
                                var V_fecha = V_valor_campo;
                                var V_inid = V_fecha.substring(0, 2); var V_inim = V_fecha.substring(3, 5); var V_inia = V_fecha.substring(6, 10);
                                var V_fecha1 = V_inia + "-" + V_inim + "-" + V_inid;
                                //console.log('V_fecha1:' + V_fecha1);
                                V_html = V_html + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div><input class ="fecha Fecha_sel" type="date" value="' + V_fecha1 + '" readonly/></div></td>';
                                break;
                            case "UserM":
                                V_html = V_html + '<td id = "SelR_' + i + '" tabla = "RECURSOS" Valor_i ="' + i + '" Valor_j ="' + j + '" class="Tabla_con_bordes selR">';
                                var V_ini = ""; var V_color = "";
                                // LAS CLAVES ESTAS SEPARADAS POR COMAS, LO PRIMERO SERA DESCIFRAR LOS CAMPOS Y PONERLOS EN UN ARRAY
                                var T_USERM = [];
                                T_USERM = DesglosaEnArray(V_valor_campo, ",");
                                V_html = V_html + '<div class="linea">';
                                for (var k = 0; k < T_USERM.length; k++) {
                                    var V_usu = T_USERM[k];
                                    //console.log('V_usu:' + V_usu);
                                    if (k < 3) {
                                        var V_otros = "";
                                        if (k == 2 && T_USERM.length > 3) { V_otros = T_USERM.length - 2; }
                                        var V_recurso = T_USERM[k];
                                        //console.log('V_recurso:' + V_recurso);
                                        var V_ini = ""; var V_color = "";
                                        var resultArray2 = $.grep(T_USUARIOS_ACT, function (element2) {
                                            return element2.ID == V_recurso;
                                        });
                                        if (resultArray2.length != "0") {
                                            V_ini = resultArray2[0].INI;
                                            V_color = resultArray2[0].COLOR;
                                        }
                                        // PINTA LA BOLETES
                                        //console.log('V_ini:' + V_ini);
                                        if (V_otros == "") {
                                            V_html = V_html + Circulo(V_color, V_ini, "1");
                                        }
                                        else {
                                            V_html = V_html + Circulo("black", '+' + V_otros, "1");
                                        }
                                    }
                                }
                                V_html = V_html + '</div>';
                                V_html = V_html + '</div></td>';
                                break;
                            default:
                                V_html = V_html + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div style="width:' + V_anchura + 'px;">';
                                V_html = V_html + V_valor_campo + '</td>';
                                break;
                        }
                    }
                    V_html = V_html + '</tr>';
                }
                V_html = V_html + '</tr></table></div>';
                return V_html;
            }
            function Cargar_campos_pantalla(V_tabla_aux, V_subtipo00) {
                var D_CAMPOS0 = [];
                if (V_tabla_aux == "Proyectos") {
                    D_CAMPOS0.push({ C_ID: "ID_Proy", TipoT: "Text", C_Text: "Project ID", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Nom_Proy", TipoT: "Text", C_Text: "Project Name", C_Oblig: "X", LongT: "70", Valor: "", Num_pos: "2", Clave: "", DisplayN: "X" });
                    D_CAMPOS0.push({ C_ID: "Fec_Ini", TipoT: "Fecha", C_Text: "Start Date", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "3", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Fec_Fin", TipoT: "Fecha", C_Text: "End Date", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Est_Proy", TipoT: "Selec", C_Text: "Project Status", C_Oblig: "X", LongT: "30", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Tip_Proy", TipoT: "Selec", C_Text: "Project Type", C_Oblig: "X", LongT: "30", Valor: "", Num_pos: "6", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Res_Proy", TipoT: "UserM", C_Text: "Project Responsible", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "7", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Team_Proy", TipoT: "UserM", C_Text: "Project Team", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "8", Clave: "" });
                }
                else if (V_tabla_aux == "Usuarios") {
                    D_CAMPOS0.push({ C_ID: "ID_Usuario", TipoT: "Text", C_Text: "User Id", C_Oblig: "X", LongT: "80", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Nom_Us", TipoT: "Text", C_Text: "User Name", C_Oblig: "X", LongT: "70", Valor: "", Num_pos: "2", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Correo", TipoT: "Text", C_Text: "Email", C_Oblig: "X", LongT: "80", Valor: "", Num_pos: "3", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Role", TipoT: "Selec", C_Text: "Role", C_Oblig: "", LongT: "40", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Tipo", TipoT: "Selec", C_Text: "User Type", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Empresa", TipoT: "Text", C_Text: "Company", C_Oblig: "", LongT: "50", Valor: "", Num_pos: "6", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Estado", TipoT: "Selec", C_Text: "Status", C_Oblig: "X", LongT: "30", Valor: "", Num_pos: "7", Clave: "", Color: "X" });
                    D_CAMPOS0.push({ C_ID: "Comentarios", TipoT: "Text", C_Text: "Comments", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "8", Clave: "" });
                }
                else if (V_tabla_aux == "ACT_TASKS") {
                    D_CAMPOS0.push({ C_ID: "PROYECTO", TipoT: "Text", C_Text: "Project Name", C_Oblig: "X", LongT: "70", Valor: "", Num_pos: "1", Clave: "", DisplayN: "X" });
                    D_CAMPOS0.push({ C_ID: "TAREA", TipoT: "Text", C_Text: "Task", C_Oblig: "X", LongT: "70", Valor: "", Num_pos: "2", Clave: "", DisplayN: "X" });
                    D_CAMPOS0.push({ C_ID: "DESC", TipoT: "Text", C_Text: "Name", C_Oblig: "X", LongT: "70", Valor: "", Num_pos: "3", Clave: "", DisplayN: "X" });
                    D_CAMPOS0.push({ C_ID: "FECINI", TipoT: "Fecha", C_Text: "Start Date", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "FECFIN", TipoT: "Fecha", C_Text: "End Date", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "STATUS", TipoT: "Selec", C_Text: "Status", C_Oblig: "X", LongT: "30", Valor: "", Num_pos: "6", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "COMMENTS", TipoT: "Comment", C_Text: "Comments", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "7", Clave: "" });
                }
                else if (V_tabla_aux == "MISSING_HOURS") {
                    D_CAMPOS0.push({ C_ID: "FECHA", TipoT: "Fecha", C_Text: "Day", C_Oblig: "X", LongT: "40", Valor: "", Num_pos: "1", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "TEOR_HORAS", TipoT: "Text", C_Text: "Theoretical hours  ", C_Oblig: "", LongT: "40", Valor: "", Num_pos: "2", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "IMP_HORAS", TipoT: "Text", C_Text: "Allocated hours", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "3", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "PEND_HORAS", TipoT: "Text", C_Text: "Pending hours", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "COMMENTS", TipoT: "Comment", C_Text: "Comments", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "5", Clave: "" });
                }
                else if (V_tabla_aux == "TEAMCOSTS") {
                    D_CAMPOS0.push({ C_ID: "ID_Usuario", TipoT: "Text", C_Text: "User Id", C_Oblig: "X", LongT: "10", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Coste", TipoT: "Num", C_Text: "Cost", C_Oblig: "", LongT: "15", Valor: "", Num_pos: "2", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Moneda", TipoT: "Select", C_Text: "Currency", C_Oblig: "", LongT: "4", Valor: "", Num_pos: "3", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "COMMENTS", TipoT: "Comment", C_Text: "Comments", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "4", Clave: "" });
                }
                else if (V_tabla_aux == "TASKS_NP") {
                    D_CAMPOS0.push({ C_ID: "T_ID", TipoT: "Text", C_Text: "ID", C_Oblig: "X", LongT: "10", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "TASKTYPE", TipoT: "Selec", C_Text: "Task Type", C_Oblig: "", LongT: "40", Valor: "", Num_pos: "2", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "TASK_TXT", TipoT: "Text", C_Text: "Description", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "3", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "COMMENTS", TipoT: "Comment", C_Text: "Comments", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "4", Clave: "" });
                }
                else if (V_tabla_aux == "PARAMS") {
                    D_CAMPOS0.push({ C_ID: "PARAM_TIPO", TipoT: "Text", C_Text: "Atribute type", C_Oblig: "X", LongT: "10", Valor: "", Num_pos: "1", Clave: "X", Display: "N" });
                    D_CAMPOS0.push({ C_ID: "PARAM_SUBTIPO", TipoT: "Text", C_Text: "Attribute subtype", C_Oblig: "X", LongT: "10", Valor: "", Num_pos: "2", Clave: "X", Display: "N" });
                    D_CAMPOS0.push({ C_ID: "PARAM_ID", TipoT: "Text", C_Text: "ID", C_Oblig: "X", LongT: "10", Valor: "", Num_pos: "3", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "PARAM_TEXT", TipoT: "Text", C_Text: "Text", C_Oblig: "", LongT: "80", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "COLOR", TipoT: "Color", C_Text: "Color", C_Oblig: "", LongT: "10", Valor: "", Num_pos: "5", Clave: "" });
                }
                else if (V_tabla_aux == "V_TIMES1") {
                    D_CAMPOS0.push({ C_ID: "Proyecto", TipoT: "Text", C_Text: "Project", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Tarea", TipoT: "Text", C_Text: "Task", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "2", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "ID_Usuario", TipoT: "Text", C_Text: "User Id", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "3", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Fecha", TipoT: "Fecha", C_Text: "Start Date", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "HORAS", TipoT: "Text", C_Text: "hours", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Estado", TipoT: "Text", C_Text: "Aproval Status", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                }
                else if (V_tabla_aux == "V_TIMES2") {
                    D_CAMPOS0.push({ C_ID: "Proyecto", TipoT: "Text", C_Text: "Project", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Tarea", TipoT: "Text", C_Text: "Task", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "2", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "ID_Usuario", TipoT: "Text", C_Text: "User Id", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "3", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Fecha", TipoT: "Fecha", C_Text: "Start Date", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Cost", TipoT: "Text", C_Text: "Cost", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Moneda", TipoT: "Text", C_Text: "Curr", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                }
                else if (V_tabla_aux == "V_COSTS") {
                    D_CAMPOS0.push({ C_ID: "Proyecto", TipoT: "Text", C_Text: "Project", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "1", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Proveedor", TipoT: "Text", C_Text: "Supplier", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "2", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "ID_Usuario", TipoT: "Text", C_Text: "User Id", C_Oblig: "", LongT: "30", Valor: "", Num_pos: "3", Clave: "X" });
                    D_CAMPOS0.push({ C_ID: "Fecha", TipoT: "Fecha", C_Text: "Start Date", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "4", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Cost", TipoT: "Text", C_Text: "Cost", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                    D_CAMPOS0.push({ C_ID: "Moneda", TipoT: "Text", C_Text: "Curr", C_Oblig: "", LongT: "20", Valor: "", Num_pos: "5", Clave: "" });
                }
                return D_CAMPOS0;
            }
            function Cargar_atr_pantalla(V_tabla_aux, V_subtipo00) {
                var D_ATRIB0 = [];
                if (V_tabla_aux == "Proyectos") {
                    D_ATRIB0.push({ Nombre: "Projects", Nombre0: "Project", Funcion: "Gestiona_Proyecto", Tipo: "Lista_actualizable" });
                }
                else if (V_tabla_aux == "Usuarios") {
                    D_ATRIB0.push({ Nombre: "Users", Nombre0: "User", Funcion: "", Tipo: "Lista_actualizable" });
                }
                else if (V_tabla_aux == "TEAMCOSTS") {
                    D_ATRIB0.push({ Nombre: "Team member Costs", Nombre0: "Team member Costs", Funcion: "", Tipo: "Lista_actualizable" });
                }
                else if (V_tabla_aux == "TASKS_NP") {
                    D_ATRIB0.push({ Nombre: "Time allocation Tasks", Nombre0: "Time allocation Tasks", Funcion: "", Tipo: "Lista_actualizable" });
                }
                else if (V_tabla_aux == "PARAMS") {
                    if (V_subtipo01 == "PR_STATUS") {
                        D_ATRIB0.push({ Nombre: "Task Status", Nombre0: "Parameters", Funcion: "", Tipo: "Lista_actualizable" });
                    }
                    else if (V_subtipo01 == "PR_TYPES") {
                        D_ATRIB0.push({ Nombre: "Project Types", Nombre0: "Parameters", Funcion: "", Tipo: "Lista_actualizable" });
                    }
                    else if (V_subtipo01 == "PR_PROFILES") {
                        D_ATRIB0.push({ Nombre: "Team Member Profiles", Nombre0: "Parameters", Funcion: "", Tipo: "Lista_actualizable" });
                    }
                }
                return D_ATRIB0;
            }
            function Cargar_datos_pantalla(V_proj, V_subtipo0) {
                var D_DATOS0 = [];
                if (V_proj == "Proyectos") {
                    D_DATOS0.push({ ID_Proy: "9001", Nom_Proy: "Proyecto Test 1", Fec_Ini: "01/03/2020", Fec_Fin: "01/11/2020", Est_Proy: "Created", Tip_Proy: "Normal", Res_Proy: "1", Team_Proy: "1,2,3" });
                    D_DATOS0.push({ ID_Proy: "9002", Nom_Proy: "Proyecto Test 2", Fec_Ini: "01/03/2020", Fec_Fin: "01/11/2020", Est_Proy: "Created", Tip_Proy: "Normal", Res_Proy: "2", Team_Proy: "3,4,5" });
                    D_DATOS0.push({ ID_Proy: "9003", Nom_Proy: "Proyecto Jarr 3", Fec_Ini: "01/03/2020", Fec_Fin: "01/11/2020", Est_Proy: "Created", Tip_Proy: "Normal", Res_Proy: "3", Team_Proy: "1,2,6,7,8" });
                }
                else if (V_proj == "Usuarios") {
                    D_DATOS0.push({ ID_Usuario: "pedro.picapiedra", Nom_Us: "Pedro Picapiedra", Correo: "pperez@gonnav.com", Role: "Project Manager", Tipo: "", Empresa: "", Estado: "Active", Comentarios: "" });
                    D_DATOS0.push({ ID_Usuario: "betty.marmol", Nom_Us: "Betty Marmol", Correo: "pperez2@gonnav.com", Role: "Consultant", Tipo: "", Empresa: "", Estado: "Active", Comentarios: "" });
                    D_DATOS0.push({ ID_Usuario: "pablo.marmol", Nom_Us: "Pablo Marmol", Correo: "pperez3@gonnav.com", Role: "Consultant", Tipo: "", Empresa: "", Estado: "Active", Comentarios: "" });
                    D_DATOS0.push({ ID_Usuario: "vilma.picapiedra", Nom_Us: "Vilma Picapiedra", Correo: "pperez4@gonnav.com", Role: "Programmer", Tipo: "", Empresa: "", Estado: "Active", Comentarios: "" });
                    D_DATOS0.push({ ID_Usuario: "bambam.marmol", Nom_Us: "Bambam Marmol", Correo: "pperez5@gonnav.com", Role: "Project Manager", Tipo: "", Empresa: "", Estado: "Inactive", Comentarios: "" });
                }
                else if (V_proj == "TEAMCOSTS") {
                    D_DATOS0.push({ ID_Usuario: "pedro.picapiedra", Coste: "80,50", Moneda: "EUR", COMMENTS: "" });
                    D_DATOS0.push({ ID_Usuario: "betty.marmol", Coste: "81,50", Moneda: "EUR", COMMENTS: "" });
                    D_DATOS0.push({ ID_Usuario: "pablo.marmol", Coste: "82,50", Moneda: "USD", COMMENTS: "" });
                    D_DATOS0.push({ ID_Usuario: "vilma.picapiedra", Coste: "83,50", Moneda: "EUR", COMMENTS: "" });
                    D_DATOS0.push({ ID_Usuario: "bambam.marmol", Coste: "84,50", Moneda: "EUR", COMMENTS: "" });
                }
                else if (V_proj == "TASKS_NP") {
                    D_DATOS0.push({ T_ID: "1", TASKTYPE: "Maintenance", TASK_TXT: "Application Maintenance", COMMENTS: "" });
                    D_DATOS0.push({ T_ID: "2", TASKTYPE: "Paid Absence", TASK_TXT: "Holidyas", COMMENTS: "" });
                    D_DATOS0.push({ T_ID: "3", TASKTYPE: "Training", TASK_TXT: "Training", COMMENTS: "" });
                    D_DATOS0.push({ T_ID: "4", TASKTYPE: "Others", TASK_TXT: "Internal meetings", COMMENTS: "" });
                }
                else if (V_proj == "PARAMS") {  //PR_STATUS, PR_TYPES, PR_PROFILES
                    D_DATOS0.push({ PARAM_TIPO: "PR_STATUS", PARAM_SUBTIPO: "", PARAM_ID: "1", PARAM_TEXT: "Not initiated", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_STATUS", PARAM_SUBTIPO: "", PARAM_ID: "2", PARAM_TEXT: "Active", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_STATUS", PARAM_SUBTIPO: "", PARAM_ID: "3", PARAM_TEXT: "Completed", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_STATUS", PARAM_SUBTIPO: "", PARAM_ID: "4", PARAM_TEXT: "Not Apply", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_TYPES", PARAM_SUBTIPO: "", PARAM_ID: "1", PARAM_TEXT: "Type Project 1", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_TYPES", PARAM_SUBTIPO: "", PARAM_ID: "2", PARAM_TEXT: "Type Project 2", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_TYPES", PARAM_SUBTIPO: "", PARAM_ID: "3", PARAM_TEXT: "Type Project 3", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_TYPES", PARAM_SUBTIPO: "", PARAM_ID: "4", PARAM_TEXT: "Type Project 4", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_PROFILES", PARAM_SUBTIPO: "", PARAM_ID: "1", PARAM_TEXT: "Project Manager", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_PROFILES", PARAM_SUBTIPO: "", PARAM_ID: "2", PARAM_TEXT: "Consultant", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_PROFILES", PARAM_SUBTIPO: "", PARAM_ID: "3", PARAM_TEXT: "Programmer", COLOR: "" });
                    D_DATOS0.push({ PARAM_TIPO: "PR_PROFILES", PARAM_SUBTIPO: "", PARAM_ID: "4", PARAM_TEXT: "Tester", COLOR: "" });
                }
                return D_DATOS0;
            }
            function Cargar_datos_validacion() {
                var D_VALORES0 = [];
                D_VALORES0.push({ Campo: "Est_Proy", V_id: "1", V_value: "Created", Color: "#ffccff" });
                D_VALORES0.push({ Campo: "Est_Proy", V_id: "2", V_value: "Initiated", Color: "#ffffcc" });
                D_VALORES0.push({ Campo: "Est_Proy", V_id: "3", V_value: "In Progress", Color: "#cef1cb" });
                D_VALORES0.push({ Campo: "Est_Proy", V_id: "4", V_value: "In Test", Color: "#ffccff" });
                D_VALORES0.push({ Campo: "Est_Proy", V_id: "5", V_value: "Closed", Color: "#ffccff" });
                D_VALORES0.push({ Campo: "Tip_Proy", V_id: "1", V_value: "Standard", Color: "grey" });
                D_VALORES0.push({ Campo: "Tip_Proy", V_id: "2", V_value: "Agile1", Color: "orange" });
                D_VALORES0.push({ Campo: "Tip_Proy", V_id: "3", V_value: "Normal", Color: "" });
                D_VALORES0.push({ Campo: "Res_Proy", V_id: "1", V_value: "Pepito", Color: "" });
                D_VALORES0.push({ Campo: "Res_Proy", V_id: "2", V_value: "Pepitin", Color: "" });
                D_VALORES0.push({ Campo: "Res_Proy", V_id: "3", V_value: "Pepiton", Color: "" });
                D_VALORES0.push({ Campo: "Role", V_id: "1", V_value: "Programmer", Color: "" });
                D_VALORES0.push({ Campo: "Role", V_id: "2", V_value: "Consultant", Color: "" });
                D_VALORES0.push({ Campo: "Role", V_id: "3", V_value: "Project Manager", Color: "" });
                D_VALORES0.push({ Campo: "Tipo", V_id: "1", V_value: "User", Color: "#99ff66" });
                D_VALORES0.push({ Campo: "Tipo", V_id: "2", V_value: "Admin", Color: "#ffff66" });
                D_VALORES0.push({ Campo: "Estado", V_id: "1", V_value: "Pending", Color: "#ffffcc" });
                D_VALORES0.push({ Campo: "Estado", V_id: "2", V_value: "Active", Color: "#cef1cb" });
                D_VALORES0.push({ Campo: "Estado", V_id: "4", V_value: "Inactive", Color: "#ffccff" });
                D_VALORES0.push({ Campo: "STATUS", V_id: "1", V_value: "Pending", Color: "#ffffcc" });
                D_VALORES0.push({ Campo: "STATUS", V_id: "2", V_value: "Active", Color: "#cef1cb" });
                D_VALORES0.push({ Campo: "STATUS", V_id: "3", V_value: "Inactive", Color: "#ffccff" });
                return D_VALORES0;
            }
            function Gestiona_Proyecto(V_proj) {
                console.log('Gestiona_proyecto: ' + V_proj);
                leerproyecto(V_proj);
                console.log('Dia_ini0GP:' + Dia_ini0);
                display_menu_lateral(V_proj);
                acciones_menus(V_proj);
            }
            function display_menu_seleccion(V_MENU) {
                var V_html = '<div class="panel_lateral"></div><div class="panel_datos panel_datos_css"></div>';
                $('.Div_trabajo').empty();
                $('.Div_trabajo').append(V_html);
                var V_ancho_panel_lateral = 160; var V_ancho_PL = V_ancho_panel_lateral + 'px';
                var V_alto0 = $(window).height() - 55; var V_alto = V_alto0 + 'px';
                //var V_aux = parseFloat(V_ancho_PL) - 5;
                var V_ancho = $(window).width() - 95;
                V_ancho = V_ancho + 'px';
                $('.panel_lateral').css('width', V_ancho_PL);
                $('.panel_lateral').css('height', V_alto);
                $('.panel_datos').css('width', V_ancho);
                $('.panel_datos').css('height', V_alto);
                var V_ancho2 = V_ancho_panel_lateral + 5; V_ancho_PL2 = V_ancho2 + 'px';
                $('.panel_datos').css('margin-left', V_ancho_PL2);
                var V_html = '<div class="Menu_lateral"><div>';
                $('.panel_lateral').append(V_html);
                // TABLAS A GESTIONAR
                var T_MENU_CONFIG = [];
                if (V_MENU == "CONFIG") {
                    T_MENU_CONFIG.push({ ID: "1", NOMBRE: "Project Status", TABLA: "PARAMS", SUBTIPO: "PR_STATUS" });
                    T_MENU_CONFIG.push({ ID: "2", NOMBRE: "Time allocation tasks", TABLA: "TASKS_NP", SUBTIPO: "" });
                    T_MENU_CONFIG.push({ ID: "3", NOMBRE: "Project Types", TABLA: "PARAMS", SUBTIPO: "PR_TYPES" });
                    T_MENU_CONFIG.push({ ID: "4", NOMBRE: "Team Profiles", TABLA: "PARAMS", SUBTIPO: "PR_PROFILES" });
                    T_MENU_CONFIG.push({ ID: "5", NOMBRE: "Team Costs", TABLA: "TEAMCOSTS", SUBTIPO: "" });
                }
                else if (V_MENU == "REPORT") {
                    T_MENU_CONFIG.push({ ID: "1", NOMBRE: "Project Time Approval", TABLA: "V_TIMES1", SUBTIPO: "PR_STATUS" });
                    T_MENU_CONFIG.push({ ID: "2", NOMBRE: "Project Times", TABLA: "V_TIMES2", SUBTIPO: "" });
                    T_MENU_CONFIG.push({ ID: "3", NOMBRE: "Project Costs", TABLA: "V_COSTS", SUBTIPO: "PR_TYPES" });
                }
                var V_htmlM = Construye_menu_config(T_MENU_CONFIG);
                $('.Menu_lateral').append(V_htmlM);
                $('.search_li').click(function () {
                    var V_id_panel = $(this).attr("id"); // PANEL SOBRE EL QUE SE HA SOLTADO
                    var resultArray2 = $.grep(T_MENU_CONFIG, function (element2) {
                        return element2.ID == V_id_panel;
                    });
                    var V_tabla = ""; var V_subtipo = "";
                    if (resultArray2.length != "0") {
                        V_tabla = resultArray2[0].TABLA;
                        V_subtipo = resultArray2[0].SUBTIPO;
                    }
                    console.log("V_tabla:" + V_tabla + "V_subtipo:" + V_subtipo);
                    if (V_MENU == "CONFIG") {
                        D_DATOS = Cargar_datos_pantalla(V_tabla, V_subtipo);
                        Pantalla_Listado(V_tabla, V_subtipo, "X");
                    }
                    else if (V_MENU == "REPORT") {
                        Pantalla_Report(V_tabla, V_subtipo);
                    }
                });
            }
            function Construye_menu_config(T_Menu) {
                var V_html0 = '<ul>'; var V_html1 = '<ul>';
                var i_li = 0;
                for (var i = 0; i < T_Menu.length; i++) {
                    var V_name = T_Menu[i]["NOMBRE"];
                    var V_id = T_Menu[i]["ID"];
                    var V_a = "a" + V_id;
                    V_html1 = V_html1 + '<a id="' + V_a + '"><li class="search_li" id="' + V_id + '" tabindex="-1" aria-selected="true" role="option">';
                    V_html1 = V_html1 + '<div class="text_lateral sel_lateral">' + V_name + '</div></li></a>';
                }
                V_html1 = V_html1 + '</ul>';
                return V_html1;
            }
            function display_menu_lateral(V_proj) {
                var V_html = '<div class="panel_lateral"></div><div class="panel_datos panel_datos_css"></div>';
                $('.Div_trabajo').empty();
                $('.Div_trabajo').append(V_html);
                var V_ancho_panel_lateral = 160; var V_ancho_PL = V_ancho_panel_lateral + 'px';
                var V_alto0 = $(window).height() - 55; var V_alto = V_alto0 + 'px';
                //var V_aux = parseFloat(V_ancho_PL) - 5;
                var V_ancho = $(window).width() - 95;
                V_ancho = V_ancho + 'px';
                $('.panel_lateral').css('width', V_ancho_PL);
                $('.panel_lateral').css('height', V_alto);
                $('.panel_datos').css('width', V_ancho);
                $('.panel_datos').css('height', V_alto);
                var V_ancho2 = V_ancho_panel_lateral + 5; V_ancho_PL2 = V_ancho2 + 'px';
                $('.panel_datos').css('margin-left', V_ancho_PL2);
                // SELLECCION PROYECTO
                var V_html = '<div id = "Menu_sup_proj"><table><td><div id = "Div_proyecto" class="Titulo_proyecto"></div></td><td><div id = "Div_menu_lat"></div></td></tr></table></div><hr>';
                $('.panel_lateral').append(V_html);
                var V_html = '<div class="selpro"><select id="PROYECTO" class="sel1 Text_sel"  class="text2" style="width:150px; height:25px" tabindex="-1"> <option>' + '  ' + '</option>';
                for (var i = 0; i < T_PROYECTOS.length; i++) {
                    V_html = V_html + '<option id=' + T_PROYECTOS[i]["ID_Proy"] + '>' + T_PROYECTOS[i]["Nom_Proy"] + '</option>';
                }
                V_html = V_html + '</select></div><div class="Menu_lateral">';
                $('#Div_proyecto').empty();
                $('#Div_proyecto').append(V_html);
                //INDICA EL PROYECTO SELECCIONADO
                $("#PROYECTO option[id='" + V_proj + "']").attr("selected", "selected");
                $('#Project').click(function () {
                    $('#Scrum').removeClass('Sel_lateral2');
                    $('#Planning').removeClass('Sel_lateral2');
                    $(this).addClass('Sel_lateral2');
                    $('.panel_datos').empty();
                });
                //CARGA FASES
                var Fases0 = [];
                Fases0.push({ PHASE: "1", SUB_PHASE: "0", ACTIVITY: "0", LEVEL: "1", NAME: "Planning - Phases", ICON: V_img_planG, FUNCTION: "F_phases" });
                //Fases0.push({ PHASE: "2", SUB_PHASE: "0", ACTIVITY: "0", LEVEL: "1", NAME: "Kanban", ICON: V_img_recG, FUNCTION: "F_resources" });
                Fases0.push({ PHASE: "3", SUB_PHASE: "0", ACTIVITY: "0", LEVEL: "1", NAME: "Planning - Costs", ICON: V_img_recG, FUNCTION: "F_resources" });
                Fases0.push({ PHASE: "4", SUB_PHASE: "0", ACTIVITY: "0", LEVEL: "1", NAME: "Actual Costs", ICON: V_img_costesG, FUNCTION: "F_costs" });
                //Fases0.push({ PHASE: "5", SUB_PHASE: "0", ACTIVITY: "0", LEVEL: "1", NAME: "Reports", ICON: "", FUNCTION: "" });
                //Fases0.push({ PHASE: "5", SUB_PHASE: "1", ACTIVITY: "0", LEVEL: "2", NAME: "Cost Report", ICON: V_img_costes_Rep, FUNCTION: "F_cost_report" });
                //Fases0.push({ PHASE: "5", SUB_PHASE: "2", ACTIVITY: "0", LEVEL: "2", NAME: "Approval", ICON: V_img_aprov_Rep, FUNCTION: "F_aprov_report" });
                //console.log('Fases0.length0: ' + Fases0.length);
                var V_htmlM = Construye_menu(Fases0);
                // MENU LATERAL CON OPCIONES
                //$('.Div_menu_lat').empty();
                $('.Menu_lateral').append(V_htmlM);
                //console.log('V_html0:' + V_html0);
                //formato_menus(); SE ELIMINA EN ESTA VERSION EL MENU EXTENSIBLE
            }
            function Construye_menu(T_Menu) {
                var V_html0 = '<ul>';
                var i_li = 0;
                for (var i = 0; i < T_Menu.length; i++) {
                    var V_phase0 = T_Menu[i]["PHASE"];
                    var V_sub_phase0 = T_Menu[i]["SUB_PHASE"];
                    var V_level = T_Menu[i]["LEVEL"];
                    var V_activity0 = T_Menu[i]["ACTIVITY"];
                    var V_icono = T_Menu[i]["ICON"];
                    var V_valor = T_Menu[i]["NAME"];
                    var V_function = T_Menu[i]["FUNCTION"];
                    //console.log('Fase:' + V_valor + ' V_icono: ' + V_icono);
                    var V_ntabla = "TSEARCH" + i;
                    i_li = parseFloat(i_li) + 1;
                    if (i_li > 1 && V_level == "1") {
                        V_html0 = V_html0 + '</ul>';
                    }
                    if (V_level == "1") {
                        var V_id = V_phase0 + "-" + V_sub_phase0 + "-" + V_activity0;
                        var V_a = "a" + V_id;
                        V_html0 = V_html0 + '<ul role="listbox" aria-multiselectable="false" id="search" tabindex="0" class="Search_ul" style="position: static;">' + '<a  id="' + V_a + '">';
                        if (V_function != "") {
                            V_html0 = V_html0 + '<li id="' + V_id + '" tabindex="-1" aria-selected="true" role="option" class="search_li">';
                        }
                        else {
                            V_html0 = V_html0 + '<li id="' + V_id + '" tabindex="-1" aria-selected="true" role="option">';
                        }
                        V_html0 = V_html0 + ' <div class = "T_row_ps"><table id="' + V_ntabla + '">';
                        if (V_icono == "") {
                            V_html0 = V_html0 + '<tr class="parent" data-level="0"> <td class = "Text_nosel">' + V_valor + '</td></tr>';
                        }
                        else {
                            V_html0 = V_html0 + '<tr class="parent" data-level="0"><td>' + V_icono + '</td><td class = "text_lateral">' + V_valor + '</td></tr>';
                        }
                        V_html0 = V_html0 + '</table></div></li></a>';
                    }
                    if (V_level == "2") {
                        var V_id = V_phase0 + "-" + V_sub_phase0 + "-" + V_activity0;
                        V_html0 = V_html0 + '<li id="' + V_id + '" tabindex="-1" aria-selected="true" role="option" class="search_li">';
                        V_html0 = V_html0 + '<div class = "row_os child"><table id="' + V_ntabla + '">';
                        if (V_icono == "") {
                            V_html0 = V_html0 + '<tr class="child" data-level="1"> <td class = "text_lateral2">' + V_valor + '</td></tr>';
                        }
                        else {
                            //console.log('Hay icono:' + V_icono + ".");
                            V_html0 = V_html0 + '<tr class="child" data-level="1"><td>' + V_icono + '</td><td class = "text_lateral2">' + V_valor + '</td></tr>';
                        }
                        V_html0 = V_html0 + '</tr></table></div></li>';
                    }
                }
                V_html0 = V_html0 + '</a></ul></ul></div>';
                return V_html0;
            }
            function acciones_menus(V_proyecto_sel) {
                // POR DEFECTO
                Informa_fechas();
                dibujaproyectoFASES(V_proyecto_sel);
                $('.Sel_lateral2').removeClass('Sel_lateral2');
                $('#1-0-0').addClass('Sel_lateral2');
                console.log('acciones_menus SELECCIONADO');
                $('#1-0-0').on('click', function (e) {
                    console.log('CLICK FASES SELECCIONADO');
                    $('.Sel_lateral2').removeClass('Sel_lateral2');
                    $(this).addClass('Sel_lateral2');
                    $('.panel_datos').empty();
                    V_display_mode_PLAN = "X";
                    e.preventDefault();
                    //$('#TABLA_DATOS_PROYECTO_SEM_F').empty(); $('#Fases').empty(); $('#Separador_sem ').empty();
                    if (V_proyecto_sel != "") {
                        Informa_fechas();
                        dibujaproyectoFASES(V_proyecto_sel);
                    }
                });
                $('#3-0-0').on('click', function (e) {
                    console.log('CLICK RECURSOS SELECCIONADO');
                    $('.Sel_lateral2').removeClass('Sel_lateral2');
                    $(this).addClass('Sel_lateral2');
                    $('.panel_datos').empty();
                    e.preventDefault();
                    if (V_proyecto_sel != "") {
                        Informa_fechas();
                        dibujaproyectoRECURSOS(V_proyecto_sel);
                    }
                });
                $('#4-0-0').on('click', function (e) {
                    console.log('CLICK COSTES SELECCIONADO');
                    $('.Sel_lateral2').removeClass('Sel_lateral2');
                    $(this).addClass('Sel_lateral2');
                    $('.panel_datos').empty();
                    e.preventDefault();
                    if (V_proyecto_sel != "") {
                        Informa_fechas();
                        dibujaproyectoCOSTESREALES(V_proyecto_sel);
                    }
                });
                $('#2-0-0').on('click', function (e) {
                    console.log('CLICK KANBAN');
                    $('.Sel_lateral2').removeClass('Sel_lateral2');
                    $(this).addClass('Sel_lateral2');
                    $('.panel_datos').empty();
                    var V_alto0 = $(window).height() - 55;
                    var V_alto = parseFloat(V_alto0) - 10 + 'px';
                    var V_html = '<div class="Titulo1">' + V_nombreT + '</div>';
                    var V_html = V_html + '<table><tr><td><div class="panel1 Scrum" id="PanelPending" style="height:' + V_alto + '; width: 260px"><div class="text2" style="height:40px; padding:10px"> TODO</div>';
                    var V_html = V_html + '<table id="Tabla_Pending"><tr><td><div class="panel2 Sticker" id= "Sticker1.1"><div>';
                    var V_html = V_html + 'Tarea 1.0: Realizar pantalla entrada de datos</div><div id="Estado"> Estado: Pending</div></div></td></tr>';
                    var V_html = V_html + '<tr><td><div class="panel2 Sticker" id= "Sticker1.2"><div>Tarea 1.1: Bla, bla, bla... </div><div id="Estado"> Estado: Pending</div></div></td></tr>';
                    var V_html = V_html + '<tr><td><div class="panel2 Sticker" id= "Sticker1.3"><div>Tarea 1.2: Blo, blo, blo... </div><div id="Estado"> Estado: Pending</div></td></div></tr></table></div>';
                    var V_html = V_html + '</td><td><div class="panel1 Scrum" id="PanelDoing" style="height:' + V_alto + '; width: 260px"><div class="text2" style="height:40px; padding:10px"> DOING</div>';
                    var V_html = V_html + '<table id="Tabla_Doing"><tr><td><div class="panel2 Sticker" id= "Sticker2"><div>';
                    var V_html = V_html + 'Tarea 2.0: qwerty............................</div><div id="Estado"> Estado: Doing</div></div></td></tr>';
                    var V_html = V_html + '<tr><td><div class="panel2 Sticker" id= "Sticker1.2"><div>Tarea 1.1: Bla, bla, bla... </div><div id="Estado"> Estado: Doing</div></div></td></tr></table>';
                    var V_html = V_html + '</td><td><div class="panel1 Scrum" id="PanelDone" style="height:' + V_alto + '; width: 260px"><div class="text2" style="height:40px; padding:10px"> DONE</div>';
                    var V_html = V_html + '<table id="Tabla_Done"><tr><td><div class="panel2 Sticker" id= "Sticker3"><div> Tarea 3:...</div><div id="Estado"> Estado: Done</div></div></td></tr></table>';
                    var V_html = V_html + '</td></tr></div>';
                    $('.panel_datos').append(V_html);
                    $(".Sticker").draggable();
                    $(".Scrum").droppable({
                        drop: function (event, ui) {
                            $(this).css('background', '#ece9e9');
                            var V_id_panel = $(this).attr("id"); // PANEL SOBRE EL QUE SE HA SOLTADO
                            var V_tabla;
                            switch (V_id_panel) {
                                case "PanelPending":
                                    V_tabla = "Tabla_Pending";
                                    break;
                                case "PanelDoing":
                                    V_tabla = "Tabla_Doing";
                                    break;
                                case "PanelDone":
                                    V_tabla = "Tabla_Done";
                                    break;
                            }
                            console.log('Panel donde se ha arrastrado:' + V_id_panel + ' Tabla:' + V_tabla);
                            var V_html = "<div> Lo has soltado sobre el panel " + V_id_panel + ", pillin";
                            //$(ui.draggable).find('#Estado').empty();
                            //$(ui.draggable).find('#Estado').append(V_html);
                            var Link = $(ui.draggable).html(); // ELEMENTO ARRASTRADO SOLO EL DE DENTRO DEL DIV SCRUM
                            var V_id0 = $(ui.draggable).attr("id");
                            console.log('Panel arrastrado, V_id0:' + V_id0);
                            console.log('Link:' + Link);
                            var V_html = '<tr><td><div class="panel2 Sticker" id= "' + V_id0 + '>' + Link + '</div></td></tr>';
                            //var V_html = '<tr><td><div>JARRR</div></td></tr>';
                            $(ui.draggable).remove();
                            //$('#' + V_tabla).append(V_html);
                            $('#' + V_tabla).find('#Estado').empty();
                            $('#' + V_tabla).find('#Estado').append(V_html);
                            //$('.Tabla_Doing').append("<tr><td>JARRRRRRR</td></tr>");
                            $(".Sticker").draggable(); // SE HACE QUE EL NUEVO PANEL TAMBIEN SEA DRAGGABLE
                        },
                        over: function (event, ui) {
                            $(this).css('background', 'cyan');
                        },
                        out: function (event, ui) {
                            $(this).css('background', '#ece9e9');
                            $(this).css('position', 'relative');
                        }
                    });
                })
            }
            function leerdatosgenerales() {
                console.log('Carga datos generales:');
                // CARGA DATOS PERFILES
                T_PERFILES = [];
                T_PERFILES.push({ ID: "1", PERFIL: "Project Manager" });
                T_PERFILES.push({ ID: "2", PERFIL: "Senior FI Consultant" });
                T_PERFILES.push({ ID: "3", PERFIL: "Senior SD Consultant" });
                T_PERFILES.push({ ID: "4", PERFIL: "Junior FI Consultant" });
                T_PERFILES.push({ ID: "5", PERFIL: "Programmer" });
                // CARGA DATOS USUARIOS
                T_USUARIOS_ACT = [];
                T_USUARIOS_ACT.push({ ID: "1", COD_US: "pedro.picapiedra", INI: 'PP', COLOR: "#597bfc" });
                T_USUARIOS_ACT.push({ ID: "2", COD_US: "betty.marmol", INI: 'BM', COLOR: "#cccc35" });
                T_USUARIOS_ACT.push({ ID: "3", COD_US: "pablo.marmol", INI: 'PM', COLOR: "#2b2c5c" });
                T_USUARIOS_ACT.push({ ID: "4", COD_US: "vilma.picapiedra", INI: 'VP', COLOR: "#f279f2" });
                T_USUARIOS_ACT.push({ ID: "5", COD_US: "bambam.marmol", INI: 'BM', COLOR: "#00cd6f" });
                T_USUARIOS_ACT.push({ ID: "6", COD_US: "pebbles.picapiedra", INI: 'PE', COLOR: "#597bfc" });
                T_USUARIOS_ACT.push({ ID: "7", COD_US: "dino", INI: 'DB', COLOR: "#cccc35" });
                T_USUARIOS_ACT.push({ ID: "8", COD_US: "mr.slate", INI: 'MS', COLOR: "#2b2c5c" });
                T_USUARIOS_ACT.push({ ID: "9", COD_US: "jane.jetson", INI: 'JJ', COLOR: "#f279f2" });
                // CARGA VALORES POSIBLES TABLAS
                T_VALORES = [];
                T_VALORES.push({ TABLA: "STATUS", ID: "1", TEXT: "NOT INITIATED", COLOR: "#D9D9D9" });
                T_VALORES.push({ TABLA: "STATUS", ID: "2", TEXT: "PLAN", COLOR: "#FDDA65" });
                T_VALORES.push({ TABLA: "STATUS", ID: "3", TEXT: "ACTIVE", COLOR: "#FF9F9F" });
                T_VALORES.push({ TABLA: "STATUS", ID: "4", TEXT: "CLOSED", COLOR: "#A8F088" });

            }
            function leerproyecto(V_proyecto) {
                console.log('Carga datos proyecto:' + V_proyecto);
                // INICIO CARGA DATOS FICTICIOS
                T_FASES = [];
                T_FASES.push({ ID: "1", ORDEN: 1, NOMBRE: "Preparacion", FECINI: "01/06/2019", FECFIN: "15/06/2019", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES.push({ ID: "2", ORDEN: 2, NOMBRE: "Diseño", FECINI: "20/06/2019", FECFIN: "18/07/2019", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "1", DESP: "" });
                T_FASES.push({ ID: "3", ORDEN: 3, NOMBRE: "Realizacion", FECINI: "10/07/2019", FECFIN: "14/09/2019", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "2", DESP: "" });
                T_FASES.push({ ID: "4", ORDEN: 4, NOMBRE: "Test", FECINI: "15/09/2019", FECFIN: "17/02/2020", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "", DESP: "" });
                T_FASES.push({ ID: "5", ORDEN: 5, NOMBRE: "Realizacion", FECINI: "10/07/2019", FECFIN: "14/09/2019", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES.push({ ID: "6", ORDEN: 6, NOMBRE: "Test", FECINI: "15/09/2019", FECFIN: "17/02/2020", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES.push({ ID: "7", ORDEN: 7, NOMBRE: "Test", FECINI: "15/09/2019", FECFIN: "17/02/2020", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES.push({ ID: "8", ORDEN: 8, NOMBRE: "Realizacion", FECINI: "10/07/2019", FECFIN: "14/09/2019", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES.push({ ID: "9", ORDEN: 9, NOMBRE: "Test", FECINI: "15/09/2019", FECFIN: "17/02/2020", STATUS: "PLAN", NIVEL: "0", RECURSOS: "", PRECEDENTES: "", DESP: "" });
                T_FASES_REC = [];
                T_FASES_REC.push({ ID: "1", REC: "1" });
                T_FASES_REC.push({ ID: "1", REC: "2" });
                T_FASES_REC.push({ ID: "1", REC: "3" });
                T_FASES_REC.push({ ID: "2", REC: "2" });
                T_FASES_REC.push({ ID: "2", REC: "3" });
                T_FASES_REC.push({ ID: "2", REC: "4" });
                T_FASES_REC.push({ ID: "3", REC: "3" });
                T_FASES_DET = []; // fecha a excepcionar dentro del desde hasta
                T_FASES_DET.push({ ID: "1", FECINI: "03/06/2019", FECFIN: "03/06/2019" });
                T_FASES_DET.push({ ID: "1", FECINI: "06/06/2019", FECFIN: "14/06/2019" });
                T_FASES_DET.push({ ID: "1", FECINI: "17/06/2019", FECFIN: "18/07/2019" });
                T_FASES_DET.push({ ID: "2", FECINI: "17/07/2019", FECFIN: "13/09/2019" });
                T_FASES_DET.push({ ID: "3", FECINI: "10/07/2019", FECFIN: "13/09/2019" });
                //T_FASES_DET.push({ ID: "4", FECINI: "16/09/2019", FECFIN: "02/10/2019"});
                T_FASES_DET.push({ ID: "5", FECINI: "16/09/2019", FECFIN: "02/10/2019" });
                T_FASES_DET.push({ ID: "6", FECINI: "16/09/2019", FECFIN: "02/10/2019" });
                T_FASES_DET.push({ ID: "7", FECINI: "16/09/2019", FECFIN: "02/10/2019" });
                T_FASES_DET.push({ ID: "8", FECINI: "16/09/2019", FECFIN: "02/10/2019" });
                T_FASES_DET.push({ ID: "9", FECINI: "16/09/2019", FECFIN: "20/09/2019" });
                T_FASES_DET.push({ ID: "9", FECINI: "25/09/2019", FECFIN: "02/10/2019" });
                // ARRAY TEMPORAL HASTA QUE SE SALE Y SE GRABA
                var aData = [];
                aData[0] = V_proyecto;
                //..... url: "../js/Globales.asmx/LeerFasesProyecto",
                // INICIO CARGA DATOS FICTICIOS
                T_RECURSOS = [];
                T_RECURSOS.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201926", JORNADAS: "20", TARIFA: "400", ORDEN: "1.201926" });
                T_RECURSOS.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201927", JORNADAS: "21", TARIFA: "400", ORDEN: "1.201927" });
                T_RECURSOS.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201928", JORNADAS: "22", TARIFA: "400", ORDEN: "1.201928" });
                T_RECURSOS.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201929", JORNADAS: "23", TARIFA: "400", ORDEN: "1.201929" });
                T_RECURSOS.push({ ID: "2", PERFIL: "Senior SD Consultant", USUARIO: "pablo.marmol", SEMANA: "201926", JORNADAS: "24", TARIFA: "400", ORDEN: "2.201926" });
                T_RECURSOS.push({ ID: "2", PERFIL: "Senior SD Consultant", USUARIO: "pablo.marmol", SEMANA: "201927", JORNADAS: "25", TARIFA: "400", ORDEN: "2.201927" });
                T_RECURSOS.push({ ID: "2", PERFIL: "Senior SD Consultant", USUARIO: "pablo.marmol", SEMANA: "201947", JORNADAS: "55", TARIFA: "400", ORDEN: "2.201947" });
                T_RECURSOS.push({ ID: "3", PERFIL: "Senior SD Consultant", USUARIO: "betty.marmol", SEMANA: "201947", JORNADAS: "55", TARIFA: "400", ORDEN: "3.201947" });
                V_recurso_index = 3;
                T_COSTES = [];
                T_COSTES.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201926", JORNADAS: "0,3", TARIFA: "400", ORDEN: "1.201926" });
                T_COSTES.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201927", JORNADAS: "2,1", TARIFA: "400", ORDEN: "1.201927" });
                T_COSTES.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201928", JORNADAS: "3,3", TARIFA: "400", ORDEN: "1.201928" });
                T_COSTES.push({ ID: "1", PERFIL: "Senior FI Consultant", USUARIO: "pedro.picapiedra", SEMANA: "201929", JORNADAS: "4,4", TARIFA: "400", ORDEN: "1.201929" });
                T_COSTES.push({ ID: "2", PERFIL: "Senior SD Consultant", USUARIO: "pablo.marmol", SEMANA: "201927", JORNADAS: "0,7", TARIFA: "400", ORDEN: "2.201927" });
                T_COSTES.push({ ID: "3", PERFIL: "Project Manager", USUARIO: "betty.marmol", SEMANA: "201928", JORNADAS: "4,2", TARIFA: "400", ORDEN: "3.201928" });
                Dia_ini0 = '01/06/2019';
                Dia_fin0 = '10/01/2020';
                var Datos = [];
            }
            function Informa_fechas(V_proyecto) {
                console.log('Informa_fechas:' + V_proyecto);
                //console.log('Dia_ini0:' + Dia_ini0);
                $('.panel_datos').empty();
                var V_html = '<div class="Titulo1">' + V_nombreT + '</div>';
                V_html = V_html + '<div class ="panel_fechas"><table id="Fechas_proyecto"></table></div>';
                V_html = V_html + '<div class ="Titulo_tabla"></div>';
                V_html = V_html + '<div class ="Panel_tabla"></div>';
                $('.panel_datos').append(V_html);
                $('#Fechas_proyecto').empty();
                var V_html = '<tr><td>Fecha inicio:</td><td> <input type="date" class="Fecha_ini Fechas_Proy Fecha_sel"/>';
                V_html = V_html + '</td></tr><td>Fecha fin:</td><td> <input type="date" class="Fecha_fin Fechas_Proy Fecha_sel"/></td></tr>';
                $('#Fechas_proyecto').html(V_html);
                var V_inid = Dia_ini0.substring(0, 2); var V_inim = parseFloat(Dia_ini0.substring(3, 5)); var V_inia = Dia_ini0.substring(6, 10);
                var Dia_ini00 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                Sem_ini = Calcula_semana(Dia_ini00);
                if (V_inim < 10) { V_inim = "0" + V_inim; }
                V_iniGT = V_inia + "-" + V_inim + "-" + V_inid;
                $('.Fecha_ini').val(V_iniGT);
                var V_find = Dia_fin0.substring(0, 2); var V_finm = parseFloat(Dia_fin0.substring(3, 5)); var V_fina = Dia_fin0.substring(6, 10); //GNA 14102019
                var Dia_fin00 = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                Sem_fin = Calcula_semana(Dia_fin00);
                if (V_finm < 10) { V_finm = "0" + V_finm; }
                V_finGT = V_fina + "-" + V_finm + "-" + V_find;
                $('.Fecha_fin').val(V_finGT);
                $('.Fechas_Proy').change(function () {
                    var V_fecini2 = $('.Fecha_ini').val();
                    var V_fecfin2 = $('.Fecha_fin').val();
                    var V_inid = V_fecini2.substring(8, 10); var V_inim = parseFloat(V_fecini2.substring(5, 7)); var V_inia = V_fecini2.substring(0, 4);
                    var D_diaini1 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                    var V_find = V_fecfin2.substring(8, 10); var V_finm = parseFloat(V_fecfin2.substring(5, 7)); var V_fina = V_fecfin2.substring(0, 4);
                    var D_diafin1 = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                    if (V_inim < 10) { V_inim = "0" + V_inim; }
                    Dia_ini0 = V_inid + "/" + V_inim + "/" + V_inia;
                    if (V_finm < 10) { V_finm = "0" + V_finm; }
                    Dia_fin0 = V_find + "/" + V_finm + "/" + V_fina;
                    D_diainiG = D_diaini1; D_diafinG = D_diafin1;
                    D_inicioG = D_diainiG; D_finG = D_diafinG;
                    //console.log('Fechas_Proy change, D_inicioG:' + D_inicioG + ' D_finG:' + D_finG);
                    //console.log('Fechas_Proy change, Dia_ini0:'+Dia_ini0+' Dia_fin0:'+Dia_fin0);
                    if (V_display_mode_PLAN == "X") {
                        $('#TABLA_DATOS_PROYECTO_SEM_F2').empty();
                        dibujaproyectoFASES(V_proyecto_sel);
                    }
                    if (V_display_mode_RECURSOS == "X") {
                        $('#TABLA_DATOS_PROYECTO_SEM_R').empty();
                        dibujaproyectoRECURSOS();
                    }
                    if (V_display_mode_COSTES == "X") {
                        $('#TABLA_DATOS_PROYECTO_SEM_A').empty();
                        Dibuja_tabla_COSTES_REALES();
                    }
                });
            }
            function Pantalla_Report(V_vista, V_subtipo) {
                // CARGA CAMPOS SELECCION EN FUNCION TABLA Y SUBTIPO
                // OPCION V_table:TIME Subtipo:USER, FILTRA POR USUARIO, FECHA INICIO Y FECHA FIN Y MUESTRA HORAS IMP POR USUARIO PERFIL PROYECTO TAREA DIA Y HORAS
                // OPCION V_table:TIME Subtipo:COSTS, FILTRA POR PROVEEDOR, USUARIO, FECHA INICIO Y FECHA FIN Y MUESTRA HORAS IMP POR PROVEEDOR,USUARIO PERFIL PROYECTO TAREA DIA Y HORAS
                // OPCION V_table:TIME Subtipo:PROJECT, FILTRA POR PROYECTO, USUARIO, FECHA INICIO Y FECHA FIN Y MUESTRA HORAS IMP POR PROYECTO, USUARIO PERFIL  TAREA DIA Y H
                // OPCION V_table:PROJECT Subtipo:TASKS, FILTRA POR PROYECTO, FECHA INICIO Y FECHA FIN Y MUESTRA TAREAS POR PROYECTO, HORAS INI, HORA FIN
                $('.panel_datos').empty();
                var V_html = '<div id ="PARAMETROS"></div><div id ="EJECUTAR"></div><hr><div id = "RESULTADOS"></div>';
                $('.panel_datos').append(V_html);
                T_REPORT = Carga_datos_report(V_vista, V_subtipo);
                var V_htmlP = "<table id='TABLA_SEL'><tr>"; var V_htmlR = "";
                for (var i = 0; i < T_REPORT.length; i++) {
                    if (T_REPORT[i].TIPO == "PARAM") {
                        V_htmlP = V_htmlP + '<td>' + T_REPORT[i].NOMBRE + '<td></td>' + HTML_INPUT(T_REPORT[i].NOMBRE, T_REPORT[i].ID, T_REPORT[i].TYPE, "60") + "</td></tr><tr>";
                    }
                }
                //V_htmlP = V_htmlP + '<td><div class="multi-div class="Clicable"><div class="Ejecuta_rep">' + V_img_gener + '</div><div class="Bot_sel Ejecuta_rep Clave">Run</div></div></td>';
                V_htmlP = V_htmlP + '<td><div class="multi-div class="Clicable"><div class="Ejecuta_rep">' + V_img_gener + '</div><div class="Bot_sel Ejecuta_rep Clave">Run</div>';
                V_htmlP = V_htmlP + '<div style="width: 20px"></div><div class="Descarga">' + V_img_excel + '</div><div class="Bot_sel Descarga Clave">Download to excel</div></div></td>';

                V_htmlP = V_htmlP + "</tr></table>";
                //console.log('V_htmlP:' + V_htmlP);
                $('#PARAMETROS').append(V_htmlP);
                $('.Descarga').hide();
                $('.Bot_sel').css({ 'padding-left': '5px', 'padding-top': '2px' });
                $(".Bot_sel").hover(
                    function () { // CUANDO ESTA ENCIMA
                        $(this).css("text-decoration-line", "underline");
                    },
                    function () { // CUANDO LO DEJA
                        $(this).css("text-decoration-line", "initial");
                    });
                $('.Ejecuta_rep').on('click', function (e) {
                    $('.Descarga').show();
                    console.log('Lanza report');
                    var T_PARAM = [];
                    for (var i = 0; i < T_REPORT.length; i++) {
                        if (T_REPORT[i].TIPO == "PARAM") {
                            var V_campo = T_REPORT[i].CAMPO;
                            var V_id = "P_" + T_REPORT[i].ID; var V_tipo = T_REPORT[i].TYPE;
                            var V_valor = $('#' + V_id).val();
                            console.log("V_id:" + V_id + "V_valor:" + V_valor);
                            T_PARAM.push({ CAMPO: V_campo, valor: V_valor })
                        }
                    }
                    var V_html = Pantalla_report_detalle(V_vista, T_PARAM);
                    $('#RESULTADOS').empty();
                    $('#RESULTADOS').append(V_html);
                });
                // AÑADIR OPCION DESCARGAR A EXCEL
            }
            function Pantalla_report_detalle(V_vista, T_PARAM) {
                // LLAMADA METODO LEER_SCREEN CON TABLA_PROYECTOS PARA CARGAR ESTRUCTURA DE CAMPOS
                var V_htmlT = '<table id = "TABLA_TRABAJO" style=" border-collapse: collapse"><tr class="Cabecera1">';

                var D_CAMPOS = Cargar_campos_pantalla(V_vista);
                console.log("V_vista:" + V_vista);
                var D_DATOS = Cargar_datos_vista(V_vista, T_PARAM);
                var I_long = parseFloat(D_CAMPOS.length) * 5 + 5;
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    I_long = parseFloat(I_long) + parseFloat(D_CAMPOS[i]["LongT"]);
                }
                var V_ancho = $(window).width();
                var I_escala = parseFloat(V_ancho) / parseFloat(I_long);
                for (var i = 0; i < D_CAMPOS.length; i++) {
                    var V_width = parseFloat(D_CAMPOS[i]["LongT"]) * parseFloat(I_escala);
                    V_htmlT = V_htmlT + '<th class="Cabecera1" style="width:' + V_width + 'px">' + D_CAMPOS[i]["C_Text"] + '</th>';
                }
                V_htmlT = V_htmlT + '</tr>';
                for (var i = 0; i < D_DATOS.length; i++) {
                    V_htmlT = V_htmlT + '<tr class="Fila1" id="' + i + '">';
                    for (var j = 0; j < D_CAMPOS.length; j++) {
                        var V_Color = "";
                        var V_anchura = parseFloat(D_CAMPOS[j]["LongT"]) * parseFloat(I_escala);
                        var V_anchura0 = parseFloat(V_anchura) + 2;
                        var V_anchura1 = parseFloat(V_anchura) - 7;
                        var V_valor_campo = D_DATOS[i][D_CAMPOS[j]["C_ID"]];
                        //console.log('[D_CAMPOS[j]["C_ID"]:'+D_CAMPOS[j]["C_ID"]); 
                        switch (D_CAMPOS[j]["TipoT"]) {
                            case "Fechar":
                                var V_fecha = V_valor_campo;
                                var V_inid = V_fecha.substring(0, 2); var V_inim = V_fecha.substring(3, 5); var V_inia = V_fecha.substring(6, 10);
                                var V_fecha1 = V_inia + "-" + V_inim + "-" + V_inid;
                                V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div><input class ="fecha Fecha_sel" type="date" value="' + V_fecha1 + ' readonly"/></div></td>';
                                break;
                            default:
                                V_htmlT = V_htmlT + '<td class="Tabla_con_bordes CampoMod" Valor_i ="' + i + '" Valor_j ="' + j + '"><div style="width:' + V_anchura + 'px;">';
                                V_htmlT = V_htmlT + '<input class ="Fase Desc" type="text" value="' + V_valor_campo;
                                V_htmlT = V_htmlT + '" style="width:' + V_anchura1 + 'px; padding-left: 5px" readonly/></div></td>';
                                break;
                        }
                    }
                    V_htmlT = V_htmlT + '</tr>';
                }
                return V_htmlT;
            }
            function Carga_datos_report(V_vista, V_subtipo) {
                var T_REPORT_AUX = [];
                if (V_vista == 'V_TIMES1') {
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "1", NOMBRE: "User", CAMPO: "ID_Usuario", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "2", NOMBRE: "Project", CAMPO: "Proyecto", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "3", NOMBRE: "Start Date", CAMPO: "Fec_ini", TYPE: "Fecha", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "4", NOMBRE: "End Date", CAMPO: "Fec_Fin", TYPE: "Fecha", OBLIG: "" });
                }
                else if (V_vista == 'V_TIMES2') {
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "1", NOMBRE: "User", CAMPO: "ID_Usuario", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "2", NOMBRE: "Project", CAMPO: "Proyecto", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "3", NOMBRE: "Start Date", CAMPO: "Fec_ini", TYPE: "Fecha", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "4", NOMBRE: "End Date", CAMPO: "Fec_Fin", TYPE: "Fecha", OBLIG: "" });
                }
                else if (V_vista == 'V_COSTS') {
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "1", NOMBRE: "User", CAMPO: "ID_Usuario", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "2", NOMBRE: "Project", CAMPO: "Proyecto", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "3", NOMBRE: "Provider", CAMPO: "Proveedor", TYPE: "TEXT", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "4", NOMBRE: "Start Date", CAMPO: "Fec_ini", TYPE: "Fecha", OBLIG: "" });
                    T_REPORT_AUX.push({ TIPO: "PARAM", ID: "5", NOMBRE: "End Date", CAMPO: "Fec_Fin", TYPE: "Fecha", OBLIG: "" });
                }
                return T_REPORT_AUX;
            }
            function Cargar_datos_vista(V_vista, T_PARAM) {
                var D_DATOS0 = [];
                if (V_vista == 'V_TIMES1') {
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "1. Preparacion", ID_Usuario: "pedro.picapiedra", Fecha: "08/12/2020", HORAS: "8", Estado: "X" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "2. Diseño", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", HORAS: "7", Estado: "X" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "2.1 Diseño interfaces", ID_Usuario: "pedro.picapiedra", Fecha: "06/12/2020", HORAS: "6", Estado: "X" });
                    D_DATOS0.push({ Proyecto: "Proyecto2", Tarea: "1. Preparacion", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", HORAS: "5", Estado: "" });
                }
                if (V_vista == 'V_TIMES2') {
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "1. Preparacion", ID_Usuario: "pedro.picapiedra", Fecha: "08/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "2. Diseño", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Tarea: "2.1 Diseño interfaces", ID_Usuario: "pedro.picapiedra", Fecha: "06/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto2", Tarea: "1. Preparacion", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", Cost: "80,1", Moneda: "EUR" });
                }
                if (V_vista == 'V_COSTS') {
                    D_DATOS0.push({ Proyecto: "Proyecto1", Proveedor: "ACME S.A.", ID_Usuario: "pedro.picapiedra", Fecha: "08/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Proveedor: "ACME S.A.", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto1", Proveedor: "ACME S.A.", ID_Usuario: "pedro.picapiedra", Fecha: "06/12/2020", Cost: "80,1", Moneda: "EUR" });
                    D_DATOS0.push({ Proyecto: "Proyecto2", Proveedor: "ACME S.A.", ID_Usuario: "pedro.picapiedra", Fecha: "07/12/2020", Cost: "80,1", Moneda: "EUR" });
                }
                return D_DATOS0;
            }
            function HTML_INPUT(V_name, V_id, V_tipo, V_anchura) {
                var V_html_aux = "";
                switch (V_tipo) {
                    case "Fecha":
                        V_html_aux = '<td id ="' + V_id + '" class="Tabla_con_bordes CampoMod"><div><input id ="P_' + V_id + '" class ="fecha Fecha_sel" type="date"/></div></td>';
                        break;
                    default:   // TEXT
                        V_html_aux = '<td id ="' + V_id + '" class="Tabla_con_bordes CampoMod"><div style="width:' + V_anchura + 'px;">';
                        var V_anchura1 = parseFloat(V_anchura) - 1;
                        V_html_aux = V_html_aux + '<input id ="P_' + V_id + '" class ="Fase Desc" type="text" value="" style="width:' + V_anchura + 'px; padding-left: 5px"/></div></td>';
                        break;
                }
                return V_html_aux;
            }
            function dibujaproyectoFASES(V_proj) {
                console.log('Funcion dibujaproyectoFASES:' + V_proj);
                var Dia_ini00 = new Date(Dia_ini0.substring(6, 10), parseFloat(Dia_ini0.substring(3, 5)) - 1, Dia_ini0.substring(0, 2));
                D_inicioG = new Date(Dia_ini00);
                var Dia_fin00 = new Date(Dia_fin0.substring(6, 10), parseFloat(Dia_fin0.substring(3, 5)) - 1, Dia_fin0.substring(0, 2));
                D_finG = new Date(Dia_fin00);
                //console.log('DibujaproyectoFASES, Dia_ini00:' + Dia_ini00 + ' Dia_fin00:' + Dia_fin00);
                Dibuja_tabla_calendario(Dia_ini00, Dia_fin00, "F");
                Dibuja_tabla_fases();
            }
            function dibujaproyectoRECURSOS(V_proj) {
                console.log('Funcion dibujaproyectoRECURSOS:' + V_proj);
                var Dia_ini00 = new Date(Dia_ini0.substring(6, 10), parseFloat(Dia_ini0.substring(3, 5)) - 1, Dia_ini0.substring(0, 2));
                D_inicioG = new Date(Dia_ini00);
                var Dia_fin00 = new Date(Dia_fin0.substring(6, 10), parseFloat(Dia_fin0.substring(3, 5)) - 1, Dia_fin0.substring(0, 2));
                D_finG = new Date(Dia_fin00);
                Dibuja_tabla_calendario(Dia_ini00, Dia_fin00, "R");
                Dibuja_tabla_recursos();
            }
            function dibujaproyectoCOSTESREALES(V_proj) {
                console.log('dibujaproyectoCOSTESREALES inicio');
                var Dia_ini00 = new Date(Dia_ini0.substring(6, 10), parseFloat(Dia_ini0.substring(3, 5)) - 1, Dia_ini0.substring(0, 2));
                D_inicioG = new Date(Dia_ini00);
                var Dia_fin00 = new Date(Dia_fin0.substring(6, 10), parseFloat(Dia_fin0.substring(3, 5)) - 1, Dia_fin0.substring(0, 2));
                D_finG = new Date(Dia_fin00);
                Dibuja_tabla_calendario(Dia_ini00, Dia_fin00, "A");
                Dibuja_tabla_COSTES_REALES();
            }
            function Dibuja_tabla_calendario(Dia_inicioTC, Dia_finTC, Formato) {
                // PINTA LAS CABECERAS CON MESES, SEMANAS Y TIYULOS DE AS COLUMNAS EN FUNCION DE LA OPCION SELECCIONADA
                //console.log('Dia_inicio:'+Dia_inicio + 'Dia_fin:'+Dia_fin);
                var dia_aux = new Date(Dia_inicioTC);
                if (dia_aux.getDay() != "1") {
                    if (dia_aux.getDay() == "0" || dia_aux.getDay() == "1") // SI DOMINGO SUMA UNO
                    {
                        dia_aux = new Date(dia_aux.setDate(dia_aux.getDate() + dia_aux.getDay() + 1));
                    }
                    else {
                        dia_aux = new Date(dia_aux.setDate(dia_aux.getDate() - dia_aux.getDay() + 1));
                    }
                }
                var D_primer_lunes = new Date(dia_aux);
                //console.log('dia_aux:' + dia_aux + 'dia_aux.getDate():' + dia_aux.getDate());
                // SE BUSCA COMO FECHA INICIO PARA CABECERA EL LUNES DE LA SEMANA, INICIO FILA PINTAR CABECERA MESES
                var V_mes = "";
                var V_anyo = "";
                const monthNames = ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"];
                var V_html = ""; var V_class = ""; V_class = "cab_border0"; var V_html0 = "";
                if (Formato == "F") // GN 18102019 INICIO
                {
                    $(".Titulo_tabla").html("Planificación FASES");
                    V_html = '<div class="Panel_tabla_fijo panel_datos_css"><table id="TABLA_DATOS_PROYECTO_SEM_F1" class="Tabla_sin_espacios"></table></div>';
                    V_html = V_html + '<div class="Panel_tabla_movil panel_datos_css panel_scroll_x"><table id="TABLA_DATOS_PROYECTO_SEM_F2" class="Tabla_sin_espacios"><tbody></tbody></table></div>';
                    $(".Panel_tabla").html(V_html);
                    // UBICA Y DA TAMAÑO A LOS PANELES
                    var V_ancho_panel_lateral = 160; var V_ancho_PL = V_ancho_panel_lateral + 'px';
                    var V_alto0 = $(window).height() - 210; var V_alto = V_alto0 + 'px';
                    var V_ancho = $(window).width() - 400;
                    V_ancho = V_ancho + 'px';
                    var V_ancho3 = "220px";
                    $('.Panel_tabla_fijo').css('width', V_ancho3); $('.Panel_tabla_movil').css('width', V_ancho);
                    $('.Panel_tabla_fijo').css('height', V_alto); $('.Panel_tabla_movil').css('height', V_alto);
                    var V_ancho2 = 1; V_ancho_PL2 = V_ancho2 + 'px';
                    $('.Panel_tabla_fijo').css('margin-left', V_ancho_PL2);
                    //var V_ancho2 = 150; V_ancho_PL2 = V_ancho2 + 'px';
                    $('.Panel_tabla_movil').css('margin-left', V_ancho3);
                }
                else if (Formato == "R") {
                    $(".Titulo_tabla").html("Planificación RECURSOS");
                    V_html = '<div class="Panel_tabla"><table id="TABLA_DATOS_PROYECTO_SEM_R" class="Tabla_sin_espacios"><tbody></tbody></table></div>';
                    $(".Panel_tabla").html(V_html);
                }
                else if (Formato == "A") {
                    $(".Titulo_tabla").html("Costes Reales Imputados");
                    V_html = '<div class="Panel_tabla"><table id="TABLA_DATOS_PROYECTO_SEM_A" class="Tabla_sin_espacios"><tbody></tbody></table></div>';
                    $(".Panel_tabla").html(V_html);
                }
                if (Formato == "F") { // SI FASES
                    V_html = '<tr class="cab_meses" data-level="header"><td style="background-color:white" colspan= "6"></td>';
                    V_html0 = '<tr class="cab_meses" data-level="header"><td style="background-color:white" class="cab_mes21 cab_border0"><div></div></td></tr>';
                }
                else {
                    V_html = '<tr class="cab_meses" data-level="header"><td style="background-color:white" colspan= "6"></td>';
                }
                // FILA CABECERA CON DETALLE DE MESES
                V_aux = ""; V_cont_semanas = 0;
                V_cont1 = 0; V_cont_semanas_tonow = 0;
                V_mes_ant = dia_aux.getMonth() - 1;
                var V_anyo_ant = dia_aux.getFullYear();
                var V_today = new Date();
                while (V_aux != "X" && V_cont_semanas < 200) {
                    V_mes = dia_aux.getMonth();
                    V_anyo = dia_aux.getFullYear();
                    //console.log('MES ACT:', V_mes);
                    V_mesT = monthNames[parseFloat(V_mes_ant)];
                    if (V_mes != V_mes_ant && V_cont_semanas > 0) {
                        //console.log('CAMBIO MES:', V_mesT, " V_cont_semanas:", V_cont_semanas);
                        var V_text = V_mesT + '/' + V_anyo_ant;
                        //console.log('dia_aux:', dia_aux, ' V_anyo_ant:', V_anyo);
                        var V_cont2 = V_cont1;
                        if (Formato == "F") { V_cont2 = parseFloat(V_cont1) * 5; } // SI SE PINTA LA TABLA DE FASES ACTIVA EL COLSPAN
                        if (V_cont1 > 1) {
                            V_html = V_html + '<td class = "cab_mes21 ' + V_class + '" title = "' + V_text + '" colspan = ' + V_cont2 + ' ">' + V_text + '</td>';
                        }
                        else {
                            V_html = V_html + '<td class = "cab_mes21 ' + V_class + '" title = "' + V_text + '" colspan = ' + V_cont2 + ' ">' + V_text + '</td>';
                        }
                        V_cont1 = 0;
                    }
                    V_anyo_ant = dia_aux.getFullYear();
                    V_cont_semanas = V_cont_semanas + 1;
                    if (dia_aux <= V_today) {
                        V_cont_semanas_tonow = V_cont_semanas_tonow + 1;
                    }
                    V_cont1 = V_cont1 + 1;
                    dia_aux.setDate(dia_aux.getDate() + 7); // VA SUMANDO 7 DIAS AL DIA ACTUAL
                    V_mes_ant = V_mes;
                    if (dia_aux >= Dia_finTC) {
                        V_aux = "X";
                        var V_cont2 = V_cont1;
                        if (Formato == "F") { V_cont2 = parseFloat(V_cont1) * 5; }
                        if (V_cont1 > 0) {
                            V_mesT = monthNames[parseFloat(V_mes)];
                            V_mes = dia_aux.getMonth();
                            V_anyo = dia_aux.getFullYear();
                            var V_text = V_mesT + '/' + V_anyo;
                            //console.log('dia_aux2:', dia_aux, ' V_anyo2:', V_anyo);
                            if (V_cont1 > 1) {
                                V_html = V_html + '<td class = "cab_mes21 ' + V_class + '" title = "' + V_text + '" colspan = ' + V_cont2 + ' ">' + V_text + '</td>';
                            }
                            else {
                                V_html = V_html + '<td class = "cab_mes21 ' + V_class + '" title = "' + V_text + '" colspan = ' + V_cont2 + ' ">' + V_text + '</td>';
                            }
                        }
                    }
                    //break;
                }
                // V_html = V_html + '<td>Horas Total</td><td>Horas Budget</td><td>Coste</td><td>Total Coste</td><td>Total Budget</td><td>Desviacion</td>';
                V_html = V_html + '</tr>';
                //$('#TABLA_DATOS_PROYECTO_SEM').append(V_html);
                // AÑADE FILA CABECERA SEMANAS
                T_ACUM = []; // INICIALIZA TABLA ACUMULADO RECURSOS POR SEMANA
                var V_dia_aux2 = new Date(D_primer_lunes);
                var V_html1 = '<tr class="T_header_table" data-level="header">';
                if (Formato == "F") {
                    V_html0 = V_html0 + '<td class="cab_meses"><div style="width: 10px;">Id</div></td>';
                    V_html0 = V_html0 + '<td class="cab_meses ' + V_class + '"><div style="width: 98px;">Fase</div></td>';
                    V_html0 = V_html0 + '<td class="cab_meses"></td><td class="cab_meses"></td>';
                    //V_html0 = V_html0 + V_html1; // PRUEBAS
                    V_html = V_html + V_html1 + '<td class="fecha cab_meses ' + V_class + '"><div style="width: 100px;">Fecha inicio</div></td>';
                    V_html = V_html + '<td class="fecha cab_meses ' + V_class + '"><div style="width: 100px;">Fecha fin</div></td>';
                    V_html = V_html + '<td class="cab_meses ' + V_class + '"><div style="width: 90px;">Estado</div></td>';
                    V_html = V_html + '<td class="cab_meses ' + V_class + '"><div style="width: 30px;" title = "Duracion">Dur.</div></td>';
                    V_html = V_html + '<td class="cab_meses ' + V_class + '"><div style="width: 30px;" title = "Precedentes">Prec.</div></td>';
                    V_html = V_html + '<td class="cab_meses ' + V_class + '"><div style="width: 65px;" title = "Recursos">Rec.</div></td>';
                }
                else if (Formato == "R") {
                    V_html = V_html + '<td class="cab_meses cab_border0"><div style="width: 98px;">Perfil</div></td>';
                    V_html = V_html + '<td class="cab_meses cab_border0"><div style="width: 98px;">Recurso</div></td><td class="cab_meses cab_border0">';
                    V_html = V_html + '<div style="width: 50px;">Días</div></td><td class="cab_meses"><div style="width: 80px;">Coste Día</div></td>';
                    V_html = V_html + '<td class="cab_meses"><div style="width: 80px;">Coste Total</div></td><td></td>';
                }
                else if (Formato == "A") {
                    V_html = V_html + '<td class="cab_meses cab_border0"><div style="width: 98px;">Perfil</div></td>';
                    V_html = V_html + '<td class="cab_meses cab_border0"><div style="width: 98px;">Recurso</div></td><td class="cab_meses cab_border0">';
                    V_html = V_html + '<div style="width: 50px;">Días</div></td><td class="cab_meses cab_border0"><div style="width: 80px;">Coste Día</div></td>';
                    V_html = V_html + '<td class="cab_meses cab_border0"><div style="width: 80px;">Coste Total</div></td><td></td>';
                }
                var I_cont = 0;
                V_anyo_ant = V_dia_aux2.getFullYear();
                var V_inid = Dia_ini0.substring(0, 2); var V_inim = parseFloat(Dia_ini0.substring(3, 5)); var V_inia = Dia_ini0.substring(6, 10);
                var Dia_ini00 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                Sem_ini = Calcula_semana(Dia_ini00); // REINICIA EL VALOR DE LA SEMANA INICIAL
                for (var i = 0; i < V_cont_semanas; i++) {
                    var V_anyo = V_dia_aux2.getFullYear();
                    if (V_anyo != V_anyo_ant) { Sem_ini = 1; I_cont = 0; }
                    var v_mes = V_dia_aux2.getMonth() + 1;
                    var V_dia_auxT = V_dia_aux2.getDate() + "/" + v_mes + "/" + V_dia_aux2.getFullYear();
                    //console.log('V_dia_aux2:' + V_dia_aux2+ 'Anyo semana inicial:' + Anyo_ini + 'Anyo semana calculo:' + V_dia_aux2.getFullYear());
                    var I_aux = parseFloat(Sem_ini) + I_cont; if (Formato == "F") { V_cont2 = parseFloat(V_cont1) * 5; }
                    var V_cont2 = 1;
                    if (Formato == "F") { V_cont2 = 5; }
                    var V_color = "blue";
                    V_html = V_html + '<td class = "cab_semanas ' + V_class + ' " style="color:' + V_color + '" title = "' + V_dia_auxT + '" colspan = ' + V_cont2 + '><div style="width: 46px;"> WEEK ' + I_aux + '</div></td>';
                    var V_sem_aux = I_aux + "." + V_dia_aux2.getFullYear();
                    T_ACUM.push({
                        //SEMANA: V_sem_aux, 
                        JORNADAS: "0"
                    }); // INICIALIZA ENTRADA EN LA TABLA DE ACUMULADOS
                    V_dia_aux2.setDate(V_dia_aux2.getDate() + 7);
                    V_anyo_ant = V_anyo;
                    I_cont = I_cont + 1;
                }
                V_html = V_html + '</tr>';
                if (Formato == "F") {
                    $('#TABLA_DATOS_PROYECTO_SEM_F1').append(V_html0);
                    $('#TABLA_DATOS_PROYECTO_SEM_F2').append(V_html);
                }
                else if (Formato == "R") {
                    $('#TABLA_DATOS_PROYECTO_SEM_R').append(V_html);
                }
                else if (Formato == "A") {
                    $('#TABLA_DATOS_PROYECTO_SEM_A').append(V_html);
                }
            }
            function Dibuja_tabla_fases() {
                // PINTA LAS COLUMNAS DE FASES
                var V_html = ''; var V_html0 = ''; var V_id0 = "";
                //console.log('D_inicioG!!!!:'+ D_inicioG); console.log('D_finG!!!!:'+ D_finG); 
                var V_dia = D_inicioG.getDate(); if (V_dia < 10) { V_dia = "0" + V_dia; }
                var V_mes = (D_inicioG.getMonth() + 1); if (V_mes < 10) { V_mes = "0" + V_mes; }
                var V_fecha1 = D_inicioG.getFullYear() + "-" + V_mes + "-" + V_dia;
                var V_fecha2 = V_dia + "/" + V_mes + "/" + D_inicioG.getFullYear();
                var V_dia = D_finG.getDate(); if (V_dia < 10) { V_dia = "0" + V_dia; }
                var V_mes = (D_finG.getMonth() + 1); if (V_mes < 10) { V_mes = "0" + V_mes; }
                var V_fecha3 = D_finG.getFullYear() + "-" + V_mes + "-" + V_dia;
                var V_fecha4 = V_dia + "/" + V_mes + "/" + D_finG.getFullYear();
                var V_index = 0;
                var dia_aux = new Date(Dia_ini0.substring(6, 10), parseFloat(Dia_ini0.substring(3, 5)) - 1, Dia_ini0.substring(0, 2));
                if (dia_aux.getDay() != "1") {
                    if (dia_aux.getDay() == "0") // SI DOMINGO SUMA UNO
                    {
                        dia_aux = new Date(dia_aux.setDate(dia_aux.getDate() + dia_aux.getDay() + 1));
                    }
                    else {
                        dia_aux = new Date(dia_aux.setDate(dia_aux.getDate() - dia_aux.getDay() + 1));
                    }
                }
                var D_primer_lunes = new Date(dia_aux);
                if (T_FASES.length > 0) {
                    for (var i = 0; i < T_FASES.length; i++) {
                        if (T_FASES[i].DESP != "H")  // SI NO ESTA MARCADA COM QUE SE DEBE OCULTAR
                        {
                            V_aux = "";
                            V_html = V_html + '<tr id ="' + T_FASES[i].ID + '" style="height: 30px; max-height: 30px; overflow-y: scroll;">';
                            V_html0 = V_html0 + '<tr id ="' + T_FASES[i].ID + '" style="height: 30px"><td class="Tabla_con_bordes Identificador" style="height: 26px">' + T_FASES[i].ID + '</td>';
                            var I_cont = parseFloat(T_FASES[i].NIVEL); var I_nivel_sig = 0; var V_aux = ""; var V_grupo = "";
                            //console.log('T_FASES.length!!!!:'+ T_FASES.length+" i:"+i);
                            if (i != T_FASES.length - 1) { // SI NO ES LA ULTIMA FILA
                                I_nivel_sig = T_FASES[i + 1].NIVEL;
                                //console.log('I_nivel_sig!!!!:'+ I_nivel_sig+" T_FASES[i].NIVEL:"+T_FASES[i].NIVEL+" I_cont:"+I_cont);
                                if (I_nivel_sig > T_FASES[i].NIVEL) {
                                    V_grupo = "X";
                                    if (T_FASES[i].DESP != "N") { T_FASES[i].DESP = "S" } // SI EL NIVEL SIGUIENTE ES UN NIVEL INFERIOR AL ACTUAL SE ASUME ES AGRUPADOR Y POR DEFECTO SE DEPLEGA
                                }
                            }
                            for (var j = 0; j < I_cont; j++) {
                                //V_aux = V_aux + ""; // Indenta el texto hacia dentro
                                V_aux = V_aux + '<div style="width: 10px"></div>';
                            }
                            if (T_FASES[i].DESP == "N") // SI HAY FASES INFERIORES PERO NO SE DEBEN DESPLEGAR
                            {
                                V_aux = V_aux + '<div class= "Subitems" style="top: 3px;">' + V_img_cerrada + '</div>';
                            }
                            if (T_FASES[i].DESP == "S") // SI HAY FASES INFERIORES PERO SI SE DEBEN DESPLEGAR
                            {
                                V_aux = V_aux + '<div class= "Subitems" style="top: 3px;">' + V_img_abierta + '</div>';
                            }
                            V_html0 = V_html0 + '<td class="Tabla_con_bordes"><div class="multi-div">' + V_aux + '<div>';
                            V_html0 = V_html0 + '<input class ="Fase Desc" type="text" value="' + T_FASES[i].NOMBRE + '" style="width: 150px; padding-left: 5px"/></div></div></td>';
                            V_html0 = V_html0 + '<td class="Tabla_con_bordes Crear_tarea" id = "Add' + V_index + '"><div>' + V_img_addblue + '</div></td>';
                            V_html0 = V_html0 + '<td class="Tabla_con_bordes" id = "D' + T_FASES[i].ID + '"><div class ="Borrar_tarea">' + V_img_dele + '</div></td>';
                            var V_auxf = T_FASES[i].FECINI;
                            V_index = i + 1;
                            var V_inid = V_auxf.substring(0, 2); var V_inim = V_auxf.substring(3, 5); var V_inia = V_auxf.substring(6, 10);
                            var D_FECINI0 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                            // SI LA FECHA INICIO DE LA FASE ES MENOR QUE LA DEL PROYECTO SE INDICA LA DEL PROYECTO
                            if (D_FECINI0 < D_inicioG) {
                                D_FECINI0 = D_inicioG;
                                T_FASES[i].FECINI = V_fecha2;
                                var V_inid = D_inicioG.getDate(); if (V_inid < 10) { V_inid = "0" + V_inid; }
                                var V_inim = (D_inicioG.getMonth() + 1); if (V_inim < 10) { V_inim = "0" + V_inim; }
                                var V_inia = D_inicioG.getFullYear();
                            }
                            var dia_ini1 = V_inia + "-" + V_inim + "-" + V_inid;
                            V_html = V_html + '<td class="Tabla_con_bordes"><div><input id=FecIni' + V_index + ' class ="fecha Fase Fec_ini Fecha_sel" type="date" value="' + dia_ini1 + '"/></div></td>';
                            var V_auxf = T_FASES[i].FECFIN;
                            var V_find = V_auxf.substring(0, 2); var V_finm = V_auxf.substring(3, 5); var V_fina = V_auxf.substring(6, 10);
                            var D_FECFIN0 = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                            // SI LA FECHA FIN DE LA FASE ES MENOR QUE LA DEL PROYECTO SE INDICA LA DEL PROYECTO
                            if (D_FECFIN0 > D_finG || D_FECFIN0 < D_inicioG) {
                                D_FECFIN0 = D_finG;
                                T_FASES[i].FECFIN = V_fecha4;
                                var V_find = D_finG.getDate(); if (V_find < 10) { V_find = "0" + V_find; }
                                var V_finm = (D_finG.getMonth() + 1); if (V_finm < 10) { V_finm = "0" + V_finm; }
                                var V_fina = D_finG.getFullYear();
                            }
                            var dia_fin1 = V_fina + "-" + V_finm + "-" + V_find;
                            V_ult_fecha = dia_fin1;
                            V_html = V_html + '<td class="Tabla_con_bordes"><div><input id=FecFin' + V_index + ' class ="fecha Fase Fec_fin Fecha_sel" type="date" value="' + dia_fin1 + '"/></div></td>';
                            // STATUS TIENE COLORES, SE DEBEN BUSCAR LOS COLORES EN T_VALORES STATUS2
                            V_html = V_html + '<td id = "Sel1_' + V_index + '" tabla = "STATUS" class="Tabla_con_bordes sel1" style="background-color:';
                            V_html = V_html + ColorESTADO(T_FASES[i].STATUS) + '"><div>' + T_FASES[i].STATUS + '</div></td>';
                            var Dias_fase = Diaslabentrefechas(D_FECINI0, D_FECFIN0);
                            V_html = V_html + '<td class="Tabla_con_bordes"><div id=duracion' + V_index + ' class=" Fase duracion Texto_tabla">' + Dias_fase + '</div></td>';
                            V_html = V_html + '<td class="Tabla_con_bordes"><div><input class ="Fase Desc precedentes" type="text" value="' + T_FASES[i].PRECEDENTES + '" style="width: 30px;"/></div></td>';
                            // INCLUYE LOS RECURSOS ASIGNADOS EN FORMA DE BOLETES 
                            V_html = V_html + '<td id = "SelR_' + V_index + '" tabla = "RECURSOS" class="Tabla_con_bordes selR">';
                            var resultArray = $.grep(T_FASES_REC, function (element) {
                                return element.ID == T_FASES[i].ID;
                            });
                            if (resultArray.length != "0") {
                                V_html = V_html + '<div class="linea">';
                                for (var k = 0; k < resultArray.length; k++) {
                                    if (k < 3) {
                                        var V_otros = "";
                                        if (k == 2 && resultArray.length > 3) { V_otros = resultArray.length - 2; }
                                        var V_recurso = resultArray[k].REC;
                                        //console.log('V_recurso:' + V_recurso);
                                        var V_ini = ""; var V_color = "";
                                        var resultArray2 = $.grep(T_USUARIOS_ACT, function (element2) {
                                            return element2.ID == V_recurso;
                                        });
                                        if (resultArray2.length != "0") {
                                            V_ini = resultArray2[0].INI;
                                            V_color = resultArray2[0].COLOR;
                                        }
                                        // PINTA LA BOLETES
                                        //console.log('V_ini:' + V_ini);
                                        if (V_otros == "") {
                                            V_html = V_html + Circulo(V_color, V_ini, "1");
                                        }
                                        else {
                                            V_html = V_html + Circulo("black", '+' + V_otros, "1");
                                        }
                                    }
                                }
                                V_html = V_html + '</div>';
                            }
                            V_html = V_html + '</div></td>';
                            var V_dia_aux2 = new Date(D_primer_lunes);
                            var V_color = T_COLOR[i];
                            for (var j = 0; j < V_cont_semanas; j++) {
                                for (var l = 0; l < 5; l++) {
                                    var V_dia = V_dia_aux2.getDate(); if (V_dia < 10) { V_dia = "0" + V_dia; }
                                    var V_mes = (V_dia_aux2.getMonth() + 1); if (V_mes < 10) { V_mes = "0" + V_mes; }
                                    var V_fecha_t = V_dia + "/" + V_mes + "/" + V_dia_aux2.getFullYear();
                                    var V_id = i + "." + V_fecha_t;
                                    var V_gap = "";
                                    //console.log('FASES FECHA V_dia_aux2:'+V_dia_aux2+'D_FECINI0:'+D_FECINI0+'D_FECFIN0:'+D_FECFIN0);
                                    var V_idaux = parseFloat(i);
                                    if (V_dia_aux2 >= D_FECINI0 && V_dia_aux2 <= D_FECFIN0) {
                                        // SI ESTA ENTRE LAS FECHAS INICIO Y FIN DE LA FASE, BUSCA SI HAY FECHAS DETALLE SINO TODO ACTIVO
                                        var filterVal = V_idaux;
                                        var resultArray = $.grep(T_FASES_DET, function (element) {
                                            return element.ID == filterVal;
                                        });
                                        //console.log('resultArray.length:' + resultArray.length + ' V_idaux:' + V_idaux + 'V_color:' + V_color + V_dia_aux2);
                                        if (resultArray.length == "0") {
                                            V_html = V_html + '<td id = ' + V_id + ' class="Faseh Fase0"><div class = "Fase_sel" style="background-color:' + V_color + '" title = "' + V_fecha_t + '"></div></td>';
                                        }
                                        else {
                                            var V_html00 = '<td id = ' + V_id + ' class="Faseh"><div style="background-color:white" title = "' + V_fecha_t + '"></div></td>';
                                            for (var k = 0; k < resultArray.length; k++) {
                                                var V_fechaI = resultArray[k].FECINI;
                                                var V_fechaF = resultArray[k].FECFIN;
                                                //console.log('ANALISIS FECHAS DETALLE 0, V_idaux:' + V_idaux);
                                                var V_inid = V_fechaI.substring(0, 2); var V_inim = V_fechaI.substring(3, 5); var V_inia = V_fechaI.substring(6, 10);
                                                var D_fechaI = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                                                var V_find = V_fechaF.substring(0, 2); var V_finm = V_fechaF.substring(3, 5); var V_fina = V_fechaF.substring(6, 10);
                                                var D_fechaF = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                                                //console.log('ANALISIS FECHAS DETALLE, D_fechaI:' + D_fechaI + 'D_fechaF:' + D_fechaF);
                                                if (V_dia_aux2 >= D_fechaI && V_dia_aux2 <= D_fechaF) {
                                                    //console.log('OK FASE ENCONTRADA!!!!');
                                                    V_html00 = '<td id = ' + V_id + ' class="Faseh Fase0"><div class = "Fase_sel" style="background-color:' + V_color + '" title = "' + V_fecha_t + '"></div></td>';
                                                    break;
                                                }
                                            }
                                            V_html = V_html + V_html00;
                                        }
                                    }
                                    else {
                                        V_html = V_html + '<td id = ' + V_id + ' class="Faseh"><div style="background-color:white" title = "' + V_fecha_t + '"></div></td>';
                                    }
                                    V_dia_aux2.setDate(V_dia_aux2.getDate() + 1);
                                }
                                V_dia_aux2.setDate(V_dia_aux2.getDate() + 2);
                            }
                            V_html = V_html + '</tr>';
                            V_html0 = V_html0 + '</tr>';
                        }
                    }
                }
                //V_html = V_html + '<tr><td class = "INSERTAR_FILA_F"><div class = "Insertar_filaF"><input type="image" title = "Insertar fila" src="../Images/Add_item.png" alt="Next week" width="15" height="15"></div></td></tr>';
                $('#TABLA_DATOS_PROYECTO_SEM_F2').append(V_html);
                //console.log('V_html0:' + V_html0);
                $('#TABLA_DATOS_PROYECTO_SEM_F1').append(V_html0);
                // JUSTAR ANCHURA TABLAS EN FUNCION DE DATOS
                var V_anchura_tabla = $('#TABLA_DATOS_PROYECTO_SEM_F1').width();
                console.log('Anchura tabla:' + V_anchura_tabla);
                var I_diferencia = parseFloat(V_anchura_tabla) - 217;
                var V_ancho3 = 220 + I_diferencia; V_ancho3 = V_ancho3 + 'px';
                $('.Panel_tabla_fijo').css('width', V_ancho3);
                console.log('I_diferencia:' + I_diferencia + 'V_ancho3:' + V_ancho3);
                //var V_ancho = $(window).width() - 315;
                var V_ancho = $(window).width() - 400;
                V_ancho = V_ancho - I_diferencia; V_ancho = V_ancho + 'px';
                $('.Panel_tabla_movil').css('width', V_ancho);
                $('.Panel_tabla_movil').css('margin-left', V_ancho3);
                $(".Faseh").hover(
                    function () { // CUANDO ESTA ENCIMA
                        $(this).css("background", "#FD6600");
                        if (V_raton_pres == "2" || V_raton_pres == "4") {
                            $(this).html("");
                            //console.log('MOUSE HOVER: '+V_raton_pres);
                            Seleccionar_celda($(this));
                            V_raton_pres = "3";
                        }
                        if (V_raton_pres == "1") {
                            V_raton_pres = "2"; // EL PRIMER CLICK LO IGNORA PARA NO DUPLICAR EL MOUSE DOWN
                            //console.log('MOUSE HOVER 1');
                        }
                    },
                    function () { // CUANDO LO DEJA
                        $(this).css("background", "white");
                        if (V_raton_pres == "2" || V_raton_pres == "3") { V_raton_pres = "4"; }
                        //console.log('MOUSE HOVER SALE:'+V_raton_pres);
                    });
                $(".Faseh").mousedown(function (e) {
                    // LO PRIMERO ES DESACTIVAR TODOS LOS CONTROLES SELECCIONADOS
                    //for (var i = 0; i < T_FASES.length; i++) { $("#Fase"+i).removeClass("img_i img_d img_c"); } 
                    console.log('MOUSE DOWN!!');
                    //$(this).html("jarrr");
                    //var myClass = $(this).attr("class");
                    Seleccionar_celda($(this));
                    if ($(this).hasClass("Fase0")) { V_raton_pres = "2"; }
                    else { V_raton_pres = "1"; } // SI EN BLANCO PINTA ESTA Y DEJALO ACTIVADO PARA PINTAR LA SIGUIENTE
                });
                $(document).mouseup(function () {
                    console.log('MOUSE UP!!');
                    V_raton_pres = "0";
                });
                Control_cambio_fase();
                $('.Subitems').on('click', function (e) {
                    var $rowR = $(this).closest('tr');
                    var V_tarea_id = $rowR.find('td:eq(0)').text();
                    console.log('CAMBIO SUBITEM:' + V_tarea_id);
                    var V_ant = "1"; var V_nivel0 = 0; var V_hide = "N";
                    for (var i = 0; i < T_FASES.length; i++) {
                        if (T_FASES[i].ID == V_tarea_id) {
                            V_ant = "0"; V_nivel0 = T_FASES[i].NIVEL;
                            if (T_FASES[i].DESP == "N") {
                                T_FASES[i].DESP = "S";
                            }
                            else {
                                T_FASES[i].DESP = "N";
                            }
                        }
                        if (T_FASES[i].NIVEL < V_nivel0 && V_ant == "0") {
                            V_ant = "2"; // FINALIZA LOS REGISTROS A ESCONDER O MOSTRAR
                        }
                        if (T_FASES[i].NIVEL > V_nivel0 && V_ant == "0") {
                            if (T_FASES[i].DESP == "H") {
                                T_FASES[i].DESP = "";
                                console.log('CAMBIO SUBITEM A TIPO DESP ESPACIO');
                            }
                            else {
                                T_FASES[i].DESP = "H";
                                console.log('CAMBIO SUBITEM A TIPO DESP H');
                            }
                        }
                    }
                    $('#TABLA_DATOS_PROYECTO_SEM_F2').empty();
                    dibujaproyectoFASES(V_proyecto_sel);
                });
                // GESTION DE CAMPOS CON OPCIONES: GENERICO Y RECURSOS --- INICIO ---
                $('.sel1').on('click', function (e) {
                    console.log('sel1   !!');
                    // VENTANA DE VALORES POSIBLES PARA COLUMNAS
                    var V_id_sel = $(this).attr("id");
                    var V_tabla = $(this).attr("tabla");
                    //console.log('Campo de seleccion activado, V_id_sel:' + V_id_sel + ' tabla:' + V_tabla);
                    var $row0 = $(this).closest('tr');
                    var V_tarea_id = $row0.find('td:eq(0)').text();
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left + 160;
                    var V_top = $(this).offset().top; V_top = parseFloat(V_top) - 2;
                    // ACCEDE A LOS VALORES POSIBLES
                    var returnedData = $.grep(T_VALORES, function (element) {
                        return (element.TABLA == V_tabla);
                    });
                    var V_html = "";
                    for (var i = 0; i < returnedData.length; i++) {
                        V_html = V_html + "<tr id='" + returnedData[i]["ID"] + "'><td class ='Seleccion'><div style='background:" + returnedData[i]["COLOR"] + "'>" + returnedData[i]["TEXT"] + "</div></td></tr>";
                    }
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html);
                    $('.Seleccion').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("text-decoration-line", "underline");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("text-decoration-line", "initial");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left - 150,
                        width: '140px',
                        height: '80px',
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Seleccion').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        var returnedData = $.grep(T_VALORES, function (element) {
                            return (element.ID == V_sele);
                        });
                        var V_text_set = returnedData[0]["TEXT"];
                        var V_Color0 = returnedData[0]["COLOR"];
                        $('#' + V_id_sel).html(V_text_set);
                        console.log('V_color:' + V_Color0);
                        if (V_Color0 != "") {
                            $('#' + V_id_sel).css('background', V_Color0);
                        }
                        for (var i = 0; i < T_FASES.length; i++) {
                            if (T_FASES[i].ID == V_tarea_id) {
                                console.log('V_text_set: ' + V_text_set);
                                T_FASES[i].STATUS = V_text_set; // EN UN FUTURO EL CAMPO SE PODRIA PARAMETRIZAR
                            }
                        }
                        //console.log('V_text_set: ' + V_text_set);
                        // PENDIENTE MOVER EL VALOR ASIGNADO AL INPUT
                        // TAMBIEN VER COMO LO PODEMOS PARAMETRIZAR PARA QUE SIRVA PARA TODOS LOS CAMPOS CON SELECCION
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                });
                $('.selR').on('click', function (e) {
                    // SELECCION RECURSOS
                    var $rowR = $(this).closest('tr');
                    //var V_tarea_id = $rowR.find('td:eq(0)').text();
                    var V_tarea_id = $rowR.attr("id");
                    var V_filas = 0;
                    console.log('Campo de seleccion recursos activado, V_tarea_id:' + V_tarea_id);
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left + 160;
                    var V_top = $(this).offset().top; V_top = parseFloat(V_top) - 2;
                    var V_htmlR = ""; var V_ini = ""; var V_color = ""; var V_cod_us = "";
                    var resultArray = $.grep(T_FASES_REC, function (element) {
                        return element.ID == V_tarea_id;
                    });
                    //V_filas = resultArray.length;
                    var V_borrar = Circulo("red", "-", "2");
                    var V_anyadir = Circulo("red", "+", "2");
                    if (resultArray.length != "0") {
                        for (var j = 0; j < resultArray.length; j++) {
                            var V_recurso = resultArray[j].REC;
                            console.log('V_recurso:' + V_recurso);
                            var resultArray2 = $.grep(T_USUARIOS_ACT, function (element2) {
                                return element2.ID == V_recurso;
                            });
                            if (resultArray2.length != "0") {
                                V_ini = resultArray2[0].INI;
                                V_color = resultArray2[0].COLOR;
                                V_cod_us = resultArray2[0].COD_US;
                            }
                            V_htmlR = V_htmlR + '<tr class = "Asign" id="' + V_recurso + '"><td class="Recurso">' + Circulo(V_color, V_ini, "1") + '<div class = "texto-centrado">' + V_cod_us;
                            V_htmlR = V_htmlR + '</div><div class="justi-dcha">' + V_borrar + '</div></td></tr>';
                        }
                    }
                    var V_htmlR2 = "";
                    V_filas = V_filas + T_USUARIOS_ACT.length;
                    var V_altura = parseFloat(V_filas) * 32 + 18;
                    for (var i = 0; i < T_USUARIOS_ACT.length; i++) {
                        V_ini = T_USUARIOS_ACT[i].INI;
                        V_color = T_USUARIOS_ACT[i].COLOR;
                        V_cod_us = T_USUARIOS_ACT[i].COD_US;
                        V_us_id = T_USUARIOS_ACT[i].ID;
                        // FILTRA QUE NO ESTE EN LA LISTA DE SELECCIONADOS
                        var resultArray = $.grep(T_FASES_REC, function (element) {
                            return (element.REC == V_us_id && element.ID == V_tarea_id);
                        });
                        if (resultArray.length == "0") {
                            V_htmlR2 = V_htmlR2 + '<tr class = "NoAsign" id="' + V_us_id + '"><td class="Recurso">' + Circulo(V_color, V_ini, "1") + '<div class = "texto-centrado">' + V_cod_us;
                            V_htmlR2 = V_htmlR2 + '</div><div class="justi-dcha">' + V_anyadir + '</div></td></tr>';
                        }
                    }
                    V_html = V_htmlR + '<tr><td class ="Add_R" colspan = 2>Add resources</td></tr>' + V_htmlR2;
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html);
                    $('.Recurso').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("background-color", "#f7f7f7");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("background-color", "#dcdcdc");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left - 150,
                        width: '170px',
                        height: V_altura,
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Recurso').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        if ($row.hasClass("Asign")) {
                            console.log('Recurso a Desasignar, V_sele:' + V_sele + ' de tarea: ' + V_tarea_id);
                            for (var i = 0; i < T_FASES_REC.length; i++) {
                                if (T_FASES_REC[i].ID == V_tarea_id && T_FASES_REC[i].REC == V_sele) {
                                    console.log('BORRADO:' + i + 'ANTES:' + T_FASES_REC.length);
                                    T_FASES_REC.splice(i, 1);
                                    console.log('BORRADO:' + i + 'DESPUES:' + T_FASES_REC.length);
                                }
                            }
                        }
                        else {
                            console.log('Recurso a Asignar, V_sele:' + V_sele + ' de tarea: ' + V_tarea_id);
                            T_FASES_REC.push({ ID: V_tarea_id, REC: V_sele });
                        }
                        $('#TABLA_DATOS_PROYECTO_SEM_F2').empty();
                        dibujaproyectoFASES(V_proyecto_sel);
                        //console.log('V_text_set: ' + V_text_set);
                        // PENDIENTE MOVER EL VALOR ASIGNADO AL INPUT
                        // TAMBIEN VER COMO LO PODEMOS PARAMETRIZAR PARA QUE SIRVA PARA TODOS LOS CAMPOS CON SELECCION
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });

                });
                // GESTION DE CAMPOS CON OPCIONES: GENERICO Y RECURSOS --- FIN ---
                // CREAR TAREAS DE NIVELES INFERIORES
                $('.Crear_tarea').on('click', function (e) {
                    var $row0 = $(this).closest('tr');
                    var row_index = $(this).parent().index();
                    row_index = row_index + 1;
                    var V_id = $row0.find('td:eq(0)').text();
                    V_id0 = $row0.attr("id");
                    e.preventDefault();
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left + 160;
                    var V_top = $(this).offset().top; V_top = parseFloat(V_top) - 2;
                    var V_html = "<tr id='ST'><td class ='Tipo_tarea'>Mismo nivel</td></tr>";
                    //var V_html = V_html + "<tr id='SG'><td class ='Tipo_tarea'>Same level Group</td></tr>";
                    var V_html = V_html + "<tr id='LT'><td id='ST' class ='Tipo_tarea'>Nivel inferior</td></tr>";
                    //var V_html = V_html + "<tr id='LG'><td class ='Tipo_tarea'>Lower level Group</td></tr>";
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html);
                    $('.Tipo_tarea').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("text-decoration-line", "underline");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("text-decoration-line", "initial");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left - 150,
                        width: '140px',
                        //height: '80px',
                        height: '45px',
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Tipo_tarea').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        console.log('Seleccion: ' + V_sele + ' V_id0:' + V_id0);
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                        // ACCEDE AL REGISTRO ACTUAL PARA CAPTURAR EL NIVEL Y ORDEN
                        var returnedData = $.grep(T_FASES, function (element) {
                            return (element.ID == V_id0);
                        });
                        var V_nivel = parseFloat(returnedData[0]["NIVEL"]);
                        var V_orden = parseFloat(returnedData[0]["ORDEN"]) + 1;
                        var V_id_aux = V_id0;
                        var V_new_id = "";
                        // busca el ultimo punto e incrementa un numero o inserta punto y 1
                        // SI NO HAY PUNTO Y MISMO NIVEL SUMA UNO
                        if (V_sele == 'LG' || V_sele == 'LT') {
                            // SI ES NIVEL INFERIOR SOLO AÑADE .1
                            V_new_id = V_id0 + ".1";
                            V_nivel = V_nivel + 1;
                            // ACTUALIZA ORDEN
                            var V_ant = "1";
                            var V_orden_aux = parseFloat(V_orden);
                            for (var i = 0; i < T_FASES.length; i++) {
                                if (V_ant != "1") // SI YA HA LLEGADO A LA FILA
                                {
                                    V_orden_aux = parseFloat(V_orden_aux) + 1;
                                    T_FASES[i].ORDEN = V_orden_aux;
                                }
                                if (V_id0 == T_FASES[i].ID) { // SI ES LA LINEA ACTUAL MARCALO Y GUARDA EL NIVEL
                                    T_FASES[i].DESP = "S";
                                    V_ant = "0";
                                }
                            }
                        }
                        else {
                            var V_dondepunto = 0; var V_aux = V_sele;
                            var I_punto = V_id0.indexOf('.');
                            if (I_punto < 0) {
                                // SI ES PRIMER NIVEL SUMA UNO
                                V_new_id = parseFloat(V_id0) + 1;
                            }
                            else {
                                // SI ES SEGUNDO NIVEL O INFERIOR BUSCA EL PUNTO Y AISLA HASTA EL PUNTO
                                V_new_id = SUMA_UNO_INDICE(V_id_aux);
                            }
                        }
                        console.log('NEW ID: ' + V_new_id, ' NIVEL:' + V_nivel);
                        // ACTUALIZA VALORES LINEAS POSTERIORES
                        var V_ant = "1"; var V_nivel0 = 0; var V_orden_aux = parseFloat(V_orden);
                        // MODIFICA LAS LINES POSTERIORES INCREMENTANDO EN UNO SU INDICE
                        for (var i = 0; i < T_FASES.length; i++) {
                            // SI YA SUPERADA LA LINEA MODIFICADA Y NIVEL SUPERIOR NO INCREMENTA NUMERO
                            if (T_FASES[i].NIVEL < V_nivel0) {
                                V_ant = "2";
                            }
                            if (V_ant != "1") // SI YA HA LLEGADO A LA FILA
                            {
                                if (V_ant == "0") {
                                    // SI YA HA PASADO LA LINEA SELECCIONADA INCREMENTA INDICE EN UNO EN NIVEL
                                    V_id_aux = SUMA_UNO_NIVEL(T_FASES[i].ID, V_nivel0);
                                    T_FASES[i].ID = V_id_aux;
                                }
                                V_orden_aux = parseFloat(V_orden_aux) + 1;
                                T_FASES[i].ORDEN = V_orden_aux;
                                console.log('V_id0: ' + V_id0 + ' T_FASES[i].ID:' + T_FASES[i].ID);
                            }
                            if (V_id0 == T_FASES[i].ID) { // SI ES LA LINEA ACTUAL MARCALO Y GUARDA EL NIVEL
                                V_id_aux = parseFloat(V_id_aux) + 1;
                                V_ant = "0";
                                V_nivel0 = T_FASES[i].NIVEL;
                                if (V_sele == 'LG' || V_sele == 'LT') {
                                    V_nivel0 = V_nivel0 + 1;
                                }
                            }
                        }
                        T_FASES.push({
                            ID: V_new_id,
                            NOMBRE: "New task",
                            ORDEN: V_orden,
                            FECINI: V_find + "/" + V_finm + "/" + V_fina,
                            FECFIN: V_find + "/" + V_finm + "/" + V_fina,
                            STATUS: "NOT INITIATED",
                            NIVEL: V_nivel,
                            RECURSOS: "",
                            PRECEDENTES: "",
                        });
                        console.log('FILA_INSERTADA ');
                        T_FASES.sort(dynamicSort("ORDEN"));
                        for (var i = 0; i < T_FASES.length; i++) {
                            //console.log('T_FASES, ID:'+ T_FASES[i].ID+'ORDEN: '+T_FASES[i].ORDEN+' RECURSOS:'+T_FASES[i].RECURSOS);
                        }
                        $('#TABLA_DATOS_PROYECTO_SEM_F2').empty();
                        dibujaproyectoFASES(V_proyecto_sel);
                    });
                });
                $('.Borrar_tarea').on('click', function (e) {
                    e.preventDefault();
                    console.log('Borrar tarea seleccionado');
                    if (T_FASES.length > 1) { // SI SOLO HAY UNA FASE NO SE PUEDE BORRAR PENDIENTE ENVIAR AVISO!!!!!
                        // BORRAR ARRAY + BORRAR TABLA + REPINTAR FASES
                        //var $row = $(this).closest('tr');
                        //$row.remove();
                        var $celda = $(this).closest('td');
                        var V_cid = $celda.attr('id');
                        V_cid = V_cid.substring(1, V_cid.length);
                        console.log('V_cid:' + V_cid + 'T_FASES.length:' + T_FASES.length);
                        for (var i = 0; i < T_FASES.length; i++) {
                            //console.log('V_cid:' + V_cid +'T_FASES[i].ID:'+T_FASES[i].ID);
                            if (T_FASES[i].ID == V_cid) {
                                console.log('Splice V_cid:' + V_cid);
                                T_FASES.splice(i, 1);
                            }
                        }
                    }
                    else {
                        Ventana_error("ERROR: Un proyecto debe tener como mínimo una tarea");
                    }
                    dibujaproyectoFASES(V_proyecto_sel);
                });
            }
            function Seleccionar_celda(V_celda) {
                console.log('CELDA SELECCIONADA');
                var myClass = V_celda.attr("class");
                var V_cid = V_celda.attr('id');
                var str_index = V_cid.indexOf(".");
                var V_id_aux = V_cid.substring(0, str_index);
                var V_id_aux2 = parseFloat(V_id_aux) + 1;
                var V_fecha = V_cid.substring(parseFloat(str_index) + 1, V_cid.length - parseFloat(str_index) + 2)
                console.log('CLICK EN CLASS2, CLASS:' + myClass + ' V_cid:' + V_cid + ' V_id_aux:' + V_id_aux + ' V_fecha:' + V_fecha);
                if (V_celda.hasClass("Fase0")) {
                    //console.log('CLICK EN CLASS FASE0!!, BORRAR CONTENIDO');
                    V_celda.removeClass("Fase0");
                    V_celda.html("");
                    // AÑADE GAP
                    console.log('AÑADE V_id_aux:' + V_id_aux2 + ' V_fecha:' + V_fecha);
                    T_FASES_DET.push({ ID: V_id_aux2, FECHA: V_fecha });
                }
                else {
                    //console.log('CLICK SIN CLASS FASE0!!, AÑADIR CONTENIDO');
                    V_celda.addClass("Fase0");
                    var V_color = T_COLOR[V_id_aux];
                    var V_html = '<div class = "Fase_sel" style="background-color:' + V_color + '" title = "' + V_fecha + '">';
                    V_celda.html(V_html);
                    // BORRA GAP
                    for (var i = 0; i < T_FASES_DET.length; i++) {
                        if (T_FASES_DET[i].ID == V_id_aux2 && T_FASES_DET[i].FECHA == V_fecha) {
                            console.log('BORRA V_id_aux:' + V_id_aux2 + ' V_fecha:' + V_fecha);
                            T_FASES_DET.splice(i, 1);
                        }
                    }
                }
                // DESPUES DEL CAMBIO SE DEBE RECALCULAR LA FECHA INICIO Y FECHA FIN Y LOS DIAS
                var $row = V_celda.closest('tr');
                var V_suma = 0; var V_fechainiaux = ""; var V_fechafinaux = "";
                $row.find('td').each(function () {
                    if ($(this).hasClass("Fase0")) {
                        V_cid = $(this).attr('id');
                        str_index = V_cid.indexOf(".");
                        V_id_aux = V_cid.substring(0, str_index);
                        V_fecha = V_cid.substring(parseFloat(str_index) + 1, V_cid.length - parseFloat(str_index) + 2)
                        //console.log('FASE0 con hasClass!!, V_fecha:'+V_fecha+' V_cid:'+V_cid);
                        if (V_suma == "0") {
                            V_fechainiaux = V_fecha;
                        }
                        V_suma = parseFloat(V_suma) + 1;
                        V_fechafinaux = V_fecha;
                    }
                });
                var V_d = V_fechainiaux.substring(0, 2); var V_m = V_fechainiaux.substring(3, 5); var V_a = V_fechainiaux.substring(6, 10);
                //if (V_m <10) {V_m = "0"+V_m;}
                V_fechainiaux = V_a + "-" + V_m + "-" + V_d;       // CAMBIA DE FORMATO DD/MM/AAAA A AAAA-MM-DD
                T_FASES[V_id_aux].FECINI = V_d + "/" + V_m + "/" + V_a;
                var V_d = V_fechafinaux.substring(0, 2); var V_m = V_fechafinaux.substring(3, 5); var V_a = V_fechafinaux.substring(6, 10);
                //if (V_m <10) {V_m = "0"+V_m;}
                V_fechafinaux = V_a + "-" + V_m + "-" + V_d;       // CAMBIA DE FORMATO DD/MM/AAAA A AAAA-MM-DD
                T_FASES[V_id_aux].FECFIN = V_d + "/" + V_m + "/" + V_a;
                var V_id_index = parseFloat(V_id_aux) + 1;
                console.log('V_fechainiaux:' + V_fechainiaux + ' V_fechafinaux:' + V_fechafinaux);
                $("#FecFin" + V_id_index).val(V_fechafinaux);
                $("#FecIni" + V_id_index).val(V_fechainiaux);
                $("#duracion" + V_id_index).html(FormateaImporte(V_suma));
            }
            function Dibuja_tabla_recursos() {
                console.log('Dibuja_tabla_recursos ');
                // INFORMA LA TABLA DE LOS RECURSOS Y LA PLANIFICACIÓN DE SU DEDICACIÓN
                V_html = "";
                // FECHAS PRIMERA SEMANA DESDE EL DIA INICIO DEL PROYECTO HASTA EL PPRIEMR DOMINGO
                var V_fecini2 = $('.Fecha_ini').val();
                var V_inid = V_fecini2.substring(8, 10); var V_inim = parseFloat(V_fecini2.substring(5, 7)); var V_inia = V_fecini2.substring(0, 4);
                var V_dia_ini = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                var V_fecfin2 = $('.Fecha_fin').val();
                var V_find = V_fecfin2.substring(8, 10); var V_finm = parseFloat(V_fecfin2.substring(5, 7)); var V_fina = V_fecfin2.substring(0, 4);
                var V_dia_fin = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                var V_semanafin = Calcula_semana(V_dia_fin);
                var V_dia = V_dia_ini.getDay();
                V_dias_dom = 7 - parseFloat(V_dia);
                var V_total_dias_plan = 0; var V_total_coste_plan = 0;
                // FIN FECHAS
                var V_id = ""; var V_id_aux = V_id;
                T_USUARIO = [];
                D_USUARIO_INDEX = [];
                console.log('T_RECURSOS.length: ', T_RECURSOS.length);
                for (var i = 0; i < T_RECURSOS.length; i++) {
                    V_id = T_RECURSOS[i].ID;
                    var Index_usuarios = D_USUARIO_INDEX.indexOf(V_id);
                    if (Index_usuarios < 0) {
                        // SI CREA UN ARRAY DE LOS RECURSOS A PINTAR YSU ARRAY AUXILIAR
                        console.log('CREA RECURSO: ', T_RECURSOS[i].USUARIO);
                        D_USUARIO_INDEX.push(V_id);
                        T_USUARIO.push({
                            ID: V_id,
                            PERFIL: T_RECURSOS[i].PERFIL,
                            USUARIO: T_RECURSOS[i].USUARIO,
                            TARIFA: T_RECURSOS[i].TARIFA,
                        })
                    }
                }
                T_RECURSOS.sort(dynamicSort("ORDEN"));
                // SE ORDENAN LOS DATOS POR SEMANA
                // A MEJORAR A NIVEL DE RENDIMIENTO
                var T_RECURSOS_AUX = []; var T_RECURSOS_TOTAL = [];
                //  console.log('V_semana: ',V_semana);
                //PARA CADA USUARIO REPASA TODAS LAS SEMANA, BUSCA SI VIENEN HORAS Y LAS INFORMA SINO PON CERO
                var V_today = new Date();
                for (var i = 0; i < T_USUARIO.length; i++) {
                    var V_id1 = T_USUARIO[i].ID;
                    var V_usuario = T_USUARIO[i].USUARIO;
                    var V_perfil = T_USUARIO[i].PERFIL;
                    var V_tarifa = T_USUARIO[i].TARIFA;
                    V_aux = "";
                    var V_Total_jornadas = 0;
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    var V_ok = "";
                    while (V_aux != "X") {
                        // POR CADA SEMANA REVISA SI EXISTE ALGUNA ENTRADA Y SI NO INFORMA CER0
                        var V_anyo = dia_inicio_aux.getFullYear();
                        V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        var filterVal = V_id1 + "." + V_anyo + V_semana;
                        //console.log('filterVal: ',filterVal);
                        var resultArray = $.grep(T_RECURSOS, function (element) {
                            return element.ORDEN == filterVal;
                        });
                        var v_jornadas = "0";
                        if (resultArray.length > 0) {
                            // SI HA ENCONTRADO LA ENTRADA
                            v_jornadas = resultArray[0].JORNADAS;
                            if (dia_inicio_aux <= V_today) {
                                V_total_dias_plan = parseFloat(V_total_dias_plan) + parseFloat(v_jornadas);
                                var V_tarifa1 = resultArray[0].TARIFA;
                                V_total_coste_plan = V_total_coste_plan + parseFloat(v_jornadas) * parseFloat(V_tarifa1);
                            }
                        }
                        V_Total_jornadas = parseFloat(V_Total_jornadas) + parseFloat(v_jornadas);
                        //console.log('T_RECURSOS_AUX V_usuario: ',V_usuario, 'V_semana: ',V_semana, 'v_jornadas: ',v_jornadas, 'V_anyo: ',V_anyo);
                        T_RECURSOS_AUX.push({
                            ID: V_id1,
                            PERFIL: V_perfil,
                            USUARIO: V_usuario,
                            SEMANA: V_semana,
                            ANYO: V_anyo,  // GNA 141019
                            JORNADAS: v_jornadas,
                            TARIFA: V_tarifa,
                            ORDEN: filterVal,
                        });
                        //console.log('V_semanafin: ', V_semanafin, 'V_semana: ', V_semana);
                        dia_inicio_aux.setDate(dia_inicio_aux.getDate() + 7); // GNA 141019
                        //V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        //if (V_semana == V_semanafin || dia_inicio_aux > V_dia_fin) // GNA 141019
                        if (dia_inicio_aux > V_dia_fin) // GNA 141019
                        { V_aux = "X"; }
                    }
                    T_RECURSOS_TOTAL.push({
                        ID: V_id1,
                        TOTAL: V_Total_jornadas,
                    });
                }
                // CON ESTO NOS QUEDA UNA TABLA CON LOS DIAS, LA SIGUIENTE RUTINA PINTA LA TABLA EN PANTALLA CON LOS DATOS EN LA TABLA T_RECURSOS_AUX
                T_RECURSOS_AUX.sort(dynamicSort("ORDEN"));
                var V_html = ""; var V_total = 0;
                var V_total_dias = 0; var V_total_Coste = 0;
                if (T_RECURSOS_AUX.length > 0) {
                    console.log('OPCION T_RECURSOS_AUX.length > 0');
                    var I_cont = 0;
                    for (var i = 0; i < T_RECURSOS_AUX.length; i++) {
                        V_id = T_RECURSOS_AUX[i].ID;
                        //console.log('T_RECURSOS_AUX[i].ID: '+T_RECURSOS_AUX[i].ID +'T_RECURSOS_AUX[i].USUARIO: '+T_RECURSOS_AUX[i].USUARIO +'T_RECURSOS_AUX[i].SEMANA: '+T_RECURSOS_AUX[i].SEMANA  );
                        if (i == 0 || (V_id != V_id_aux)) {
                            // RELLENA LOS CAMPOS DE LA DERECHA DE USUARIO, PERFIL, ....
                            console.log('Nueva entrada recurso: ' + V_id);
                            if (i != 0) {
                                V_html = V_html + '</tr>';
                            }
                            var resultArray = $.grep(T_RECURSOS_TOTAL, function (element) {
                                return element.ID == V_id;
                            });
                            if (resultArray.length > 0) {
                                // SI HA ENCONTRADO LA ENTRADA
                                V_total = resultArray[0].TOTAL;
                            }
                            //V_html = V_html + '<tr><td><div><input class ="Perfil Desc" type="text" value="'+T_RECURSOS_AUX[i].PERFIL+'" style="width: 150px;"/></div></td>';
                            V_importe = parseFloat(V_total) * parseFloat(T_RECURSOS_AUX[i].TARIFA);
                            V_html = V_html + '<tr><td id = "P' + V_id + '" class="selperf" style="width:190px; text-align:center">' + T_RECURSOS_AUX[i].PERFIL + '</td>';
                            V_html = V_html + '<td id = "U' + V_id + '" class="selusu" style="width:190px; text-align:center">' + T_RECURSOS_AUX[i].USUARIO + '</td>';
                            V_html = V_html + '<td class = "Tot_dias"><div id=jornadas class="duracion Texto_tabla">' + FormateaImporte(V_total) + '</div></td>';
                            V_html = V_html + '<td class = "tarifa"><div id=tarifa class="importe Texto_tabla">' + FormateaImporte(T_RECURSOS_AUX[i].TARIFA) + '</div></td>';
                            V_html = V_html + '<td class = "Tot_coste"><div id=total class="importe Texto_tabla Tot_coste">' + FormateaImporte(V_importe) + '</div></td>';
                            V_html = V_html + '<td id = "D' + V_id + '"><div class ="Borrar_recurso">' + V_img_dele + '</div></td>';
                            V_id_aux = V_id;
                            V_total_dias = parseFloat(V_total_dias) + V_total;
                            V_total_Coste = parseFloat(V_total_Coste) + V_importe;
                            dia_inicio_aux = new Date(V_dia_ini);
                            I_cont = 0;
                        }
                        // AÑADE LA ENTRADA CON EL VALOR
                        V_html = V_html + '<td id = "' + T_RECURSOS_AUX[i].ORDEN + '" class = "Esfuerzo"><input class ="IMPORTE JORNADAS Texto_tabla" type="string" value="' + FormateaImporte(T_RECURSOS_AUX[i].JORNADAS) + '" style="width: 100%;"/></td>';
                        //console.log('i: '+i + ' T_ACUM.length:' + T_ACUM.length+ ' T_RECURSOS_AUX.length:' + T_RECURSOS_AUX.length);
                        var V_aux = FormateaDecimalesPunto(T_RECURSOS_AUX[i].JORNADAS);
                        T_ACUM[I_cont].JORNADAS = parseFloat(T_ACUM[I_cont].JORNADAS) + parseFloat(V_aux);
                        I_cont = I_cont + 1;
                    }
                }
                else {
                    // SI NO HAY NINGUN REGISTRO CREA UNA ENTRADA EN BLANCO
                    console.log('OPCION NO HAY RECURSO');
                    V_html = '<tr><td id = "P1" class="selperf" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="PERFIL1" class="Text_sel2 PERF" style="width:190px; height:20px" tabindex="-1">' + V_htmlPerf + '</td>';
                    V_html = V_html + '<td id = "U1" class="selusu" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="USUARIO1" class="Text_sel2 USU" style="width:190px; height:20px" tabindex="-1">' + V_htmlUsu + '</td>';
                    V_html = V_html + '<td class = "Tot_dias"><div id=jornadas class="duracion Texto_tabla">0</div></td>';
                    V_html = V_html + '<td class = "tarifa"><div id=tarifa class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td class = "Tot_coste"><div id=total class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td id = "D1"><div class ="Borrar_recurso">' + V_img_dele + '</div></td>';
                    V_recurso_index = 1;
                    V_aux = "";
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    var V_semana_anyo = dia_inicio_aux.getFullYear() + "" + V_semana;
                    var V_new_id = "1";
                    var V_orden = V_new_id + "." + V_semana_anyo;
                    while (V_aux != "X") {
                        // POR CADA SEMANA crea un input a cero
                        V_html = V_html + '<td id = "' + V_orden + '" class = "Esfuerzo" ><input class ="IMPORTE JORNADAS Texto_tabla" type="string" value="0" style="width: 100%;"/></td>';
                        V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        dia_inicio_aux.setDate(dia_inicio_aux.getDate() + 7); 
                        if (dia_inicio_aux > V_dia_fin) 
                        { V_aux = "X"; }
                    }
                    V_html = V_html + '</tr>';
                    T_RECURSOS.push({
                        ID: '1',
                        PERFIL: '',
                        USUARIO: '',
                        SEMANA: V_semana_anyo,
                        JORNADAS: '0',
                        TARIFA: '0',
                        ORDEN: V_orden
                    });
                }
                console.log('Fin pintar recursos');
                $('#TABLA_DATOS_PROYECTO_SEM_R').append(V_html);
                V_html = '<tr class="TOTALES"><td>TOTALES</td><td></td><td class = "TextC">' + FormateaImporte(V_total_dias) + '</td><td></td><td class = "TextC">' + FormateaImporte(V_total_Coste) + '<td></td></td>'; // GN 18102019
                for (var i = 0; i < T_ACUM.length; i++) {
                    V_html = V_html + '<td class="Texto_tabla">' + FormateaImporte(T_ACUM[i].JORNADAS) + '</td>';
                }
                V_html = V_html + '</tr>';
                $('#TABLA_DATOS_PROYECTO_SEM_R').append(V_html);
                // AÑADE FILA DE TOTALES PLAN
                V_html = '<tr class="TOTALES"><td>TOTALES PLAN A FECHA</td><td></td><td class = "TextC">' + V_total_dias_plan + '</td><td></td><td class = "TextC">' + FormateaImporte(V_total_coste_plan) + '<td></td></td>'; // GN 18102019
                V_html = V_html + '</tr>';
                V_html = V_html + '<tr class = "INSERTAR_FILA_R"><td><div class = "Insertar_filaR"><input type="image" title = "Insertar fila" src="../Images/Add_item.png" alt="Next week" width="15" height="15"></div></td></tr>';
                $('#TABLA_DATOS_PROYECTO_SEM_R').append(V_html);
                $('.Borrar_recurso').on('click', function (e) {
                    console.log('Borrar fila recurso ');
                    var $row = $(this).closest('tr');
                    $row.remove();
                    var $celda = $(this).closest('td');
                    var V_cid = $celda.attr('id');
                    V_cid = V_cid.substring(1, V_cid.length);
                    console.log('V_cid:' + V_cid); console.log('T_RECURSOS.length:' + T_RECURSOS.length);
                    //$.each(T_RECURSOS, function(i, el){
                    for (var i = 0; i < T_RECURSOS.length; i++) {
                        //console.log('i:'+i+' T_RECURSOS[i].ID:'+T_RECURSOS[i].ID);
                        console.log(' USUARIO: ' + T_RECURSOS[i].USUARIO);
                        console.log(' SEMANA: ' + T_RECURSOS[i].SEMANA);
                        if (T_RECURSOS[i].ID == V_cid) {
                            //if (this.ID == V_cid){
                            console.log('Ejecuta Borrar fila recurso V_cid:' + V_cid);
                            T_RECURSOS.splice(i, 1);
                            i = i - 1;
                        }
                    }
                    //});
                });
                $('.Insertar_filaR').on('click', function (e) {
                    e.preventDefault();
                    console.log('Insertar_fila R');
                    // AÑADIR LA FILA A LA TABLA
                    var $row = $(this).closest('tr');
                    var row_index = $row.index(); var I_row = parseFloat(row_index) - 4;
                    //var V_new_id = parseFloat(row_index)-1;
                    V_recurso_index = I_row;
                    //var V_aux = parseFloat(V_recurso_index) - 2;
                    //console.log('V_aux:' + V_aux);
                    V_html = '<tr><td id = "P' + V_recurso_index + '" class="selperf" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="PERFIL' + V_recurso_index + '" class="Text_sel2 PERF" style="width:190px; height:20px" tabindex="-1">';
                    V_html = V_html + V_htmlPerf + '</td>';
                    V_html = V_html + '<td id = "U' + V_recurso_index + '" class="selusu" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="USUARIO' + V_recurso_index + '" class="Text_sel2 USU" style="width:190px; height:20px" tabindex="-1">' + V_htmlUsu + '</td>';
                    V_html = V_html + '<td class = "Tot_dias"><div id=jornadas class="duracion Texto_tabla">0</div></td>';
                    V_html = V_html + '<td class = "tarifa"><div id=tarifa class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td class = "Tot_coste"><div id=total class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td id = "D' + V_recurso_index + '"><div class ="Borrar_recurso">' + V_img_dele + '</div></td>';
                    V_aux = "";
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    while (V_aux != "X") {
                        // POR CADA SEMANA crea un input a cero
                        var V_semana_anyo = dia_inicio_aux.getFullYear() + "" + V_semana;
                        var V_orden = V_recurso_index + "." + V_semana_anyo;
                        V_html = V_html + '<td id = "' + V_orden + '" class = "Esfuerzo"><input class ="IMPORTE JORNADAS Texto_tabla" type="string" value="0" style="width: 100%;"/></td>';
                        V_semana = Calcula_semana(dia_inicio_aux); 
                        dia_inicio_aux.setDate(dia_inicio_aux.getDate() + 7); 
                        if (dia_inicio_aux > V_dia_fin) 
                        { V_aux = "X"; }
                    }
                    V_html = V_html + '</tr>';
                    //$row.remove();
                    //$('#TABLA_DATOS_PROYECTO_SEM').append(V_html);
                    var V_index = $('table#TABLA_DATOS_PROYECTO_SEM_R tr:last').index() + 1;
                    var V_index0 = V_index - 4;
                    $(V_html).insertAfter('#TABLA_DATOS_PROYECTO_SEM_R tr:eq(' + V_index0 + ')');
                    formatea_fila_recursos();
                    $('.Borrar_recurso').on('click', function (e) {
                        console.log('Borrar fila recurso ');
                        var $row = $(this).closest('tr');
                        $row.remove();
                    });
                    console.log('Insertar_fila R ----FIN');
                    //AÑADIR ENTRADA EN ARRAY RECURSOS CON ENTRADA DE CERO HORAS LA PRIMERA SEMANA
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    var V_sem = dia_inicio_aux.getFullYear() + "" + V_semana;
                    var V_USU = $row.find("#USUARIO option:selected").text();
                    var V_Perfil = $row.find("#PERFIL option:selected").text();
                    var V_Tarifa = $row.find("#tarifa").text();
                    var V_orden = V_recurso_index + "." + V_sem;
                    console.log('V_recurso_index: ' + V_recurso_index + 'V_Perfil: ' + V_Perfil + 'V_sem: ' + V_sem + 'V_USU: ' + V_USU + 'V_Tarifa: ' + V_Tarifa + 'V_orden: ' + V_orden);
                    T_RECURSOS.push({
                        ID: V_recurso_index,
                        PERFIL: V_Perfil,
                        USUARIO: V_USU,
                        SEMANA: V_sem,
                        JORNADAS: "0",
                        TARIFA: V_Tarifa,
                        ORDEN: V_orden
                    });
                });
                $(".selperf").each(function () {
                    var V_sel = $(this).html();
                    var $row = $(this).closest('tr');
                    var row_index = $row.index();
                    var V_aux = parseFloat(row_index) - 2;
                    var V_html0 = '<select id="PERFIL' + V_aux + '" class="Text_sel2 PERF" style="width:190px; height:20px" tabindex="-1"> <option>' + '  ' + '</option>';
                    for (var k = 0; k < T_PERFILES.length; k++) {
                        var V_Id = T_PERFILES[k].ID;
                        var V_Perfil = T_PERFILES[k].PERFIL;
                        V_html0 = V_html0 + '<option>' + V_Perfil + '</option>';
                    }
                    V_html0 = V_html0 + '</select>'
                    $(this).html(V_html0);
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                    // PENDIENTE AÑADIR ENTRADA EN ARRAY
                });
                $(".selusu").each(function () {
                    var V_sel = $(this).html();
                    var $row = $(this).closest('tr');
                    var row_index = $row.index();
                    var V_aux = parseFloat(row_index) - 2;
                    var V_html0 = '<select id="USUARIO' + V_aux + '" class="Text_sel2 USU" style="width:190px; height:20px" tabindex="-1"> <option>' + '  ' + '</option>';
                    for (var k = 0; k < T_USUARIOS_ACT.length; k++) {
                        V_html0 = V_html0 + '<option>' + T_USUARIOS_ACT[k].COD_US + '</option>';
                    }
                    V_html0 = V_html0 + '</select>'
                    $(this).html(V_html0);
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                    // PENDIENTE AÑADIR ENTRADA EN ARRAY
                });
                formatea_fila_recursos();
                // PENDIENTE AÑADIR ENTRADA EN ARRAY
            }
            function Dibuja_tabla_COSTES_REALES() {
                // INFORMA LA TABLA DE LOS RECURSOS Y LA PLANIFICACIÓN DE SU DEDICACIÓN
                V_html = "";
                // FECHAS PRIMERA SEMANA DESDE EL DIA INICIO DEL PROYECTO HASTA EL PRIMER DOMINGO
                var V_fecini2 = $('.Fecha_ini').val();
                var V_inid = V_fecini2.substring(8, 10); var V_inim = parseFloat(V_fecini2.substring(5, 7)); var V_inia = V_fecini2.substring(0, 4);
                var V_dia_ini = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                var V_fecfin2 = $('.Fecha_fin').val();
                var V_find = V_fecfin2.substring(8, 10); var V_finm = parseFloat(V_fecfin2.substring(5, 7)); var V_fina = V_fecfin2.substring(0, 4);
                var V_dia_fin = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                var V_semanafin = Calcula_semana(V_dia_fin);
                var V_dia = V_dia_ini.getDay();
                V_dias_dom = 7 - parseFloat(V_dia);
                //console.log('dia_inicio_aux: ',dia_inicio_aux);
                // FIN FECHAS
                var V_id = ""; var V_id_aux = V_id;
                T_USUARIO = [];
                D_USUARIO_INDEX = [];
                for (var i = 0; i < T_COSTES.length; i++) {
                    V_id = T_COSTES[i].ID;
                    var Index_usuarios = D_USUARIO_INDEX.indexOf(V_id);
                    if (Index_usuarios < 0) {
                        // SI CREA UN ARRAY DE LOS RECURSOS A PINTAR YSU ARRAY AUXILIAR
                        console.log('CREA RECURSO: ', T_COSTES[i].USUARIO);
                        D_USUARIO_INDEX.push(V_id);
                        T_USUARIO.push({
                            ID: V_id,
                            USUARIO: T_COSTES[i].USUARIO,
                            PERFIL: T_COSTES[i].PERFIL,
                            TARIFA: T_COSTES[i].TARIFA,
                        })
                    }
                }
                T_COSTES.sort(dynamicSort("ORDEN"));
                // SE ORDENAN LOS DATOS POR SEMANA
                // A MEJORAR A NIVEL DE RENDIMIENTO
                var T_COSTES_AUX = []; var T_COSTES_TOTAL = [];
                //  console.log('V_semana: ',V_semana);
                //PARA CADA USUARIO REPASA TODAS LAS SEMANA, BUSCA SI VIENEN HORAS Y LAS INFORMA SINO PON CERO
                for (var i = 0; i < T_USUARIO.length; i++) {
                    var V_id1 = T_USUARIO[i].ID;
                    var V_usuario = T_USUARIO[i].USUARIO;
                    var V_perfil = T_USUARIO[i].PERFIL;
                    var V_tarifa = T_USUARIO[i].TARIFA;
                    V_aux = ""; var V_Total_jornadas = 0;
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    var V_ok = "";
                    while (V_aux != "X") {
                        // POR CADA SEMANA REVISA SI EXISTE ALGUNA ENTRADA Y SI NO INFORMA CER0
                        var V_anyo = dia_inicio_aux.getFullYear();
                        V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        //console.log('dia_inicio_aux: ', dia_inicio_aux, ' V_semana:'+V_semana);
                        var filterVal = V_id1 + "." + V_anyo + V_semana;
                        //console.log('filterVal: ',filterVal);
                        var resultArray = $.grep(T_COSTES, function (element) {
                            return element.ORDEN == filterVal;
                        });
                        var v_jornadas = "0";
                        if (resultArray.length > 0) {
                            // SI HA ENCONTRADO LA ENTRADA
                            v_jornadas = FormateaDecimalesPunto(resultArray[0].JORNADAS);
                            console.log('v_jornadas: ' + v_jornadas + ' V_usuario:' + V_usuario);
                        }
                        V_Total_jornadas = parseFloat(V_Total_jornadas) + parseFloat(v_jornadas);
                        //console.log('T_COSTES_AUX V_usuario: ',V_usuario, 'V_semana: ',V_semana, 'v_jornadas: ',v_jornadas, 'V_anyo: ',V_anyo);
                        T_COSTES_AUX.push({
                            ID: V_id1,
                            USUARIO: V_usuario,
                            SEMANA: V_semana,
                            PERFIL: V_perfil,
                            ANYO: V_anyo,  // GNA 141019
                            JORNADAS: v_jornadas,
                            TARIFA: V_tarifa,
                            ORDEN: filterVal,
                        });
                        //console.log('V_semanafin: ', V_semanafin, 'V_semana: ', V_semana);
                        dia_inicio_aux.setDate(dia_inicio_aux.getDate() + 7); // GNA 141019
                        if (dia_inicio_aux > V_dia_fin) // GNA 141019
                        { V_aux = "X"; }
                    }
                    T_COSTES_TOTAL.push({
                        ID: V_id1,
                        TOTAL: V_Total_jornadas,
                    });
                }
                // CON ESTO NOS QUEDA UNA TABLA CON LOS DIAS, LA SIGUIENTE RUTINA PINTA LA TABLA EN PANTALLA CON LOS DATOS EN LA TABLA T_COSTES_AUX
                T_COSTES_AUX.sort(dynamicSort("ORDEN"));
                var V_html = ""; var V_total = 0;
                var V_total_dias = 0; var V_total_Coste = 0;
                if (T_COSTES_AUX.length > 0) {
                    var I_cont = 0;
                    for (var i = 0; i < T_COSTES_AUX.length; i++) {
                        V_id = T_COSTES_AUX[i].ID;
                        //console.log('T_COSTES_AUX[i].ID: '+T_COSTES_AUX[i].ID +'T_COSTES_AUX[i].USUARIO: '+T_COSTES_AUX[i].USUARIO +'T_COSTES_AUX[i].SEMANA: '+T_COSTES_AUX[i].SEMANA  );
                        if (i == 0 || (V_id != V_id_aux)) {
                            // RELLENA LOS CAMPOS DE LA DERECHA DE USUARIO, PERFIL, ....
                            console.log('Nueva entrada recurso: ' + V_id);
                            if (i != 0) {
                                V_html = V_html + '</tr>';
                            }
                            var resultArray = $.grep(T_COSTES_TOTAL, function (element) {
                                return element.ID == V_id;
                            });
                            if (resultArray.length > 0) {
                                // SI HA ENCONTRADO LA ENTRADA
                                V_total = resultArray[0].TOTAL;
                            }
                            //V_html = V_html + '<tr><td><div><input class ="Perfil Desc" type="text" value="'+T_COSTES_AUX[i].PERFIL+'" style="width: 150px;"/></div></td>';
                            V_importe = parseFloat(V_total) * parseFloat(T_COSTES_AUX[i].TARIFA);
                            V_html = V_html + '<tr><td id = "P' + V_id + '" class="selperf"><div class="displayperfil">' + T_COSTES_AUX[i].PERFIL + '</div></td>';
                            V_html = V_html + '<td id = "U' + V_id + '" class="selusu"><div class="displayperfil">' + T_COSTES_AUX[i].USUARIO + '</div></td>';
                            V_html = V_html + '<td class = "Tot_dias"><div id=jornadas class="duracion Texto_tabla">' + FormateaImporte(V_total) + '</div></td>';
                            V_html = V_html + '<td class = "tarifa"><div id=tarifa class="importe Texto_tabla">' + FormateaImporte(T_COSTES_AUX[i].TARIFA) + '</div></td>';
                            V_html = V_html + '<td class = "Tot_coste"><div id=total class="importe Texto_tabla Tot_coste">' + FormateaImporte(V_importe) + '</div></td>';
                            V_html = V_html + '<td id = "D' + V_id + '"></td>';
                            V_id_aux = V_id;
                            V_total_dias = parseFloat(V_total_dias) + V_total;
                            V_total_Coste = parseFloat(V_total_Coste) + V_importe;
                            dia_inicio_aux = new Date(V_dia_ini);
                            I_cont = 0;
                        }
                        // AÑADE LA ENTRADA CON EL VALOR
                        V_html = V_html + '<td id = "' + T_COSTES_AUX[i].ORDEN + '" class = "Esfuerzo TextC">' + FormateaImporte(T_COSTES_AUX[i].JORNADAS) + '</td>';
                        //console.log('i: '+i + ' T_ACUM.length:' + T_ACUM.length+ ' T_COSTES_AUX.length:' + T_COSTES_AUX.length);
                        //console.log('T_COSTES_AUX[i].JORNADAS: ' + T_COSTES_AUX[i].JORNADAS);
                        //var V_aux = FormateaDecimalesPunto(T_COSTES_AUX[i].JORNADAS);
                        var V_aux = T_COSTES_AUX[i].JORNADAS;
                        T_ACUM[I_cont].JORNADAS = parseFloat(T_ACUM[I_cont].JORNADAS) + parseFloat(V_aux);
                        I_cont = I_cont + 1;
                    }
                }
                else {
                    // SI NO HAY NINGUN REGISTRO CREA UNA ENTRADA EN BLANCO
                    V_html = '<tr><td id = "P1" class="selperf" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="PERFIL1" class="Text_sel2 PERF" style="width:190px; height:20px" tabindex="-1">' + V_htmlPerf + '</td>';
                    V_html = V_html + '<td id = "U1" class="selusu" style="width:190px; text-align:center">';
                    V_html = V_html + '<select id="USUARIO1" class="Text_sel2 USU" style="width:190px; height:20px" tabindex="-1">' + V_htmlUsu + '</td>';
                    V_html = V_html + '<td class = "Tot_dias"><div id=jornadas class="duracion Texto_tabla">0</div></td>';
                    V_html = V_html + '<td class = "tarifa"><div id=tarifa class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td class = "Tot_coste"><div id=total class="importe Texto_tabla">0,00</div></td>';
                    V_html = V_html + '<td id = "D1"></td>';
                    V_recurso_index = 1;
                    V_aux = "";
                    var dia_inicio_aux = new Date(V_dia_ini);
                    V_semana = Calcula_semana(dia_inicio_aux);
                    while (V_aux != "X") {
                        // POR CADA SEMANA crea un input a cero
                        var V_semana_anyo = dia_inicio_aux.getFullYear() + "" + V_semana;
                        var V_new_id = "0";
                        var V_orden = V_new_id + "." + V_semana_anyo;
                        V_html = V_html + '<td id = "' + V_orden + '" class = "Esfuerzo" ><input class ="IMPORTE JORNADAS Texto_tabla" type="string" value="0" style="width: 100%;"/></td>';
                        V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        dia_inicio_aux.setDate(dia_inicio_aux.getDate() + 7); // GNA 141019
                        //V_semana = Calcula_semana(dia_inicio_aux); // GNA 141019
                        //if (V_semana == V_semanafin || dia_inicio_aux > V_dia_fin) // GNA 141019
                        if (dia_inicio_aux > V_dia_fin) // GNA 141019
                        { V_aux = "X"; }
                    }
                    V_html = V_html + '</tr>';
                }
                console.log('Fin pintar recursos TABLA_DATOS_PROYECTO_SEM_A');
                $('#TABLA_DATOS_PROYECTO_SEM_A').append(V_html);
                // AÑADE FILA DE TOTALES REALES
                V_html = '<tr class="TOTALES"><td>TOTALES REALES</td><td></td><td class = "TextC">' + FormateaImporte(V_total_dias) + '</td><td></td><td class = "TextC">' + FormateaImporte(V_total_Coste) + '<td></td></td>'; // GN 18102019
                for (var i = 0; i < T_ACUM.length; i++) {
                    V_html = V_html + '<td class="Texto_tabla">' + FormateaImporte(T_ACUM[i].JORNADAS) + '</td>';
                }
                V_html = V_html + '</tr>';
                $('#TABLA_DATOS_PROYECTO_SEM_A').append(V_html);
                $('.Borrar_recurso').on('click', function (e) {
                    console.log('Borrar fila recurso ');
                    var $row = $(this).closest('tr');
                    $row.remove();
                    var $celda = $(this).closest('td');
                    var V_cid = $celda.attr('id');
                    V_cid = V_cid.substring(1, V_cid.length);
                    console.log('V_cid:' + V_cid); console.log('T_RECURSOS.length:' + T_RECURSOS.length);
                    //$.each(T_RECURSOS, function(i, el){
                    for (var i = 0; i < T_RECURSOS.length; i++) {
                        console.log('i:' + i + ' T_RECURSOS[i].ID:' + T_RECURSOS[i].ID);
                        console.log(' USUARIO: ' + T_RECURSOS[i].USUARIO);
                        console.log(' SEMANA: ' + T_RECURSOS[i].SEMANA);
                        if (T_RECURSOS[i].ID == V_cid) {
                            //if (this.ID == V_cid){
                            console.log('Ejecuta Borrar fila recurso V_cid:' + V_cid);
                            T_RECURSOS.splice(i, 1);
                            i = i - 1;
                        }
                    }
                    //});
                });
            }
            function formatea_fila_recursos() {
                $('.selperf').on('change', function () {
                    // SI CAMBIA EL PERFIL SE DEBERA CAMBIAR EL COSTE
                    var $celda = $(this).closest('td');
                    var V_cid = $celda.attr('id');
                    V_cid = V_cid.substring(1, V_cid.length);
                    var V_Perfil = $(this).find("#PERFIL" + V_cid + " option:selected").text();
                    console.log('cHANGE V_Perfil: ' + V_Perfil);
                    var resultArray = $.grep(T_PERFILES, function (element) {
                        return element.PERFIL == V_Perfil;
                    });
                    var V_coste = "0";
                    if (resultArray.length > 0) {
                        // SI HA ENCONTRADO LA ENTRADA
                        V_coste = resultArray[0].COSTE;
                    }
                    //console.log('V_coste: '+ V_coste);
                    var $row = $(this).closest('tr');
                    V_html = '<div id=tarifa class="importe Texto_tabla">' + FormateaImporte(V_coste) + '</div>';
                    $row.find('td:eq(3)').html(V_html);
                    // CAMBIAR DATOS ARRAY
                    console.log('CHANGE V_Perfil: ' + V_Perfil + ' V_cid: ' + V_cid);
                    var resultArray = $.grep(T_RECURSOS, function (element) {
                        return element.ID == V_cid;
                    });
                    for (var k = 0; k < resultArray.length; k++) {
                        resultArray[k].PERFIL = V_Perfil;
                        resultArray[k].TARIFA = V_coste;
                    }
                });
                $('.selusu').on('change', function () {
                    // SI CAMBIA EL USUARIO SE DEBERA ACTUALIZAR EL ARRAY
                    var $celda = $(this).closest('td');
                    var V_cid = $celda.attr('id');
                    V_cid = V_cid.substring(1, V_cid.length);
                    var V_USU = $(this).find("#USUARIO" + V_cid + " option:selected").text();
                    //var I_row = parseFloat(row_index)-2;
                    //T_RECURSOS[I_row].USUARIO = V_USU;
                    console.log('CHANGE V_USU: ' + V_USU + ' V_cid: ' + V_cid);
                    var resultArray = $.grep(T_RECURSOS, function (element) {
                        return element.ID == V_cid;
                    });
                    for (var k = 0; k < resultArray.length; k++) {
                        resultArray[k].USUARIO = V_USU;
                        console.log('USUARIO CAMBIADO, V_USU:' + V_USU);
                    }
                });
                $('.JORNADAS').on('change', function () {
                    console.log('CAMBIO JORNADAS FUNCTION');
                    var $row = $(this).closest('tr');
                    // SI CAMBIAN LAS JORNADAS SE DEBEN RECALCULAR LOS TOTALES
                    var V_suma = 0; var V_coste = 0; var V_tarifa = 0;
                    $row.find('td').each(function () {
                        var myClass = $(this).attr("class");
                        //console.log('CAMBIO JORNADAS CELDAS, CLASS:' +myClass);
                        //if ($(this).hasClass(".Esfuerzo"))
                        if (myClass == "Esfuerzo") {
                            var V_aux2 = $(this).find('.JORNADAS').val();
                            if ((V_aux2.indexOf(',') != -1) || (V_aux2.indexOf(".") != -1)) {
                                V_aux2 = V_aux2.replace(",", ".");
                            }
                            var V_jornadas = parseFloat(V_aux2);
                            if (!isNaN(V_jornadas) && V_jornadas.length != 0) {
                                V_suma = parseFloat(V_suma) + parseFloat(V_jornadas);
                            }
                        }
                        //console.log('CAMBIO JORNADAS V_suma:' + V_suma);
                        //if ($(this).hasClass(".tarifa"))
                        if (myClass == "tarifa") {
                            V_tarifa = $(this).find('div').text();
                        }
                    });
                    var V_aux1 = parseFloat(V_tarifa).toFixed(2) * V_suma;
                    //console.log('V_aux1!!!!:' + V_aux1);
                    if (!isNaN(V_aux1) && V_aux1.length != 0) {
                        V_coste = parseFloat(V_coste) + V_aux1;
                    }
                    //console.log('V_coste!!!!:' + V_coste);
                    var V_aux = FormateaImporte(V_coste);
                    $row.find('.duracion').html(FormateaImporte(V_suma));
                    $row.find('.Tot_coste').html(V_aux);
                    // ACTUALIZA EL ARRAY, ACCEDE MEDIENTE EL CAMPO ORDEN CON EL ID Y LA SEMANA
                    // PENDIENTE AÑADIR ENTRADA EN ARRAY
                    var V_nuevas_jorn = $(this).val();
                    //console.log('CAMBIO JORNADAS: '+V_nuevas_jorn);
                    var $celda = $(this).closest('td');
                    var V_cid = $celda.attr('id');
                    //V_cid = V_cid.substring(1,V_cid.length);
                    console.log('V_cid: ' + V_cid);
                    var resultArray = $.grep(T_RECURSOS, function (element) {
                        return element.ORDEN == V_cid;
                    });
                    if (resultArray.length > 0) {
                        // SI HA ENCONTRADO LA ENTRADA
                        resultArray[0].JORNADAS = V_nuevas_jorn;
                    }
                    else {
                        // CREA ENTRADA NUEVA EN EL ARRAY, DEL CAMPO V_CID LO DE ANTES DEL PUNTO ES EL ID LO DE DESPUES DEL PUNTO ES LA SEMANA
                        var str_index = V_cid.indexOf(".");
                        var V_id_aux = V_cid.substring(0, str_index);
                        var V_sem = V_cid.substring(parseFloat(str_index) + 1, V_cid.length - parseFloat(str_index) + 1)
                        var V_USU = $row.find(".USU option:selected").text(); /// ver si funciona???????
                        var V_Perfil = $row.find(".PERF option:selected").text();
                        var V_Tarifa = $row.find("#tarifa").text();
                        console.log('NUEVA ENTRADA V_id_aux: ' + V_id_aux + 'V_sem: ' + V_sem + 'V_Perfil: ' + V_Perfil + 'V_sem: ' + V_sem + 'V_USU: ' + V_USU + 'V_Tarifa: ' + V_Tarifa + 'V_cid: ' + V_cid);
                        T_RECURSOS.push({
                            ID: V_id_aux,
                            PERFIL: V_Perfil,
                            USUARIO: V_USU,
                            SEMANA: V_sem,
                            JORNADAS: V_nuevas_jorn,
                            TARIFA: V_Tarifa,
                            ORDEN: V_cid
                        });
                    }
                    Fila_Totales();
                });
            }
            function Fila_Totales() {
                console.log(' Suma totales');
                $('.TOTALES').remove();
                //$('.INSERTAR_FILA_R').remove(); EN VEZ E BORRARLA Y AÑADIRLA VAMOS A INSERTAR UNA FILA
                for (var k = 0; k < T_ACUM.length; k++) {
                    T_ACUM[k].JORNADAS = 0;
                }
                var V_fila = 0; var V_total_dias = 0; var V_total_diasfila = 0; V_total_Coste = 0;
                var V_total_dias_plan = 0; var V_total_coste_plan = 0; // PENDIENTE DE AÑADIR CALCULO
                $('#TABLA_DATOS_PROYECTO_SEM_R tr').each(function (row, tr) {
                    var $row = $(this).closest('tr');
                    var V_ok = "1";
                    var I_cont = 0; var I = 0;
                    var V_tarifa = 0;
                    if (V_fila > 1 && V_ok == "1") {
                        $(this).find('td').each(function () {
                            if ($(this).hasClass("Esfuerzo")) {
                                var V_aux = $(this).attr('id');
                                str_index = V_aux.indexOf(".");
                                var V_semana = V_aux.substring(str_index + 1);
                                var V_anyo = V_semana.substring(0, 4);
                                var V_semana_aux = V_semana.substring(4);
                                var V_valor = $(this).find('.JORNADAS').val();
                                var V_valor = FormateaDecimalesPunto(V_valor);
                                if (V_fila == 2) {
                                    T_ACUM[I_cont].JORNADAS = parseFloat(V_valor);
                                }
                                else {
                                    T_ACUM[I_cont].JORNADAS = parseFloat(T_ACUM[I_cont].JORNADAS) + parseFloat(V_valor);
                                }
                                V_total_diasfila = parseFloat(V_total_diasfila) + parseFloat(V_valor);
                                I_cont = I_cont + 1;
                                I = I + 1;
                            }
                            if ($(this).hasClass("tarifa")) {
                                V_tarifa = $(this).find('div').text();
                                console.log(' V_tarifa0:' + V_tarifa);
                            }
                        });
                    }
                    //console.log(' V_total_diasfila:'+V_total_diasfila); console.log(' V_tarifa:'+V_tarifa);
                    V_total_dias = V_total_dias + V_total_diasfila;
                    V_total_Coste = V_total_Coste + V_total_diasfila * parseFloat(V_tarifa);
                    //console.log(' V_total_Coste:'+V_total_Coste);
                    V_total_diasfila = 0;
                    I_cont = 0;
                    V_fila = parseFloat(V_fila) + 1;
                });
                console.log(' V_total_Coste2:' + V_total_Coste);
                V_html = '<tr class="TOTALES"><td>TOTALES</td><td></td><td class = "TextC">' + FormateaImporte(V_total_dias) + '</td><td></td><td class = "TextC">' + FormateaImporte(V_total_Coste) + '<td></td></td>';
                //console.log('AÑADE TOTALES Y SUMA T_ACUM.length:' + T_ACUM.length);
                for (var i = 0; i < T_ACUM.length; i++) {
                    V_html = V_html + '<td class="Texto_tabla">' + FormateaImporte(T_ACUM[i].JORNADAS) + '</td>';
                    console.log(' T_ACUM[i].HORAS:' + T_ACUM[i].JORNADAS);
                }
                V_html = V_html + '</tr><tr class="TOTALES"><td>TOTALES PLAN A FECHA</td><td></td><td class = "TextC">' + V_total_dias_plan;
                V_html = V_html + '</td><td></td><td class = "TextC">' + FormateaImporte(V_total_coste_plan) + '<td></td></td></tr>';
                //V_html = V_html + '<tr class = "INSERTAR_FILA_R"><td><div class = "Insertar_filaR"><input type="image" title = "Insertar fila" src="../Images/Add_item.png" alt="Next week" width="15" height="15"></div></td></tr>';
                //$('#TABLA_DATOS_PROYECTO_SEM_R').append(V_html);
                var I_row = $('table#TABLA_DATOS_PROYECTO_SEM_R tr:last').index() - 1; // AÑADE LA FILA EN LA ANTERIOR A LA ULTIMA
                //console.log('I_row:' + I_row);
                //console.log('V_html:' + V_html);
                $(V_html).insertAfter('#TABLA_DATOS_PROYECTO_SEM_R tr:eq(' + I_row + ')');
            }
            function Pantalla_Tiempos() {
                var V_timeslot = "Q";
                var V_ancho = $(window).width();
                var V_margen = parseFloat(V_ancho) - 500;
                var V_alto = $(window).height();
                var V_altura = parseFloat(V_alto) - 38;
                $(".footer").css('top', V_altura + 'px');
                V_margen = V_margen / 2;
                var today = new Date();
                var V_htmlT = '<div class ="panel_tiemposH"><table class = "headt"><tr><td style="width:' + V_margen + 'px"></td>';
                var V_htmlT = V_htmlT + '<td style="vertical-align:bottom; float:right">';
                var V_htmlT = V_htmlT + '<input type="image" style:"float:right" class="Prev_week" src="../Images/Flechazul1.png" alt="Previos week" width="30" height="30">';
                var V_htmlT = V_htmlT + '<td class = "T_but_text" style="text-align:center ; width: 400px ; vertical-align:middle">';
                var dayOfWeekStartingSundayZeroIndexBased = today.getDay(); // 0 : Sunday ,1 : Monday,2,3,4,5,6 : Saturday
                var mondayOfWeek = new Date(today.getFullYear(), today.getMonth(), today.getDate() - today.getDay() + 1);
                var V_text = "Week from ";
                if (V_timeslot != "W") {
                    V_text = "From ";
                }
                    // CABECERA DE GESTION DE SEMANAS - SEMANA ACTUAL -
                var V_htmlT = V_htmlT + V_text + '<asp:Label id="Dia_inicio" style="text-align:center" runat ="server"></asp:Label> to ';
                var V_htmlT = V_htmlT + '<asp:Label id="Dia_fin" style="text-align:center" runat ="server"></asp:Label></td>';
                var V_htmlT = V_htmlT + '<td style="vertical-align:bottom; float:left">';
                var V_htmlT = V_htmlT + '<input type="image" class="Next_week" src="../Images/Flechazul2.png" alt="Next week" width="30" height="30"></td>';
                var V_htmlT = V_htmlT + '<td style="width:' + V_margen + 'px"></td></tr></table></div><hr><br>';
                var V_htmlT = V_htmlT + '<div class ="panel_tiemposT"><div style="width:100%; height:20px"><div class= "multi-div" style="float:right;"">';
                //var V_htmlT = V_htmlT + '<div id="SEM" class="box_sel" title="Semana">SEM</div><div id="QUI" title="Quincena" class="box_sel">QUI</div></div></div><br>';
                var V_htmlT = V_htmlT + '<div id="SEM" class="box_sel9" title="Semana">' + V_img_semana + '</div><div id="QUI" title="Quincena" class="box_sel9">' + V_img_quincena + '</div></div></div><br>';
                var V_htmlT = V_htmlT + '<div><table id="TABLA_HORAS"></table></div>';
                $('.Div_trabajo').empty();
                $('.Div_trabajo').append(V_htmlT);
                var V_htmlF = '<hr><div class="panel_pie"><button type="button" class="boton pie" id="Save">Guardar</button></div>';
                $('.footer').empty();
                $('.footer').append(V_htmlF);
                $('.box_sel').hover(
                    function () { // CUANDO ESTA ENCIMA
                        $(this).addClass('box_sel01');
                    },
                    function () { // CUANDO LO DEJA
                        //$(this).css("text-decoration-line", "initial");
                        $(this).removeClass('box_sel01');
                    });
                $("#SEM").on('click', function () {
                    console.log('SEMANA SEL');
                    $("#SEM").addClass('box_sel11');
                    $("#QUI").removeClass('box_sel11');
                    V_timeslot = "W";
                    console.log('V_timeslot SEM:' + V_timeslot);
                    informadias(mondayOfWeek, "W");
                    cargatabla(mondayOfWeek, "W");
                });
                $("#QUI").on('click', function () {
                    console.log('QUINCENA SEL');
                    $("#QUI").addClass('box_sel11');
                    $("#SEM").removeClass('box_sel11');
                    V_timeslot = "Q";
                    console.log('V_timeslot:' + V_timeslot);
                    var mm_ini = today.getMonth();
                    var aa_ini = today.getFullYear();
                    if (today.getDate() > 14) {
                        dd_ini = "15";
                        D_aux = new Date(aa_ini, mm_ini, 15);
                    }
                    else {
                        D_aux = new Date(aa_ini, mm_ini, 1);
                    }
                    informadias(D_aux, "Q");
                    cargatabla(D_aux, "Q");
                });
                // INFORMA CABECERA CON DETALLES DE DIAS DE LAS SEMANA
                var D_aux = new Date();
                if (V_timeslot == "W") {
                    informadias(mondayOfWeek, "W");
                    cargatabla(mondayOfWeek, "W");
                }
                else {
                    var mm_ini = today.getMonth();
                    var aa_ini = today.getFullYear();
                    if (today.getDate() > 14) {
                        dd_ini = "15";
                        D_aux = new Date(aa_ini, mm_ini, 15);
                    }
                    else {
                        D_aux = new Date(aa_ini, mm_ini, 1);
                    }
                    console.log('D_aux00000:' + D_aux + ' today:' + today);
                    informadias(D_aux, "Q");
                    cargatabla(D_aux, "Q");
                }
                $(".Prev_week").on('click', function () {
                    //console.log('CARGA PERIODO ANTERIOR INI, D_aux:' + D_aux);
                    console.log('Prev_week V_timeslot:' + V_timeslot);
                    if (V_timeslot == "W") {
                        D_aux.setDate(D_aux.getDate() - 7);
                        informadias(D_aux, "W");
                        cargatabla(D_aux, "W");
                    }
                    else {
                        dd_dia = D_aux.getDate();
                        if (dd_dia == '15') {
                            D_aux = new Date(D_aux.getFullYear(), D_aux.getMonth(), 1);
                        }
                        else {
                            var D_aux2 = new Date(D_aux.getFullYear(), D_aux.getMonth(), 0);
                            D_aux = new Date(D_aux2.getFullYear(), D_aux2.getMonth(), 15);
                        }
                        informadias(D_aux, "Q");
                        cargatabla(D_aux, "Q");
                    }
                    //console.log('CARGA PERIODO ANTERIOR FIN:' + D_aux);
                });
                $(".Next_week").on('click', function () {
                    if (V_timeslot == "W") {
                        D_aux.setDate(D_aux.getDate() + 7);
                        informadias(D_aux, "W");
                        cargatabla(D_aux, "W");
                    }
                    else {
                        dd_dia = D_aux.getDate();
                        if (dd_dia == '15') {
                            var D_aux2 = new Date();
                            console.log('D_aux0:' + D_aux);
                            D_aux2.setDate(D_aux.getDate() + 20);
                            console.log('D_aux2:' + D_aux2);
                            D_aux = new Date(D_aux.getFullYear(), D_aux.getMonth() + 1, 1);
                            console.log('D_aux:' + D_aux);
                        }
                        else {
                            D_aux = new Date(D_aux.getFullYear(), D_aux.getMonth(), 15);
                            console.log('D_aux:' + D_aux);
                        }
                        informadias(D_aux, "Q");
                        cargatabla(D_aux, "Q");
                    }
                    //console.log('CARGA PERIODO SIGUIENTE:'+D_aux);
                });
            }
            function informadias(dia, Tipo) {
                //console.log('INFORMA FECHAS QUINCENA, dia:' + dia + ' Tipo:' + Tipo);
                if (Tipo == "W") {
                    var mondayOfWeek = new Date(dia.getFullYear(), dia.getMonth(), dia.getDate() - dia.getDay() + 1);
                    var tuesdayOfWeek = new Date(dia.getFullYear(), dia.getMonth(), dia.getDate() - dia.getDay() + 2);
                    var weddayOfWeek = new Date(dia.getFullYear(), dia.getMonth(), dia.getDate() - dia.getDay() + 3);
                    var thursdayOfWeek = new Date(dia.getFullYear(), dia.getMonth(), dia.getDate() - dia.getDay() + 4);
                    var fridayOfWeek = new Date(dia.getFullYear(), dia.getMonth(), dia.getDate() - dia.getDay() + 5);
                    var dd_l = mondayOfWeek.getDate();
                    var dd_m = tuesdayOfWeek.getDate();
                    var dd_x = weddayOfWeek.getDate();
                    var dd_j = thursdayOfWeek.getDate();
                    var mm_l = mondayOfWeek.getMonth() + 1;
                    var yyyy_l = mondayOfWeek.getFullYear();
                    var dd_v = fridayOfWeek.getDate();
                    var mm_v = fridayOfWeek.getMonth() + 1;
                    var yyyy_v = fridayOfWeek.getFullYear();
                    //console.log('FECHA: ' + mondayOfWeek);
                    var v_monday = dd_l + '/' + mm_l + '/' + yyyy_l;
                    var v_friday = dd_v + '/' + mm_v + '/' + yyyy_v;
                    $("#Dia_inicio").html(v_monday);
                    $("#Dia_fin").html(v_friday);
                    // INICIALIZA TABLA
                    $("#TABLA_HORAS").empty();
                    var V_html = '<tr class="T_header_table" data-level="header"><td width style="background-color:white"><td width="20px" style="background-color:white"></td></td>';
                    var V_html = V_html + '<td style="text-align:center">LUNES</td><td style="text-align:center">MARTES</td>';
                    var V_html = V_html + '<td style="text-align:center">MIERCOLES</td><td style="text-align:center">JUEVES</td>';
                    var V_html = V_html + '<td style="text-align:center">VIERNES</td></tr>';
                    var V_html = V_html + '<tr class="T_header2" data-level="header"><td style="background-color:white"></td><td></td>';
                    var V_html = V_html + '<td class="Tabla_con_bordes" style="text-align:center">' + parseInt(dd_l) + '</td><td class="Tabla_con_bordes" style="text-align:center">';
                    var V_html = V_html + parseInt(dd_m) + '</td><td class="Tabla_con_bordes" style="text-align:center">' + parseInt(dd_x) + '</td>';
                    var V_html = V_html + '<td class="Tabla_con_bordes" style="text-align:center">' + parseInt(dd_j) + '</td><td class="Tabla_con_bordes" style="text-align:center">';
                    var V_html = V_html + parseInt(dd_v) + '</td>';
                }
                if (Tipo == "Q") {
                    // NUEVA PANTALLA QUINCENA
                    var dd_ini = "1"; var dd_fin = "14";
                    if (dia.getDate() > 14) {
                        dd_ini = "15";
                        var D_aux = new Date(dia.getFullYear(), dia.getMonth() + 1, 0);
                        dd_fin = D_aux.getDate();
                    }
                    else {
                        dd_ini = "1";
                        dd_fin = "15";
                    }
                    var v_inicio = dd_ini + '/' + dia.getMonth() + '/' + dia.getFullYear();
                    var v_mes = dia.getMonth() + 1; if (v_mes < 10) { v_mes = "0" + v_mes; }
                    var v_inicio = dd_ini + "/" + v_mes + "/" + dia.getFullYear();
                    var v_fin = dd_fin + '/' + v_mes + '/' + dia.getFullYear();
                    $("#Dia_inicio").html(v_inicio);
                    $("#Dia_fin").html(v_fin);
                    // INICIALIZA TABLA
                    $("#TABLA_HORAS").empty();
                    // PRIMERO INFORMA LAS SEMANAS 
                    var Dia_ini00 = new Date(dia.getFullYear(), parseFloat(dia.getMonth()), dd_ini);
                    Sem_ini = Calcula_semana(Dia_ini00); // REINICIA EL VALOR DE LA SEMANA INICIAL
                    var V_sem_ant = Sem_ini;
                    var V_html = '<tr class="T_header_table" data-level="header"><td width="180px" style="background-color:white" ></td><td width="20px" style="background-color:white"></td>';
                    var D_date_aux = new Date(Dia_ini00); var V_dias_semana = 0;
                    var V_fin = parseFloat(dd_fin) + 1; var V_ini = "X";
                    for (var i = dd_ini; i < V_fin; i++) {
                        var V_dia_num = D_date_aux.getDay();
                        Sem_ini = Calcula_semana(D_date_aux);
                        if (V_dia_num != "0" && V_dia_num != "6") {  // SE SALTA SABADOS Y DOMINGOS
                            if (V_dia_num == "1" && V_ini != "X")  // CIERRA LOS LUNES
                            {
                                V_html = V_html + '<td class="Tabla_con_bordes" style="text-align:center" colspan="' + V_dias_semana + '"> WEEK' + V_sem_ant + '</td>';
                                V_sem_ant = Sem_ini;
                                V_dias_semana = 0;
                            }
                            V_dias_semana = V_dias_semana + 1;
                            V_ini = "";
                        }
                        D_date_aux.setDate(D_date_aux.getDate() + 1);
                    }
                    V_html = V_html + '<td class="Tabla_con_bordes" style="text-align:center" colspan="' + V_dias_semana + '"> WEEK' + V_sem_ant + '</td></tr>';
                    // DESPUES INFORMA LOS DIAS DESDE d_ini a V_fin
                    V_html = V_html + '<tr class="T_header_table" data-level="header"><td width style="background-color:white" >TASKS</td><td style="background-color:white"></td>';
                    var D_date_aux = new Date(Dia_ini00);
                    for (var i = dd_ini; i < V_fin; i++) {
                        var V_dia_sem = TextoDiaSemana(D_date_aux.getDay(), 1);
                        var V_dia_num = D_date_aux.getDay();
                        if (V_dia_num != "0" && V_dia_num != "6") {  // SE SALTA SABADOS Y DOMINGOS
                            var V_aux = V_dia_sem + ". " + i;
                            var v_mes = D_date_aux.getMonth() + 1;
                            var V_date_aux_F = D_date_aux.getDate() + "/" + v_mes + "/" + D_date_aux.getFullYear();
                            V_html = V_html + '<td class="Tabla_con_bordes" style="text-align:center" title="' + V_date_aux_F + '">' + V_aux + '</td>';
                        }
                        D_date_aux.setDate(D_date_aux.getDate() + 1);
                    }
                }
                V_html = V_html + '</tr>';
                $('#TABLA_HORAS').append(V_html);
            }
            $('.T_Propuesta2').hover(function () {
                console.log('Mouse over');
                $(this).css('color', 'red');
                $(this).attr("title", "Las horas aprobadas no pueden ser modificadas. Contacte con el Coordinador o Project Manager para que las desbloquee.");
            }, function () {
                $(this).css('color', '');
            });
            function cargatabla(dialunes, Tipo) {
                var aData = []; aData[0] = dialunes;
                var jsonData = JSON.stringify({ aData: aData });
                //      url: "../js/Timesheet.asmx/LeerTickets2",
                // TAREAS IMPUTACION
                var T_TAREAS = [];
                T_TAREAS.push({ Num_tarea: "TICKET 90", Tipof: "T" });
                T_TAREAS.push({ Num_tarea: "PROJECT 91", Tipof: "PR" });
                T_TAREAS.push({ Num_tarea: "PROJECT 92", Tipof: "PR" });
                T_TAREAS.push({ Num_tarea: "RESOLUTOR GROUP 92", Tipof: "GR" });
                T_TAREAS.push({ Num_tarea: "OTHER TASKS", Tipof: "GES" });
                // HORAS IMPUTADAS
                var T_TIEMPOS = [];
                T_TIEMPOS.push({ Num_tarea: "TICKET 90", Fecha: "16/09/2020", Horas: "2,61", Aprobl: "" });
                T_TIEMPOS.push({ Num_tarea: "PROJECT 91", Fecha: "16/09/2020", Horas: "2,71", Aprobl: "X" });
                T_TIEMPOS.push({ Num_tarea: "TICKET 90", Fecha: "24/09/2020", Horas: "2,5", Aprobl: "X" });
                T_TIEMPOS.push({ Num_tarea: "TICKET 90", Fecha: "23/09/2020", Horas: "2,5", Aprobl: "" });
                T_TIEMPOS.push({ Num_tarea: "TICKET 90", Fecha: "22/09/2020", Horas: "2,5", Aprobl: "" });
                T_TIEMPOS.push({ Num_tarea: "TICKET 90", Fecha: "21/09/2020", Horas: "7,1", Aprobl: "X" });
                //T_TIEMPOS.push({Num_tarea: "TICKET 90",Fecha: "20/09/2020", Horas: "7,22", Aprobl: "X"});
                T_TIEMPOS.push({ Num_tarea: "PROJECT 92", Fecha: "24/09/2020", Horas: "6", Aprobl: "" });
                T_TIEMPOS.push({ Num_tarea: "OTHER TASKS", Fecha: "28/09/2020", Horas: "8", Aprobl: "X" });
                var T_TIMES = [];
                var V_html = '<tr class="T_header_table">';
                var dd_ini = "1";
                var mm_ini = dialunes.getMonth() + 1;
                var aa_ini = dialunes.getFullYear();
                var D_fin = new Date(dialunes);
                if (Tipo == "W") {
                    dd_ini = dialunes.getDate();
                    D_fin.setDate(D_fin.getDate() + 6);
                }
                else if (Tipo == "Q") {
                    // NUEVA PANTALLA QUINCENA
                    dd_ini = "1"; var dd_fin = "15";
                    D_fin = new Date(aa_ini, mm_ini - 1, 15);
                    if (dialunes.getDate() > 14) { // A CAMBIARE AL NAVEGAR A PERIODOS ANTERIORES O POSTERIORES
                        dd_ini = "15";
                        var D_fin = new Date(aa_ini, mm_ini, 0);
                    }
                }
                dd_fin = D_fin.getDate();
                var Dia_ini00 = new Date(aa_ini, parseFloat(mm_ini) - 1, dd_ini);
                const oneDay = 1000 * 60 * 60 * 24;
                var V_days2 = D_fin - Dia_ini00;
                V_days2 = V_days2 / oneDay;
                //console.log('V_days2:'+V_days2+' Dia_ini00:'+Dia_ini00+ ' D_fin:'+D_fin+Tipo);
                // PRIMERO INFORMA LAS SEMANAS 
                for (var i = 0; i < T_TAREAS.length; i++) {
                    var D_date_aux = new Date(Dia_ini00);
                    var V_class = "T_Tipo_" + T_TAREAS[i].Tipof;
                    V_html = V_html + '<td class="' + V_class + '">' + T_TAREAS[i].Num_tarea + '</td><td><div>';
                    V_html = V_html + '<div class="Rellena">' + V_img_gener + '</div></td>';
                    console.log('dd_ini:' + dd_ini + ' dd_fin:' + dd_fin);
                    //var V_dias = dd_fin - dd_ini + 1;
                    var V_dias = Math.round((D_fin - dialunes) / (1000 * 60 * 60 * 24)) + 1;
                    //console.log('V_dias:'+V_dias);
                    for (var j = 0; j < V_dias; j++) {
                        //console.log('D_date_aux:'+D_date_aux);
                        var V_dia_sem = D_date_aux.getDay(); // SI DOMINGO SUMA UNO
                        if (V_dia_sem != "0" && V_dia_sem != "6") // SE SALTA SABADOS Y DOMINGOS
                        {
                            var v_mes = D_date_aux.getMonth() + 1;
                            if (v_mes < 10) { v_mes = "0" + v_mes; }
                            var V_date_aux = D_date_aux.getDate() + "/" + v_mes + "/" + D_date_aux.getFullYear();
                            // COMPRUEBA SI HAY ENTRADA DE TIEMPOS EN LA TABLA PARA ESA TAREA Y FECHA
                            //console.log('T_TAREAS[i].Num_tarea:'+ T_TAREAS[i].Num_tarea+ 'V_date_aux:'+V_date_aux);
                            var returnedData = $.grep(T_TIEMPOS, function (element) {
                                return ((element.Num_tarea == T_TAREAS[i].Num_tarea && element.Fecha == V_date_aux));
                            });
                            if (returnedData.length > 0) {
                                if (returnedData[0].Aprobl != "X") {
                                    V_htmlpl = '<input class= "T_Propuesta TIEMPO Horas_Suma SUMA" type="text"';
                                }
                                else {
                                    V_htmlpl = '<input class= "T_Propuesta2 TIEMPO Horas_Suma SUMA" type="text" readonly';
                                }
                                //console.log('returnedData[0].Horas:'+ returnedData[0].Horas);
                                var V_aux = returnedData[0].Horas.replace(',', '.');
                                var V_aux0 = Cambio_formato_hora(V_aux, 1);
                                //console.log('V_aux0:'+ V_aux0+' V_aux:'+ V_aux);
                                V_html = V_html + '<td id = ' + i + 'D' + j + ' class = "EH" dia_sem = "' + V_dia_sem + '">' + V_htmlpl + ' value="' + V_aux0 + '" style="width: 100%"></td>';

                            }
                            else {
                                V_html = V_html + '<td id = ' + i + 'D' + j + ' class = "EH" dia_sem = "' + V_dia_sem + '"><input class= "T_Propuesta TIEMPO Horas_Suma SUMA" type="text"value="" style="width: 100%"></td>';
                            }
                        }
                        D_date_aux.setDate(D_date_aux.getDate() + 1);
                    }
                    V_html = V_html + '</tr>';
                }
                V_html = V_html + '</tr>';
                $('#TABLA_HORAS').append(V_html);
                //$(".EH").css({ 'padding': 0  });
                var V_aux = $("#0D1").outerWidth(true); v_aux = (parseFloat(V_aux) - 40) / 2;
                console.log('ANCHO!!!!!!!!!!!:' + $("#0D1").outerWidth(true));
                $(".EH").css({
                    'padding-left': v_aux,
                    'padding-right': v_aux
                });
                console.log('v_aux:' + v_aux);
                console.log('ANCHO3!!!!!!!!!!!:' + $("#0D1").outerWidth(true));
                var V_aux = $("#0D1").outerWidth(true); v_aux = (parseFloat(V_aux) - 40) / 2;
                console.log('ANCHO!!!!!!!!!!!:' + $("#0D1").outerWidth(true));
                $(".EH").css({
                    'padding-left': v_aux,
                    'padding-right': v_aux
                });
                console.log('ANCHO4!!!!!!!!!!!:' + $("#0D1").outerWidth(true));
                sumhorasQ(dd_ini, dd_fin);
                $(".Porcentage").on('click', function () {
                    console.log('RELLENA ENTRADAS POR PORCENTAGE');
                });
                $(".Rellena").on('click', function () {
                    var $row0 = $(this).closest('tr');
                    var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                    var V_left = $(this).offset().left; V_left = V_left + 20;
                    var V_top = $(this).offset().top;
                    var V_altura = 110;
                    //console.log('V_top:'+ V_top+ ' V_left:'+V_left);
                    var V_html = "";
                    V_html = V_html + '<tr id="1"><td style="width:140px; text-align: left" class ="Seleccion">';
                    V_html = V_html + '<div style="height: 25px; padding-top:5px; background: #F7F7F7">Rellenar resto</div></td></tr>';
                    V_html = V_html + '<tr id="2"><td style="width:140px; text-align: left">';
                    V_html = V_html + '<div class="multi-div"><div id=Porcen" style="height: 25px; padding-top:5px; background: #F7F7F7">Rellenar %</div>';
                    V_html = V_html + '<div style="padding-left:4px"><input class= "Porcent" type="text" value="" style="width: 20px"></div>';
                    V_html = V_html + '<div id = "RunPorc"  style=" margin-top: 5px; padding-left:4px">' + V_img_runBlue + '</div></div></td></tr>';
                    V_html = V_html + '<tr id="3"><td style="width:140px; text-align: left" class ="Seleccion">';
                    V_html = V_html + '<div style="height: 25px; padding-top:5px; background: #F7F7F7">Borrar entradas</div></td></tr>';
                    $("#MENU_SEL").empty();
                    $("#MENU_SEL").append(V_html);
                    $('.Seleccion').hover(
                        function () { // CUANDO ESTA ENCIMA
                            $(this).css("text-decoration-line", "underline");
                        },
                        function () { // CUANDO LO DEJA
                            $(this).css("text-decoration-line", "initial");
                        });
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    $('#popup_seleccion').fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left,
                        width: '140px',
                        height: V_altura,
                    });
                    $(".modal-overlay").click(function () {
                        console.log('Close dialog: ');
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('.Seleccion').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_sele = $row.attr("id");
                        //console.log('V_sele:'+ V_sele);
                        if (V_sele == "1") {
                            console.log('RELLENA ENTRADAS RESTO');
                            var rowCount = $('#TABLA_HORAS tr').length;
                            var V_aux = rowCount - 1;
                            $row0.find('td').each(function () {
                                if ($(this).index() > 1) {
                                    var V_valor0 = $(this).find('.Horas_Suma').val();
                                    var V_valorTT = $('#TABLA_HORAS tr:eq(' + V_aux + ') > td:eq(' + $(this).index() + ')').text();
                                    var V_aux0 = V_aux - 1;
                                    var V_valorT = $('#TABLA_HORAS tr:eq(' + V_aux0 + ') > td:eq(' + $(this).index() + ')').text();
                                    //console.log('V_valorT:' + V_valorT + ' V_valorTT:' + V_valorTT);
                                    var V_valorD = Cambio_formato_hora(V_valorT, '2');
                                    var V_valorDT = Cambio_formato_hora(V_valorTT, '2');
                                    var V_dif = parseFloat(V_valorDT) - parseFloat(V_valorD);
                                    if (V_dif > 0) {
                                        var V_valorN = Cambio_formato_hora(V_dif, '1');
                                        $(this).find('.Horas_Suma').val(V_valorN);
                                    }
                                }
                            });
                        }
                        if (V_sele == "3") {
                            console.log('BORRA ENTRADAS');
                            $row0.find('td').each(function () {
                                $(this).find('.Horas_Suma').val("");
                            });
                        }
                        sumhorasQ(dd_ini, dd_fin);
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                    $('#RunPorc').on('click', function (e) {
                        var $row = $(this).closest('tr');
                        var V_Porcentaje = $row.find('.Porcent').val();
                        //console.log('V_Porcentaje:'+V_Porcentaje);
                        if (!isNaN(V_Porcentaje) && V_Porcentaje > 101) { console.log('VALOR PORCENTAJE INCORRECTO'); }
                        else {
                            var rowCount = $('#TABLA_HORAS tr').length;
                            var V_aux = rowCount - 1;
                            $row0.find('td').each(function () {
                                //console.log('FILAS A PORCENTAJE');
                                if ($(this).index() > 1) {
                                    var V_valor0 = $(this).find('.Horas_Suma').val();
                                    var V_valorTT = $('#TABLA_HORAS tr:eq(' + V_aux + ') > td:eq(' + $(this).index() + ')').text();
                                    var V_aux0 = V_aux - 1;
                                    var V_valorT = $('#TABLA_HORAS tr:eq(' + V_aux0 + ') > td:eq(' + $(this).index() + ')').text();
                                    //console.log('V_valorT:' + V_valorT + ' V_valorTT:' + V_valorTT);
                                    var V_valorD = Cambio_formato_hora(V_valorT, '2');
                                    var V_valorDT = Cambio_formato_hora(V_valorTT, '2');
                                    var V_dif = parseFloat(V_valorDT) - parseFloat(V_valorD);
                                    V_dif = V_dif * parseFloat(V_Porcentaje) / 100;
                                    if (V_dif > 0) {
                                        var V_valorN = Cambio_formato_hora(V_dif, '1');
                                        $(this).find('.Horas_Suma').val(V_valorN);
                                    }
                                }
                            });
                            sumhorasQ(dd_ini, dd_fin);
                        }
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                        });
                    });
                });
                $(".Rellena2").on('click', function () {
                    console.log('RELLENA ENTRADAS RESTO');
                    var $row = $(this).closest('tr');
                    var rowCount = $('#TABLA_HORAS tr').length;
                    var V_aux = rowCount - 1;
                    $row.find('td').each(function () {
                        if ($(this).index() > 1) {
                            var V_valor0 = $(this).find('.Horas_Suma').val();
                            //console.log('V_valor0:' + V_valor0);
                            //console.log('$(this).index():' + $(this).index()+' V_aux:'+V_aux);
                            //var V_valorT = $('#TABLA_HORAS tr:eq(' + rowCount + ') > td:eq(0)').text();
                            var V_valorTT = $('#TABLA_HORAS tr:eq(' + V_aux + ') > td:eq(' + $(this).index() + ')').text();
                            var V_aux0 = V_aux - 1;
                            var V_valorT = $('#TABLA_HORAS tr:eq(' + V_aux0 + ') > td:eq(' + $(this).index() + ')').text();
                            console.log('V_valorT:' + V_valorT + ' V_valorTT:' + V_valorTT);
                            var V_valorD = Cambio_formato_hora(V_valorT, '2');
                            var V_valorDT = Cambio_formato_hora(V_valorTT, '2');
                            console.log('V_valorD:' + V_valorD + ' V_valorDT:' + V_valorDT);
                            var V_dif = parseFloat(V_valorDT) - parseFloat(V_valorD);
                            if (V_dif > 0) {
                                var V_valorN = Cambio_formato_hora(V_dif, '1');
                                console.log('V_valorN:' + V_valorN);
                                $(this).find('.Horas_Suma').val(V_valorN);
                            }
                        }
                    });
                });
                $(".TIEMPO").on('click', function () { // SI ESTA VACIO INFORMA CERO 
                    var V_valor = this.value;
                    console.log('TIEMPO CLICK, V_valor:' + V_valor + ".");
                    if (V_valor == "") {
                        this.value = "00:00";
                        this.setSelectionRange(0, 1);
                    }
                });
                $(".TIEMPO").on("keyup", function (event) {
                    var V_entrada = event.which;  // NUMERICO DE 48 A 59 Y 16 para :
                    var V_cursor = this.selectionStart;
                    console.log('FORMATEA2 A HH:MM, VALOR: ' + this.value + ' CURSOR en: ' + V_cursor);
                    var V_valor = this.value.replace(/[^0-9:]/g, '');
                    this.value = V_valor;
                    this.setSelectionRange(V_cursor, V_cursor);
                    //this.setSelectionRange(V_cursor, V_cursor+1);
                    // SI EL PRIMER CARACTER ES : LO ELIMINA
                    if (V_valor == "" || V_valor == ":") {
                        this.value = "00:00"; console.log('CASO 0');
                        this.setSelectionRange(0, 1);
                        console.log('CASO : Vacio o solo :');
                    }
                    else if (V_valor.substring(0, 1) == ":") {
                        console.log('CASO :XX');
                        this.value = V_valor.substring(1, V_valor.length - 1);
                        this.setSelectionRange(0, 1);
                    }
                    else if (V_valor.indexOf("::") >= 0)  // CASO DE ENTRADA MANUAL DE :: SE ELIMINA UNO
                    {
                        this.value = this.value.replace('::', ':');
                    }
                    else if (V_valor.indexOf(":") < 0) // SI NO HAY :
                    {
                        if (V_valor.length == 1)    // CASO "1"
                        {
                            V_valor = V_valor + "0:00"; console.log('CASO 1');
                            this.value = V_valor;
                            this.setSelectionRange(1, 2);
                        }
                        else
                            if (V_valor.length == 2) // CASO "01"
                            {
                                V_valor = V_valor + ":00"; console.log('CASO 01');
                                this.value = V_valor;
                                this.setSelectionRange(3, 4);
                            }
                            else  // CASO "011"
                            {
                                V_valor = V_valor.substring(0, 2) + ":00"; console.log('CASO 011');
                                this.value = V_valor;
                                this.setSelectionRange(2, 3);
                            }
                    }
                    else {
                        var V_aux2 = V_valor.substring(V_valor.indexOf(":") + 1, V_valor.length);
                        console.log('V_aux2:' + V_aux2);
                        if (V_aux2.indexOf(":") >= 0) {
                            var V_hora = V_valor.substring(0, V_valor.indexOf(":"));// CASO DOBLE :  XX:YY:ZZ
                            var V_min = V_aux2.substring(1, 3);
                            console.log('V_hora: ' + V_hora + 'V_aux2: ' + V_aux2 + ' V_min:' + V_min);
                            this.value = V_hora + ":" + V_min;
                            console.log('CASO XX:YY:ZZ ' + this.value);
                            this.setSelectionRange(1, 2);
                        }
                        else {
                            V_valor = this.value;
                            var V_hora = V_valor.substring(0, V_valor.indexOf(":"));
                            var V_min = V_valor.substring(V_valor.indexOf(":") + 1, V_valor.length);
                            if (V_min.length > 2) { V_min = V_min.substring(0, 2); }
                            if (V_hora.length > 2) { V_hora = V_hora.substring(0, 2); }
                            this.value = V_hora + ":" + V_min;
                            console.log('V_hora:' + V_hora + ' V_min:' + V_min);
                            if (V_cursor == "1") // EL PRIMER CARACTER   
                            {
                                if (V_hora.length > 1) {
                                    this.setSelectionRange(1, 1);
                                }
                                else {
                                    this.setSelectionRange(1, 1);
                                }
                            }
                            else if (V_cursor == "2") // ELIMINA CONTENIDO HASTA EL PUNTO Y SALTA A LA POSICION 3 DESPUES DEL PUNTO
                            {
                                //var I_aux = this.value.indexOf(":");
                                if (this.value.indexOf(":") == "2") {
                                    //this.value = this.value.substring(0, 2) + ":" + V_min;
                                    this.setSelectionRange(3, 4); // selection (start, end)
                                    console.log('UNORRR');
                                }
                                else {
                                    //this.value = this.value.substring(0, 2) + ":" + V_min;  // Caso 123:45
                                    this.setSelectionRange(2, 3); // selection (start, end)
                                    console.log('Caso 123:45:' + this.value);
                                }
                            }
                            else if (V_cursor == "3") // ELIMINA CONTENIDO HASTA EL PUNTO Y SALTA A LA POSICION 3 DESPUES DEL PUNTO
                            {
                                if (this.value.indexOf(":") == "3") {   // SE IGNORA
                                    //this.value = this.value.substring(0, 2) + ":" + V_min;
                                }
                            }
                            else if (V_cursor == "4") {
                                this.setSelectionRange(4, 5);
                            }
                        }
                        console.log('RESULTADO this.value: ' + this.value);
                    }
                });
                FormatTable();
                $(".myreports").on('click', function () {
                    window.location = '../area_usuarios/Favoritos.aspx';
                });
                $(".back").on('click', function () {
                    if (V_mod == "X") {
                        console.log('SALIDA SIN GRABAR MODIFICACIONES ');
                        // LLAMAR DIALOGO AVISO DE SALIDA SIN GRABAR MODIFICACIONES
                        salida();
                        V_salida = "2";
                    }
                    else {
                        console.log('BACK CLICK ');
                        window.location = '../area_usuarios/Home.aspx';
                    }
                });
                $(".SUMA").change(function () {
                    //avoid page reload
                    console.log('SUMA');
                    V_mod = "X";
                    //e.preventDefault();
                    sumhorasQ(dd_ini, dd_fin);
                    return false;
                });
            }
            function sumhoras(HorasTl0, HorasTm0, HorasTx0, HorasTj0, HorasTv0) {
                var sum_horas = 0;
                var sum_min = 0;
                var fila = 0;
                V_horas_sobrepasadas = "";
                V_horas_OK = "X";
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    fila = fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (fila > 3 && v_aux != "TOTAL") {
                        var v_valor = $(tr).find('.Horas_L').val();
                        var valor_h = parseFloat(v_valor.replace(',', '.'));
                        if (!isNaN(valor_h) && valor_h.length != 0) {
                            sum_horas += parseFloat(valor_h);
                        }
                    }
                });
                var V_Horas = Math.floor(parseFloat(sum_horas));
                var V_Minutos = sum_horas * 100 - V_Horas * 100;
                V_Minutos1 = parseInt(V_Minutos * 6 / 10);
                //if (V_Horas < 10) { V_Horas = "0" + V_Horas; }
                if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                var V_total_h = V_Horas + ":" + V_Minutos1;
                if (sum_horas < HorasTl0) { V_horas_OK = ""; $("#totalh_lunes").css('color', 'blue'); $("#totalm_lunes").css('color', 'red'); }
                if (sum_horas == HorasTl0) { $("#totalh_lunes").css('color', 'green'); $("#totalm_lunes").css('color', 'green'); }
                if (sum_horas > HorasTl0) {
                    $("#totalh_lunes").css('color', 'red');
                    V_horas_sobrepasadas = "X";
                }
                $("#totalh_lunes").html(V_total_h);
                var sum_horas = 0; fila = 0;
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    fila = fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (fila > 3 && v_aux != "TOTAL") {
                        var v_valor = $(tr).find('.Horas_M').val();
                        //console.log('SUMHORAS, v_aux: ' + v_aux);
                        //console.log('SUMHORAS, Horas_M: ' + v_valor);
                        var valor_h = parseFloat(v_valor.replace(',', '.'));
                        if (!isNaN(valor_h) && valor_h.length != 0) {
                            sum_horas += parseFloat(valor_h);
                        }
                    }
                });
                var V_Horas = Math.floor(parseFloat(sum_horas));
                var V_Minutos = sum_horas * 100 - V_Horas * 100;
                V_Minutos1 = parseInt(V_Minutos * 6 / 10);
                //if (V_Horas < 10) { V_Horas = "0" + V_Horas; }
                if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                var V_total_h = V_Horas + ":" + V_Minutos1;
                if (sum_horas < HorasTm0) { V_horas_OK = ""; $("#totalh_martes").css('color', 'red'); $("#totalm_martes").css('color', 'red'); }
                if (sum_horas == HorasTm0) { $("#totalh_martes").css('color', 'green'); $("#totalm_martes").css('color', 'green'); }
                if (sum_horas > HorasTm0) { $("#totalh_martes").css('color', 'blue'); $("#totalm_martes").css('color', 'blue'); V_horas_sobrepasadas = "X"; }
                $("#totalh_martes").html(V_total_h);
                var sum_horas = 0; fila = 0;
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    fila = fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (fila > 3 && v_aux != "TOTAL") {
                        var valor_h = $(tr).find('.Horas_X').val();
                        if (!isNaN(valor_h) && valor_h.length != 0) {
                            sum_horas += parseFloat(valor_h);
                        }
                    }
                });
                var V_Horas = Math.floor(parseFloat(sum_horas));
                var V_Minutos = sum_horas * 100 - V_Horas * 100;
                V_Minutos1 = parseInt(V_Minutos * 6 / 10);
                if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                var V_total_h = V_Horas + ":" + V_Minutos1;
                if (sum_horas < HorasTx0) { V_horas_OK = ""; $("#totalh_mierc").css('color', 'red'); $("#totalm_mierc").css('color', 'red'); }
                if (sum_horas == HorasTx0) { $("#totalh_mierc").css('color', 'green'); $("#totalm_mierc").css('color', 'green'); }
                if (sum_horas > HorasTx0) { $("#totalh_mierc").css('color', 'blue'); $("#totalm_mierc").css('color', 'blue'); V_horas_sobrepasadas = "X"; }
                $("#totalh_mierc").html(V_total_h);
                var sum_horas = 0; fila = 0;
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    fila = fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (fila > 3 && v_aux != "TOTAL") {
                        var valor_h = $(tr).find('.Horas_J').val();
                        if (!isNaN(valor_h) && valor_h.length != 0) {
                            sum_horas += parseFloat(valor_h);
                        }
                    }
                });
                var V_Horas = Math.floor(parseFloat(sum_horas));
                var V_Minutos = sum_horas * 100 - V_Horas * 100;
                V_Minutos1 = parseInt(V_Minutos * 6 / 10);
                if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                var V_total_h = V_Horas + ":" + V_Minutos1;
                if (sum_horas < HorasTj0) { V_horas_OK = ""; $("#totalh_jueves").css('color', 'red'); $("#totalm_jueves").css('color', 'red'); }
                if (sum_horas == HorasTj0) { $("#totalh_jueves").css('color', 'green'); $("#totalm_jueves").css('color', 'green'); }
                if (sum_horas > HorasTj0) { $("#totalh_jueves").css('color', 'blue'); $("#totalm_jueves").css('color', 'blue'); V_horas_sobrepasadas = "X"; }
                $("#totalh_jueves").html(V_total_h);
                var sum_horas = 0; fila = 0;
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    fila = fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (fila > 3 && v_aux != "TOTAL") {
                        var valor_h = $(tr).find('.Horas_V').val();
                        if (!isNaN(valor_h) && valor_h.length != 0) {
                            sum_horas += parseFloat(valor_h);
                        }
                    }
                });
                var V_Horas = Math.floor(parseFloat(sum_horas));
                var V_Minutos = sum_horas * 100 - V_Horas * 100;
                V_Minutos1 = parseInt(V_Minutos * 6 / 10);
                if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                var V_total_h = V_Horas + ":" + V_Minutos1;
                if (sum_horas < HorasTv0) { V_horas_OK = ""; $("#totalh_viernes").css('color', 'red'); $("#totalm_viernes").css('color', 'red'); }
                if (sum_horas == HorasTv0) { $("#totalh_viernes").css('color', 'green'); $("#totalm_viernes").css('color', 'green'); }
                if (sum_horas > HorasTv0) { $("#totalh_viernes").css('color', 'blue'); $("#totalm_viernes").css('color', 'blue'); V_horas_sobrepasadas = "X"; }
                $("#totalh_viernes").html(V_total_h);
            }
            function sumhorasQ(dd_ini, dd_fin) {
                console.log('SUMA HORAS');
                // HORARIO TEORICO
                var T_HORARIO = [];
                T_HORARIO = ["0.00", "8.5", "8.5", "8.5", "8.5", "6", "0.00"];
                var sum_horas = 0;
                var sum_min = 0;
                var V_fila = 0;
                V_horas_sobrepasadas = "";
                V_horas_OK = "X";
                var T_Suma = [];
                var T_DiaS = []; var v_valor = 0;
                var V_ini0 = "X";
                $('.FILA_TOTALES').closest('tr').remove();
                $('#TABLA_HORAS tr').each(function (row, tr) {
                    V_fila = V_fila + 1;
                    var v_aux = $(tr).find('td:eq(0)').text();
                    if (V_fila > 2 && v_aux != "TOTAL") {
                        var V_col = 1;
                        $(tr).find('td').each(function () {
                            if (V_col > 2) {
                                var V_col_aux = V_col - 3;
                                var V_valor = 0;
                                var v_valor0 = $(this).find('.Horas_Suma').val();
                                console.log('v_valor0:' + v_valor0);
                                v_valor0 = Cambio_formato_hora(v_valor0, 2);
                                //console.log('SUMHORAS, v_valor0: ' + v_valor0);
                                if (!isNaN(v_valor0) && v_valor0.length != 0) {
                                    //    if (v_valor0.length != 0) {
                                    V_valor = v_valor0;
                                }
                                //console.log('SUMHORAS, v_valor02: ' + parseFloat(v_valor)+ 'V_col:'+V_col);
                                if (V_ini0 == "X") {
                                    T_Suma[V_col_aux] = parseFloat(V_valor);
                                }
                                else {
                                    //console.log('SUMHORAS, v_valor suma ANTES: ' + T_Suma[V_col_aux]+ 'V_col_aux:'+V_col_aux);
                                    T_Suma[V_col_aux] = parseFloat(T_Suma[V_col_aux]) + parseFloat(V_valor);
                                }
                                T_DiaS[V_col_aux] = $(this).attr('dia_sem');
                            }
                            V_col = V_col + 1;
                        });
                        V_ini0 = "";
                        //var valor_h = parseFloat(v_valor.replace(',', '.'));
                    }
                });
                var V_html = '<tr class="FILA_TOTALES"><td>TOTAL</td><td></td>';
                for (var i = 0; i < T_Suma.length; i++) {
                    var V_dia_Sem = T_DiaS[i];  // HORARIO TEORICO DEPENDIENTE DE CADA DIA DE LA SEMANA
                    //console.log('Indice: ' + i + 'V_dia_Sem:'+V_dia_Sem );
                    if (V_dia_Sem != "0" && V_dia_Sem != "6")  // SE SALTA SABADOS Y DOMINGOS
                    {
                        var sum_horas = parseFloat(T_Suma[i]);
                        //console.log('TOTALES sum_horas:' + sum_horas);
                        var V_total_h = Cambio_formato_hora(sum_horas, 1);
                        //console.log('TOTALES V_total_h:' + V_total_h);
                        var HorasT = T_HORARIO[V_dia_Sem];
                        //console.log('TOTALES sum_horas:' + sum_horas+ ' HorasT:'+HorasT);
                        if (sum_horas < HorasT) { V_html = V_html + '<td style="color:blue; text-align:center">' + V_total_h + '</td>'; }
                        else if (sum_horas == HorasT) { V_html = V_html + '<td style="color:green; text-align:center">' + V_total_h + '</td>'; }
                        else { V_html = V_html + '<td style="color:red; text-align:center">' + V_total_h + '</td>'; V_horas_sobrepasadas = "X"; }
                    }
                }
                //console.log('TOTALES V_html:'+V_html);
                V_html = V_html + '</tr>';
                $('#TABLA_HORAS').append(V_html);
                var V_html = '<tr class="FILA_TOTALES"><td>TOTAL TEORICO</td><td></td>';
                var V_index = 0;
                for (var i = 0; i < T_Suma.length; i++) {
                    var V_dia_Sem = T_DiaS[V_index];  // HORARIO TEORICO DEPENDIENTE DE CADA DIA DE LA SEMANA
                    if (V_dia_Sem != "0" && V_dia_Sem != "6")  // SE SALTA SABADOS Y DOMINGOS
                    {
                        var HorasT = T_HORARIO[V_dia_Sem];
                        var HorasT2 = Cambio_formato_hora(HorasT, 1);
                        V_html = V_html + '<td style="color:grey; font-style:italic; text-align:center">' + HorasT2 + '</td>';
                    }
                    V_index = V_index + 1;
                }
                V_html = V_html + '</tr>';
                $('#TABLA_HORAS').append(V_html);
            }
            function FormatTable() {
                var i = 0;
                $('#TABLA_HORAS').each(function () {
                    console.log('int i: ' + i);
                    $('tr:odd', this).addClass('T_row_o').removeClass('even');
                    $('tr:even', this).addClass('T_row_p').removeClass('odd');
                    i = i + 1;
                });
                $(".SELECTOR_ACTl").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectl" class="T_myselect" tabindex="-1"> \
                    <option>ANALISIS</option><option>DISEÑO</option><option>CONSTRUCCION</option>\
                    <option>DOCUMENTACION</option><option>VIAJE</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTm").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectm" class="T_myselect" tabindex="-1" > \
                    <option>ANALISIS</option><option>DISEÑO</option><option>CONSTRUCCION</option>\
                    <option>DOCUMENTACION</option><option>VIAJE</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTx").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectx" class="T_myselect" tabindex="-1"> \
                    <option>ANALISIS</option><option>DISEÑO</option><option>CONSTRUCCION</option>\
                    <option>DOCUMENTACION</option><option>VIAJE</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTj").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectj" class="T_myselect" tabindex="-1"> \
                    <option>ANALISIS</option><option>DISEÑO</option><option>CONSTRUCCION</option>\
                    <option>DOCUMENTACION</option><option>VIAJE</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTv").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectv" tabindex="-1" class="T_myselect"> \
                    <option>ANALISIS</option><option>DISEÑO</option><option>CONSTRUCCION</option>\
                    <option>DOCUMENTACION</option><option>VIAJE</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTlG").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectl" class="T_myselect" tabindex="-1" tabindex="-1"> \
                    <option>FORMACION</option><option>REUNIONES INTERNAS</option><option>GESTION</option>\
                    <option>VACACIONES</option><option>OTROS ABSENTISMOS</option><option>OTROS</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTmG").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectm" class="T_myselect" tabindex="-1"> \
                    <option>FORMACION</option><option>REUNIONES INTERNAS</option><option>GESTION</option>\
                    <option>VACACIONES</option><option>OTROS ABSENTISMOS</option><option>OTROS</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTxG").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectx" class="T_myselect" tabindex="-1"> \
                    <option>FORMACION</option><option>REUNIONES INTERNAS</option><option>GESTION</option>\
                    <option>VACACIONES</option><option>OTROS ABSENTISMOS</option><option>OTROS</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTjG").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectj" class="T_myselect" tabindex="-1"> \
                    <option>FORMACION</option><option>REUNIONES INTERNAS</option><option>GESTION</option>\
                    <option>VACACIONES</option><option>OTROS ABSENTISMOS</option><option>OTROS</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
                $(".SELECTOR_ACTvG").each(function () {
                    var V_sel = $(this).html();
                    $(this).html('<select id="myselectv" class="T_myselect" tabindex="-1"> \
                    <option>FORMACION</option><option>REUNIONES INTERNAS</option><option>GESTION</option>\
                    <option>VACACIONES</option><option>OTROS ABSENTISMOS</option><option>OTROS</option></select>');
                    $(this).find("option").each(function () {
                        if ($(this).text() == V_sel) {
                            $(this).attr("selected", "selected");
                        }
                    });
                });
            }
            $(".NUMERIC").click(function () {
                console.log('THIS SELECTOR NUMERICO');
                $(this).select();
            });
            function dynamicSort(property) {
                var sortOrder = 1;
                if (property[0] === "-") {
                    sortOrder = -1;
                    property = property.substr(1);
                }
                return function (a, b) {
                    /* next line works with strings and numbers, 
                    * and you may want to customize it to your needs
                    */
                    var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
                    return result * sortOrder;
                }
            }
            function informamesT(V_num_mes, V_num_anyo) {
                var V_mesT = "";
                if (V_num_mes == "1") { V_mesT = "Ene"; }
                if (V_num_mes == "2") { V_mesT = "Feb"; }
                if (V_num_mes == "3") { V_mesT = "Mar"; }
                if (V_num_mes == "4") { V_mesT = "Abr"; }
                if (V_num_mes == "5") { V_mesT = "May"; }
                if (V_num_mes == "6") { V_mesT = "Jun"; }
                if (V_num_mes == "7") { V_mesT = "Jul"; }
                if (V_num_mes == "8") { V_mesT = "Ago"; }
                if (V_num_mes == "9") { V_mesT = "Sep"; }
                if (V_num_mes == "10") { V_mesT = "Oct"; }
                if (V_num_mes == "11") { V_mesT = "Nov"; }
                if (V_num_mes == "12") { V_mesT = "Dic"; }
                console.log('V_num_anyo:' + V_num_anyo);
                var V_aux = V_num_anyo + "";
                V_mesT = V_mesT + "-" + V_aux.substr(2, 2);
                return V_mesT;
            }
            function FormateaEntero(valor) {
                var V_aux = '' + valor; // PRUEBO A CONVERTIR LA VARIABLE A STRING
                var result = "";
                if ((V_aux.indexOf(',') != -1) || (V_aux.indexOf(".") != -1)) {
                    V_aux = V_aux.replace(".", ",");
                    //console.log(' V_aux formatea entero DECIMAKLES 0:' + V_aux);
                    var I_aux = V_aux.indexOf(",");
                    V_aux = V_aux.substr(0, I_aux);
                }
                result = V_aux;
                //console.log(' V_aux formatea entero:' + V_aux);
                return result;
            }
            function FormateaImporte(valor) {
                var I_NumDec = 0; var I_NumEnt = 0;
                var V_aux = '' + valor; // PRUEBO A CONVERTIR LA VARIABLE A STRING
                var result = ""; var isNegative = false;
                // SI ES NEGATIVO LO CONSIDERO
                if (V_aux.indexOf('-') != -1) {
                    V_aux = V_aux.substr(1); isNegative = true
                }
                if ((V_aux.indexOf(',') != -1) || (V_aux.indexOf(".") != -1)) {
                    V_aux = V_aux.replace(".", ",");
                    I_NumDec = V_aux.length - V_aux.indexOf(',') - 1;
                    result = V_aux.substr(V_aux.indexOf(','), I_NumDec + 1);
                    var I_NumEnt = V_aux.length - I_NumDec - 1;
                }
                else {
                    var I_NumEnt = V_aux.length;
                    result = ',00';
                }
                //console.log(' valor:' + valor + ' I_NumDec:' + I_NumDec + ' I_NumEnt:' + I_NumEnt);
                while (I_NumEnt > 3) {
                    var I_aux = V_aux.length - 3;
                    result = '.' + V_aux.substr(I_NumEnt - 3, 3) + result;
                    console.log(' result:' + result + ' I_NumEnt:' + I_NumEnt);
                    // valor = valor.substring(0, I_aux);
                    I_NumEnt = I_NumEnt - 3;
                }
                result = V_aux.substr(0, I_NumEnt) + result;
                if (isNegative) { result = '-' + result; }
                console.log(' valor:' + valor + ' result:' + result);
                return result;
            }
            function Calcula_semana(D_fecha) {
                var onejan = new Date(D_fecha.getFullYear(), 0, 1);
                var today = new Date(D_fecha.getFullYear(), D_fecha.getMonth(), D_fecha.getDate());
                var dayOfYear = ((today - onejan + 1) / 86400000);
                var V_aux = Math.round(Math.ceil(dayOfYear).toFixed(2)) / 7;  // EVITAR ERRORES DE REDONDEOS A 8 DIGITO
                V_aux = Math.round(V_aux.toFixed(0)); // ELIMINA DECIMALES
                //console.log('D_fecha:' + D_fecha + ' V_aux:' + V_aux);
                //return Math.ceil(dayOfYear / 7)
                return V_aux;
            }
            function Posicion_inicial(indice) {
                var V_auxf = T_FASES[indice].FECINI;
                //console.log('indice:' + indice + ' V_auxf:'+V_auxf);
                var V_inid = V_auxf.substring(0, 2); var V_inim = V_auxf.substring(3, 5); var V_inia = V_auxf.substring(6, 10);
                var D_FECINI0 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                var Dias_desdeiniP = Diaslabentrefechas(D_inicioG, D_FECINI0);
                var V_pos_ini = parseFloat(V_left0) + parseFloat(Dias_desdeiniP) * 10;
                return V_pos_ini;
            }
            function Anchura(indice) {
                var V_auxf = T_FASES[indice].FECINI;
                var V_inid = V_auxf.substring(0, 2); var V_inim = V_auxf.substring(3, 5); var V_inia = V_auxf.substring(6, 10);
                var V_auxf = T_FASES[indice].FECFIN;
                var V_find = V_auxf.substring(0, 2); var V_finm = V_auxf.substring(3, 5); var V_fina = V_auxf.substring(6, 10);
                var D_FECINI0 = new Date(V_inia, parseFloat(V_inim) - 1, V_inid);
                var D_FECFIN0 = new Date(V_fina, parseFloat(V_finm) - 1, V_find);
                var Dias_lab_fase = Diaslabentrefechas(D_FECINI0, D_FECFIN0);
                var V_anchura = parseFloat(Dias_lab_fase) * 10;
                return V_anchura;
            }
            function Control_cambio_fase() {
                $('.Fase').on('change', function () {
                    // ACTUALIZA ARRAY FASES CON LOS NUEVOS VALORES
                    var $row = $(this).closest('tr');
                    var row_index = $row.index();
                    //console.log(' D_inicioG!!!:' + D_inicioG);                    
                    var V_Ident = $row.find('.Identificador').html();
                    var V_Desc = $row.find('.Desc').val();
                    var V_duracion = $row.find('.duracion').val();
                    console.log('V_Ident:' + V_Ident + ' V_Desc:' + V_Desc);
                    var V_precedentes = $row.find('.precedentes').val();
                    var V_recursos = $row.find('.recursos').val();
                    var V_Status = $row.find('.Status').val();
                    if (V_status = "") { V_status = "Not initiated"; }
                    var V_FECINI0 = $row.find('.Fec_ini').val();
                    var V_inid = V_FECINI0.substring(8, 10); var V_inim = parseFloat(V_FECINI0.substring(5, 7)) - 1; var V_inia = V_FECINI0.substring(0, 4);
                    var V_FECFIN0 = $row.find('.Fec_fin').val();
                    var V_find = V_FECFIN0.substring(8, 10); var V_finm = parseFloat(V_FECFIN0.substring(5, 7)) - 1; var V_fina = V_FECFIN0.substring(0, 4);
                    var V_color = T_COLOR[parseFloat(row_index) - 3];
                    var D_FECINI0 = new Date(V_inia, parseFloat(V_inim), V_inid);
                    if (D_FECINI0 < D_inicioG) { V_error = "F_I"; }
                    var D_FECFIN0 = new Date(V_fina, parseFloat(V_finm), V_find);
                    var V_error = "";
                    if (D_FECFIN0 > D_finG) { V_error = "F_F"; }
                    if (V_error == "") {
                        var I_aux = parseFloat(T_FASES.length);
                        if (row_index > 1) {
                            var I_row = parseFloat(row_index) - 3;
                            //console.log('I_aux:' + I_aux + " I_row:" + I_row);
                            if (I_row < I_aux) {
                                var V_Fecini_ant = T_FASES[I_row].FECINI;
                                var diaini_ant = new Date(V_Fecini_ant.substring(6, 10), parseFloat(V_Fecini_ant.substring(3, 5)) - 1, V_Fecini_ant.substring(0, 2));
                                var V_Fecfin_ant = T_FASES[I_row].FECFIN;
                                var diafin_ant = new Date(V_Fecfin_ant.substring(6, 10), parseFloat(V_Fecfin_ant.substring(3, 5)) - 1, V_Fecfin_ant.substring(0, 2));
                                // console.log('diaini_ant:' + diaini_ant + ' D_FECINI0:' + D_FECINI0);console.log('diafin_ant:' + diafin_ant + ' D_FECFIN0:' + D_FECFIN0);
                                // SI HA CAMBIADO LA FECHA INICIO SE DEBERAN PINTAR LAS CELDAS ENTRE FECHA ANTERIOR Y POSTERIOR
                                // SI NUEVA FECHA INICIO ES ANTERIOR A ACTUAL PINTA COLOR SINO PINTA BLANCO
                                // SI NUEVA FECHA INICIO ES ANTERIOR A ACTUAL PINTA BLANCO SINO PINTA COLOR
                                var I_aux = 0;
                                if (D_FECINI0 != diaini_ant) {
                                    //console.log('D_FECINI0:' + D_FECINI0 + ' diaini_ant:' + diaini_ant);
                                    $row.find('td').each(function () {
                                        if (I_aux > 9) {
                                            V_cid = $(this).attr('id');
                                            str_index = V_cid.indexOf(".");
                                            V_id_aux = V_cid.substring(0, str_index);
                                            V_fecha = V_cid.substring(parseFloat(str_index) + 1, V_cid.length - parseFloat(str_index) + 1);
                                            // PINTA DEL COLOR QUE TOQUE LAS FECHAS ENTRE D_FECINI0 < diaini_ant
                                            var dia_sel = new Date(V_fecha.substring(6, 10), parseFloat(V_fecha.substring(3, 5)) - 1, V_fecha.substring(0, 2));
                                            if (D_FECINI0 < diaini_ant) {
                                                if (dia_sel >= D_FECINI0 && dia_sel <= diaini_ant) {
                                                    $(this).addClass("Fase0");
                                                    var V_html = '<div class = "Fase_sel" style="background-color:' + V_color + '" title = "' + V_fecha + '"></div>';
                                                    $(this).html(V_html);
                                                }
                                            }
                                            else if (D_FECINI0 > diaini_ant) {
                                                if (dia_sel >= diaini_ant && dia_sel <= D_FECINI0) {
                                                    $(this).removeClass("Fase0");
                                                    var V_html = '<div style="background-color:white" title = "' + V_fecha + '"></div>';
                                                    $(this).html(V_html);
                                                }

                                            }
                                        }
                                        I_aux = I_aux + 1;
                                    });
                                }
                                I_aux = 0;
                                if (D_FECFIN0 != diafin_ant) {
                                    $row.find('td').each(function () {
                                        if (I_aux > 9) {
                                            V_cid = $(this).attr('id');
                                            //console.log('JARRRR FIN dia_sel:'+dia_sel+' V_cid:'+V_cid);
                                            str_index = V_cid.indexOf(".");
                                            V_id_aux = V_cid.substring(0, str_index);
                                            V_fecha = V_cid.substring(parseFloat(str_index) + 1, V_cid.length - parseFloat(str_index) + 1);
                                            // PINTA DEL COLOR QUE TOQUE LAS FECHAS ENTRE D_FECINI0 < diafin_ant
                                            var dia_sel = new Date(V_fecha.substring(6, 10), parseFloat(V_fecha.substring(3, 5)) - 1, V_fecha.substring(0, 2));
                                            if (D_FECFIN0 < diafin_ant) {
                                                if (dia_sel >= D_FECFIN0 && dia_sel <= diafin_ant) {
                                                    $(this).removeClass("Fase0");
                                                    var V_html = '<div style="background-color:white" title = "' + V_fecha + '"></div>';
                                                    $(this).html(V_html);
                                                }
                                            }
                                            else if (D_FECFIN0 > diafin_ant) {
                                                if (dia_sel >= diafin_ant && dia_sel <= D_FECFIN0) {
                                                    $(this).addClass("Fase0");
                                                    var V_html = '<div class = "Fase_sel" style="background-color:' + V_color + '" title = "' + V_fecha + '"></div>';
                                                    $(this).html(V_html);
                                                }
                                            }
                                        }
                                        I_aux = I_aux + 1;
                                    });
                                }
                                V_inim = parseFloat(V_inim) + 1; V_finm = parseFloat(V_finm) + 1;
                                if (V_inim < 10) { V_inim = "0" + V_inim; }
                                if (V_finm < 10) { V_finm = "0" + V_finm; }
                                T_FASES[I_row].NOMBRE = V_Desc;
                                T_FASES[I_row].FECINI = V_inid + "/" + V_inim + "/" + V_inia;
                                T_FASES[I_row].FECFIN = V_find + "/" + V_finm + "/" + V_fina;
                                //T_FASES[I_row].STATUS = V_Status;
                                T_FASES[I_row].ID = V_Ident;
                                //T_FASES[I_row].RECURSOS= V_recursos;
                                T_FASES[I_row].PRECEDENTES = V_precedentes;
                                console.log('Modifica T_FASES, I_row:' + I_row + ' T_FASES[I_row].NOMBRE:' + T_FASES[I_row].NOMBRE + 'T_FASES[I_row].FECFIN:' + T_FASES[I_row].FECFIN);
                            }
                            else {
                                console.log('Crear entrada nueva en T_FASES');
                                var I_row = parseFloat(row_index) - 2;
                                V_inim = parseFloat(V_inim) + 1; V_finm = parseFloat(V_finm) + 1;
                                if (V_inim < 10) { V_inim = "0" + V_inim; }
                                if (V_finm < 10) { V_finm = "0" + V_finm; }
                                T_FASES.push({
                                    ID: "1",
                                    NOMBRE: V_Desc,
                                    FECINI: V_inid + "/" + V_inim + "/" + V_inia,
                                    FECFIN: V_find + "/" + V_finm + "/" + V_fina,
                                    STATUS: V_Status,
                                });
                            }
                            //Dibuja_fases(); 
                            $row.find('td').each(function () {
                                var V_aux = $(this).text();
                                console.log('Texto posicion:' + V_aux);
                            });
                        }
                        var Dias_fase = Diaslabentrefechas(D_FECINI0, D_FECFIN0);
                        $row.find('.duracion').html(Dias_fase);
                    }
                    else if (V_error == "F_I") {
                        // VENTANA ERROR CON MENSAJE LA FECHA INICIO NO PUEDE SER INFERIOR A LA FECHA INICIO PROYECTO
                        $row.find('.Fec_ini').val(V_iniGT);
                        console.log('VENTANA ERROR CON MENSAJE LA FECHA INICIO NO PUEDE SER INFERIOR A LA FECHA INICIO PROYECTO.');
                        var V_text = 'ERROR: La fecha inicio de una fase no puede ser anterior a la fecha fin proyecto. Modifique primero la fecha inicio proyecto.';
                        //e.preventDefault();
                        $("#Mensaje_pie").html(V_text);
                        $("#Contenido_mensaje").html(V_text);
                        var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                        $("body").append(appendthis);
                        $(".modal-overlay").fadeTo(500, 0.2);
                        var modalBox = 'popup_message';
                        $('#' + modalBox).fadeIn($(this).data());
                        V_top = $(window).height() / 2;
                        V_left = $(window).width() / 2;
                        $(".modal-box").css({
                            top: V_top,
                            left: V_left
                        });
                        $(".modal-overlay").click(function () {
                            $(".modal-box, .modal-overlay").fadeOut(500, function () {
                                $(".modal-overlay").remove();
                                $(".SEL_ST").unbind('click');
                                $("#Mensaje_pie").html("");
                            });
                        });
                    }
                    else if (V_error == "F_F") {
                        // VENTANA ERROR CON MENSAJE LA FECHA FIN NO PUEDE SER SUPERIOR A LA FECHA FIN PROYECTO
                        $row.find('.Fec_fin').val(V_finGT);
                        var V_text = 'ERROR: La fecha fin de una fase no puede ser posterior a la fecha fin proyecto. Modifique primero la fecha fin proyecto.';
                        console.log();
                        //e.preventDefault();
                        $("#Mensaje_pie").html(V_text);
                        $("#Contenido_mensaje").html(V_text);
                        var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
                        $("body").append(appendthis);
                        $(".modal-overlay").fadeTo(500, 0.2);
                        var modalBox = 'popup_message';
                        $('#' + modalBox).fadeIn($(this).data());
                        V_top = $(window).height() / 2;
                        V_left = $(window).width() / 2 - 250;
                        $(".modal-box").css({
                            top: V_top,
                            left: V_left
                        });
                        $(".modal-overlay").click(function () {
                            $(".modal-box, .modal-overlay").fadeOut(500, function () {
                                $(".modal-overlay").remove();
                                $(".SEL_ST").unbind('click');
                                $("#Mensaje_pie").html("");
                            });
                        });
                    }
                });
                // GESTION DE CAMPO STATUS
                $('.Status').click(function (e) {
                    var $row0 = $(this).closest('tr');
                    var row_index0 = $row0.index();
                    var appendthis = "<div class='modal-overlay js-modal-close'></div>";
                    var V_id = $(this).attr('id');
                    console.log('CLICK EN STATUS EN FILA: ' + V_id + ' row_index0:' + row_index0);
                    V_sel_status = V_id;
                    V_top = $(this).offset().top; V_top = 25 + parseFloat(V_top);
                    V_left = $(this).offset().left;
                    //console.log('V_top:' + V_top + 'V_left:' + V_left + 'V_id:' + V_id);
                    e.preventDefault();
                    $("body").append(appendthis);
                    $(".modal-overlay").fadeTo(500, 0.2);
                    var modalBox = 'popup_status';
                    //var modalBox = $(this).attr('data-modal-id');
                    $('#' + modalBox).fadeIn($(this).data());
                    $(".modal-box").css({
                        top: V_top,
                        left: V_left
                    });
                    $(".modal-overlay").click(function () {
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                            $(".SEL_ST").unbind('click');
                        });
                    });
                    $(".SEL_ST").click(function () {
                        var $row = $(this).closest('tr');
                        console.log('row_index: ' + row_index0 + ' V_id:' + V_id);
                        var V_status = $row.find('.SEL_ST').text();
                        $("#" + V_id).val(V_status.trim());
                        // SE MODIFICA TAMBIEN EL ARRAY T_FASES
                        V_fila = parseFloat(row_index0) - 3;
                        console.log('FILA MODIFICADA V_status: ' + V_status + " V_fila: " + V_fila);
                        T_FASES[V_fila].STATUS = V_status.trim();
                        $(".modal-box, .modal-overlay").fadeOut(500, function () {
                            $(".modal-overlay").remove();
                            $(".SEL_ST").unbind('click');
                        });
                    });
                });
            }
            function Ventana_error(Texto) {
                var V_text = Texto;
                //e.preventDefault();
                $("#Mensaje_pie").html(V_text);
                $("#Contenido_mensaje").html(V_text);
                var appendthis = "<div class='modal-overlay js-modal-close'></div>";
                $("body").append(appendthis);
                $(".modal-overlay").fadeTo(500, 0.2);
                var modalBox = 'popup_message';
                $('#' + modalBox).fadeIn($(this).data());
                V_top = $(window).height() / 2;
                V_left = $(window).width() / 2 - 250;
                $(".modal-box").css({
                    top: V_top,
                    left: V_left
                });
                $(".modal-overlay").click(function () {
                    $(".modal-box, .modal-overlay").fadeOut(500, function () {
                        $(".modal-overlay").remove();
                        $(".SEL_ST").unbind('click');
                        $("#Mensaje_pie").html("");
                    });
                });
            }
            function SUMA_UNO_INDICE(V_id_aux) {
                //console.log('FUNCION SUMA UNO, V_id_aux:'+V_id_aux);
                var V_loop = "X"; var I_div_acum = 0;
                var V_id_aux2 = V_id_aux;
                while (V_loop == "X") {
                    var I_div = V_id_aux2.indexOf(".") + 1;
                    if (I_div <= 0) { V_loop = " "; }
                    else {
                        I_div_acum = I_div_acum + I_div;
                        V_id_aux2 = V_id_aux2.substr(I_div, V_id_aux2.length);
                        var I_div0 = V_id_aux2.indexOf(".");
                    }
                }
                V_new_id = V_id_aux.substr(0, I_div_acum); // AISLADO HASTA EL PUNTO
                V_id_aux2 = parseFloat(V_id_aux2) + 1;
                //console.log('!!!!!V_new_id:' + V_new_id + ' V_id_aux2:'+V_id_aux2);
                V_new_id = V_new_id + V_id_aux2;
                console.log('!!!!!NUEVO V_new_id:' + V_new_id);
                return V_new_id;
            }
            function TextoDiaSemana(V_day, V_format) {
                var D_semana1 = [];
                D_semana1 = ["Dom", "Lun", "Mar", "Mier", "Jue", "Vier", "Sab"];
                var V_result = "";
                if (V_format == "1") {
                    V_result = D_semana1[V_day];
                }
                return V_result;

            }; // SI DOMINGO SUMA UNO
            function DesglosaEnArray(V_campo, V_caracter) {
                T_array = [];
                if (V_campo != "") {
                    var V_loop = "X"; var I_div = 0;
                    var I_div = V_campo.indexOf(V_caracter);
                    var V_new_id = "";
                    while (V_loop == "X") {
                        I_div = V_campo.indexOf(V_caracter) + 1;
                        if (I_div <= 0) {
                            T_array.push(V_campo);
                            V_loop = " ";
                        }
                        else {
                            var V_aux = V_campo.substr(0, I_div - 1);
                            T_array.push(V_aux);
                            V_campo = V_campo.substr(I_div, V_campo.length);
                        }
                    }
                }
                return T_array;
            }
            function SUMA_UNO_NIVEL(V_id_aux_i, V_nivel0) {
                // INCREMENTA UNO A V_ID_AUX EN EL NIVEL INDICADO SIENDO CER0 EL BASICO
                console.log('FUNCION SUMA_UNO_NIVEL, V_id_aux_i:' + V_id_aux_i + ' V_nivel0:' + V_nivel0);
                var V_loop = "X"; var I_div_acum = 0;
                var V_id_aux = V_id_aux_i;
                //  V_id_aux = V_id_aux.trim;
                var V_id_aux2 = V_id_aux + " "; var V_nivel = 0;
                var I_div = V_id_aux2.indexOf(".");
                var V_new_id = "";
                if (I_div < 0) // SI ES EL PRIMER NIVEL
                {
                    V_new_id = parseFloat(V_id_aux_i) + 1;
                }
                else {
                    while (V_loop == "X") {
                        I_div = V_id_aux2.indexOf(".") + 1;
                        if (I_div <= 0 || V_nivel == V_nivel0) { V_loop = " "; }
                        else {
                            I_div_acum = I_div_acum + I_div; // POSCIONES HASTA EL PUNTO
                            V_id_aux2 = V_id_aux2.substr(I_div, V_id_aux2.length);
                            var I_div0 = V_id_aux2.indexOf(".");
                            V_nivel = V_nivel + 1;
                        }
                    }
                    //console.log('I_div0 ' + I_div0);
                    var V_new_id = V_id_aux.substr(0, I_div_acum); // TEXTO AISLADO HASTA EL PUNTO
                    var I_aux = V_id_aux2.length - I_div;
                    var V_a_incrementar = V_id_aux.substr(I_div_acum, I_aux);
                    V_a_incrementar = parseFloat(V_a_incrementar) + 1;
                    V_id_aux2 = "";
                    var I_div = V_id_aux2.indexOf(".") + 1;
                    if (I_div > 0) { // SI HAY ALGUNA CADENA POSTERIOR
                        V_id_aux2 = V_id_aux2.substr(I_div, V_id_aux2.length); // TEXTO DESPUES DEL PUNTO
                    }
                    console.log('*****V_new_id ' + V_new_id + ' V_a_incrementar:' + V_a_incrementar + ' V_id_aux2:' + V_id_aux2);
                    V_new_id = V_new_id + V_a_incrementar + V_id_aux2;
                    console.log('*****V_new_id FINAL:' + V_new_id);
                }
                return V_new_id;
            }
            function Diaslabentrefechas(Dia_inicioDL, Dia_finDL) {
                // CALCULA LOS DIAS LABORABLES ENTRE DOS FECHAS EN FORMATO DATE
                var numWorkDays = 0;
                var Dia_inicio_aux = new Date(Dia_inicioDL);
                if (Dia_inicio_aux < Dia_fin) {
                    if (Dia_inicio_aux.getDay() == 0) //DOMINGO 
                    { Dia_inicio_aux.setDate(Dia_inicio_aux.getDate() + 1); }
                    if (Dia_inicio_aux.getDay() == 6) //SABADO 
                    { Dia_inicio_aux.setDate(Dia_inicio_aux.getDate() + 2); }
                    if (Dia_fin.getDay() == 0) //DOMINGO 
                    { Dia_fin.setDate(Dia_fin.getDate() - 2); }
                    if (Dia_fin.getDay() == 6) //SABADO 
                    { Dia_fin.setDate(Dia_fin.getDate() - 1); }
                    //console.log('Calcula dias lab Dia_inicio:', Dia_inicio, " | Dia_fin:", Dia_fin);
                    var currentDate = new Date(Dia_inicioDL);
                    while (currentDate <= Dia_fin) {
                        // Skips Sunday and Saturday
                        if (currentDate.getDay() !== 0 && currentDate.getDay() !== 6) {
                            numWorkDays++;
                        }
                        currentDate.setDate(currentDate.getDate() + 1);
                        //currentDate = currentDate.addDays(1);
                    }
                }
                return numWorkDays;
            }
            function FormateaDecimalesPunto(valor) { // CAMBIA COMAS POR PUNTOS EN SEPARACION DE DECIMALES PARA HACER OPERACIONES
                var V_aux2 = '' + valor; // CONVERTIR LA VARIABLE A STRING
                var result = "";
                if ((V_aux2.indexOf(',') != -1) || (V_aux2.indexOf(".") != -1)) {
                    V_aux2 = V_aux2.replace(",", ".");
                }
                result = V_aux2;
                return result;
            }
            function FormateaImporte(valor) { // CAMBIA PUNTOS POR COMAS PARA MOSTRARLO EN FORMATO EUROPEO, REDONDEA A DOS DECIMALES
                var I_NumDec = 0; var I_NumEnt = 0;
                //var V_aux = '' + valor; // PRUEBO A CONVERTIR LA VARIABLE A STRING
                var valor2 = parseFloat(valor);
                valor2 = (Math.round((valor2 * 1000) / 10) / 100).toFixed(2);
                V_aux = valor2; // LO REDONDEA A DOS DECIMALES
                var result = ""; var isNegative = false;
                // SI ES NEGATIVO LO CONSIDERO
                if (V_aux.indexOf('-') != -1) {
                    V_aux = V_aux.substr(1); isNegative = true
                }
                if ((V_aux.indexOf(',') != -1) || (V_aux.indexOf(".") != -1)) {
                    V_aux = V_aux.replace(".", ",");
                    I_NumDec = V_aux.length - V_aux.indexOf(',') - 1;
                    result = V_aux.substr(V_aux.indexOf(','), I_NumDec + 1);
                    var I_NumEnt = V_aux.length - I_NumDec - 1;
                }
                else {
                    var I_NumEnt = V_aux.length;
                    //result = ',00';
                }
                //console.log(' valor:' + valor + ' I_NumDec:' + I_NumDec + ' I_NumEnt:' + I_NumEnt);
                while (I_NumEnt > 3) {
                    var I_aux = V_aux.length - 3;
                    result = '.' + V_aux.substr(I_NumEnt - 3, 3) + result;
                    //console.log(' result:' + result + ' I_NumEnt:' + I_NumEnt);
                    // valor = valor.substring(0, I_aux);
                    I_NumEnt = I_NumEnt - 3;
                }
                result = V_aux.substr(0, I_NumEnt) + result;
                if (isNegative) { result = '-' + result; }
                result = result.replace(/\,00$/, ''); // ELIMINA LOS DECIMALES SI SON CERO
                //console.log(' valor:' + valor + ' result:' + result);
                return result;
            }
            function Circulo(Color, Texto, Tamanyo) {
                var V_cod = "";
                if (Tamanyo == "1") {
                    V_cod = '<div class="contenedor"><div class="circle"  style="background-color:' + Color + '"><div>' + Texto + '</div></div></div>';
                }
                else if (Tamanyo == "2") {
                    V_cod = '<div class="contenedor"><div class="circle2"  style="background-color:' + Color + '"><div>' + Texto + '</div></div></div>';
                }
                else if (Tamanyo == "3") {
                    V_cod = '<div class="contenedor"><div class="circle3"  style="background-color:' + Color + '"><div>' + Texto + '</div></div></div>';
                }
                return V_cod;
            }
            function ColorESTADO(V_status) {
                var returnedData = $.grep(T_VALORES, function (element) {
                    return (element.TEXT == V_status);
                });
                var V_Color0 = "white";
                if (returnedData.length > 0) {
                    V_Color0 = returnedData[0]["COLOR"];
                }
                return V_Color0;
            }
            function Cambio_formato_hora(V_hora, V_tipo) {  // Tipo 1: Pasa de formato decimal a HH:MM, Tipo 2: De formato HH:MM a decimal
                var V_result = "";
                if (V_tipo == "1") {
                    var V_Horas = Math.floor(V_hora);
                    var V_Minutos = V_hora * 100 - V_Horas * 100;
                    V_Minutos1 = parseFloat(V_Minutos * 6 / 10);
                    V_Minutos1 = parseInt(Math.round(V_Minutos1));
                    if (V_Minutos1 < 10) { V_Minutos1 = "0" + V_Minutos1; }
                    V_result = V_Horas + ":" + V_Minutos1;
                }
                else if (V_tipo == "2") {
                    V_result = "0";
                    if (V_hora != "") {
                        //console.log('CONVERSION TIEMPO, V_hora:' + V_hora);
                        var V_Hora_aux = V_hora.substr(0, V_hora.indexOf(':'));
                        var V_Min_aux = V_hora.substr(V_hora.indexOf(',') - 1, 2);
                        var V_Min_dec = parseFloat(V_Min_aux * 10 / 6);
                        V_result = parseFloat(V_Hora_aux) + parseFloat(V_Min_dec / 100);
                        //console.log(' V_Hora_aux:' + V_Hora_aux + ' V_Min_aux:' + V_Min_aux + ' v_result:' + V_result);
                    }
                }
                return V_result;
            }
            function Cargar_MyDay(T_ACTIVE_TASKS, T_MISSING_HOURS, T_PROJECTS_STATUS) {
                //T_ACTIVE_TASKS = []; T_OVERDUE_TASKS = []; T_MISSING_HOURS = [];
                T_ACTIVE_TASKS.push({ PROYECTO: "PROJECT 91", TAREA: "1", DESC: "PREPARATION", FECINI: "01/06/2019", FECFIN: "15/06/2019", STATUS: "Pending", COMMENTS: "100" });
                T_ACTIVE_TASKS.push({ PROYECTO: "PROJECT 91", TAREA: "1", DESC: "PREPARATION", FECINI: "01/06/2019", FECFIN: "15/06/2019", STATUS: "Active", COMMENTS: "100" });
                T_ACTIVE_TASKS.push({ PROYECTO: "PROJECT 91", TAREA: "1", DESC: "PREPARATION", FECINI: "01/06/2019", FECFIN: "15/06/2019", STATUS: "Active", COMMENTS: "100" });
                T_ACTIVE_TASKS.push({ PROYECTO: "PROJECT 91", TAREA: "1", DESC: "PREPARATION", FECINI: "01/06/2019", FECFIN: "15/06/2019", STATUS: "Active", COMMENTS: "100" });

                T_PROJECTS_STATUS.push({ PROYECTO: "PROJECT 91", T_PLANNED: "40", T_DONE: "50", E_PLANNED: "40", E_ACTUAL: "35" });
                T_PROJECTS_STATUS.push({ PROYECTO: "PROJECT 96", T_PLANNED: "10", T_DONE: "10", E_PLANNED: "7", E_ACTUAL: "5" });
                T_PROJECTS_STATUS.push({ PROYECTO: "PROJECT 98", T_PLANNED: "85", T_DONE: "90", E_PLANNED: "87", E_ACTUAL: "135" });

                T_MISSING_HOURS.push({ FECHA: "01/06/2020", TEOR_HORAS: "8,5", IMP_HORAS: "0", PEND_HORAS: "8,5", COMMENTS: "100" });
                T_MISSING_HOURS.push({ FECHA: "02/06/2020", TEOR_HORAS: "8,5", IMP_HORAS: "0", PEND_HORAS: "8,5", COMMENTS: "100" });
                T_MISSING_HOURS.push({ FECHA: "03/06/2020", TEOR_HORAS: "8,5", IMP_HORAS: "0", PEND_HORAS: "8,5", COMMENTS: "100" });
                T_MISSING_HOURS.push({ FECHA: "04/06/2020", TEOR_HORAS: "8,5", IMP_HORAS: "0", PEND_HORAS: "8,5", COMMENTS: "100" });
            }
        });
    </script>
</head>

<body>
    <div class="contenido">
        <div class="panel_superior">
            <table id="TABLA_SEL" style="width:100%; border:0">
            </table>
        </div>
        <hr>
        <div class="Div_trabajo">
        </div>
    </div>
    <div>
        <footer class="footer">

        </footer>
    </div>
    <div id="popup_seleccion" class="modal-box">
        <div class="modal-body">
            <div class="Popup_sel">
                <table id="MENU_SEL"></table>
            </div>
        </div>
    </div>
</body>

</html>
