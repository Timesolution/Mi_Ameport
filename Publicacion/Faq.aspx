<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="Mi_Ameport.Sorteos.Faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2>Preguntas Frecuentes</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="../Default.aspx">Inicio</a>
                </li>
                <li class="active">
                    <strong>Preguntas Frecuentes</strong>
                </li>
            </ol>
        </div>
        <div class="col-sm-8">
            <%--<div class="title-action">
                        <a href="" class="btn btn-primary btn-sm">Add question</a>
                    </div>--%>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="wrapper wrapper-content animated fadeInRight">

                <%--<div class="ibox-content m-b-sm border-bottom">
                            <div class="text-center p-lg">
                                <h2>If you don't find the answer to your question</h2>
                                <span>add your question by selecting </span>
                                <button title="Create new cluster" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> <span class="bold">Add question</span></button> button
                            </div>
                        </div>--%>

                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" href="#faq1" class="faq-question">1) ¿En qué consiste el programa de puntos?</a>
                            <%-- <small>Added by <strong>Alex Smith</strong> <i class="fa fa-clock-o"></i> Today 2:40 pm - 24.06.2014</small>--%>
                        </div>
                        <div class="col-md-3">
                            <%--<span class="small font-bold">Robert Nowak</span>
                                    <div class="tag-list">
                                        <span class="tag-item">General</span>
                                        <span class="tag-item">License</span>
                                    </div>--%>
                        </div>
                        <div class="col-md-2 text-right">
                            <%-- <span class="small font-bold">Voting </span><br/>
                                    42--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq1" class="panel-collapse collapse faq-answer">
                                <p>
                                    El programa puntos premia a los asociados por  acercar  nuevos asociados a la mutual o recomiendan nuevos comercios  a la mutual para hacer convenios para el Programa de Beneficios y Descuentos. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" href="#faq2" class="faq-question">2) ¿Quiénes pueden adherirse?</a>
                            <%-- <small>Added by <strong>Alex Smith</strong> <i class="fa fa-clock-o"></i> Today 2:40 pm - 24.06.2014</small>--%>
                        </div>
                        <div class="col-md-3">
                            <%--<span class="small font-bold">Robert Nowak</span>
                                    <div class="tag-list">
                                        <span class="tag-item">General</span>
                                        <span class="tag-item">License</span>
                                    </div>--%>
                        </div>
                        <div class="col-md-2 text-right">
                            <%-- <span class="small font-bold">Voting </span><br/>
                                    42--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq2" class="panel-collapse collapse faq-answer">
                                <p>
                                    Para participar del programa no hace falta adherirse, participan todos los asociados 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" href="#faq3" class="faq-question">3) ¿Tiene algún costo adherirme al programa?</a>
                            <%-- <small>Added by <strong>Alex Smith</strong> <i class="fa fa-clock-o"></i> Today 2:40 pm - 24.06.2014</small>--%>
                        </div>
                        <div class="col-md-3">
                            <%--<span class="small font-bold">Robert Nowak</span>
                                    <div class="tag-list">
                                        <span class="tag-item">General</span>
                                        <span class="tag-item">License</span>
                                    </div>--%>
                        </div>
                        <div class="col-md-2 text-right">
                            <%-- <span class="small font-bold">Voting </span><br/>
                                    42--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq3" class="panel-collapse collapse faq-answer">
                                <p>
                                    No. La participación en ViviAmeport Puntos es sin costo 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" href="#faq4" class="faq-question">4) ¿Cómo sumo puntos?</a>
                            <%-- <small>Added by <strong>Alex Smith</strong> <i class="fa fa-clock-o"></i> Today 2:40 pm - 24.06.2014</small>--%>
                        </div>
                        <div class="col-md-3">
                            <%--<span class="small font-bold">Robert Nowak</span>
                                    <div class="tag-list">
                                        <span class="tag-item">General</span>
                                        <span class="tag-item">License</span>
                                    </div>--%>
                        </div>
                        <div class="col-md-2 text-right">
                            <%-- <span class="small font-bold">Voting </span><br/>
                                    42--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq4" class="panel-collapse collapse faq-answer">
                                <p>
                                    Cada asociado sumará 95 puntos (1 punto = $1 -pesos uno-) por cada nuevo asociados que acerque a AMEPORT. 
                                </p>
                                <p>
                                    Cada asociado sumará 250 puntos (1 punto = $1 -pesos uno-) por cada nuevo comercio que adhiera al Programa de Beneficios y Descuentos.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-7">
                            <a data-toggle="collapse" href="#faq5" class="faq-question">5) ¿Para qué sirven los puntos?</a>
                            <%-- <small>Added by <strong>Alex Smith</strong> <i class="fa fa-clock-o"></i> Today 2:40 pm - 24.06.2014</small>--%>
                        </div>
                        <div class="col-md-3">
                            <%--<span class="small font-bold">Robert Nowak</span>
                                    <div class="tag-list">
                                        <span class="tag-item">General</span>
                                        <span class="tag-item">License</span>
                                    </div>--%>
                        </div>
                        <div class="col-md-2 text-right">
                            <%-- <span class="small font-bold">Voting </span><br/>
                                    42--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq5" class="panel-collapse collapse faq-answer">
                                <p>
                                    Los puntos pueden ser canjeados por servicios que brinda la Mutual (Artículos del Hogar, Turismo, etc.).
                                </p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq6" class="faq-question">6) ¿Cuándo se acreditan los puntos?</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq6" class="panel-collapse collapse faq-answer">
                                <p>
                                    Los puntos se acreditan al momento que se carga en el Sistema de AMEPORT los datos del nuevo asociado. Dentro de las 48/72 hs. desde que la solicitud se ingresa en el sistema de la Mutual.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq7" class="faq-question">7) ¿Qué vigencia tienen los puntos?</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq7" class="panel-collapse collapse faq-answer">
                                <p>
                                    Los puntos no tienen vencimiento. Son acumulables hasta que el asociado decida pagar un servicio mutual con el canje de los puntos.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq8" class="faq-question">8) ¿Dónde consulto mis puntos?</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq8" class="panel-collapse collapse faq-answer">
                                <p>
                                    Podés consultar tus puntos en: www.ameport.org.ar --> PROGRAMA VIVIAMEPORT PUNTOS
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq9" class="faq-question">9) ¿Dónde canjeo mis puntos? </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq9" class="panel-collapse collapse faq-answer">
                                <p>
                                    El canje se realizará presencialmente en la Sede de Ameport (previo a la solicitud de algunos de los servicios) ó telefónicamente al (011) 4344 4100 – desde el interior del país al 0800 333 9906.
                                </p>
                                <p>
                                    Podré utilizar los puntos acumulados para ponerme al día con la tesorería de la mutual.

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq10" class="faq-question">10) ¿Cómo se participa en el Viví Ameport SORTEOS?  </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq10" class="panel-collapse collapse faq-answer">
                                <p>Se participa:</p>
                                <p>
                                    1-	Tenés que estar al día con la tesorería de la mutual, esa situación te otorga una chance.
                                </p>
                                <p>
                                    Además
                                </p>
                                <p>
                                    2-	Por cada socio nuevo y hasta nueve que presente mensualmente a la mutual sumo una chance
                                </p>
                                <p>
                                    3-	Si presento entre 10 y 24 asociados nuevos que presente mensualmente sumo cuatro chances
                                </p>
                                <p>
                                    4-	Si presento más de 25 asociados en el mes sumo seis chances
                                </p>
                                <p>
                                    5-	Por cada tres años de antigüedad como asociado a la mutual, se suma una chance en el sorteo

                                </p>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq11" class="faq-question">11) ¿Cuántos sorteos habrá? ¿Con qué frecuencia serán los sorteos? </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq11" class="panel-collapse collapse faq-answer">
                                <p>
                                    Habrá 13 sorteos, mensuales son 12 y el último mes se realizará un sorteo anual.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq12" class="faq-question">12) ¿Quién participa en el sorteo anual? ¿Con cuántas chances participo en el sorteo anual si estoy al día? </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq12" class="panel-collapse collapse faq-answer">
                                <p>
                                    Todos los asociados que estén al día con la tesorería de la mutual y participan con las chances que le corresponda según su antigüedad (cada 3 años una chance) y se le suman todas las chances acumuladas    por difusión (acercar nuevas asociados a la mutual)
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq13" class="faq-question">13) ¿Qué se entiende estar al día con la tesorería de la mutual? </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq13" class="panel-collapse collapse faq-answer">
                                <p>
                                    No tener deuda con la mutual.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq14" class="faq-question">14) ¿Viví Ameport - Agasajo, en qué consiste? </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq14" class="panel-collapse collapse faq-answer">
                                <p>
                                    Se realizará un reconocimiento especial a los tres (3) primeros asociados NO REFERENTES que residan en Capital y en Gran Buenos Aires que hayan presentado durante la vigencia del programa más asociados nuevos y a los tres (3) primeros asociados NO REFERENTES que residan en el interior del país y que hayan presentado durante la vigencia del programa más asociados nuevos.
                                </p>
                                <%--<p>
                                    Recompensa: 
                                </p>
                                <p>
                                    A los asociados del interior, se les enviará los pasajes, de ida y vuelta, desde el lugar de origen con destino la Ciudad Autónoma de Buenos Aires, en avión o micro, a opción de los ganadores del ranking con el hospedaje pago en las suites ACARA y un voucher para una cena, válido para dos personas (ganador y acompañante).
                                </p>
                                <p>
                                    A los asociados de Capital y/o Gran Buenos Aires, AMEPORT costeará, los gastos para dos (2) personas y por dos (2) noches, para el traslado y alojamiento en la costa Argentina.

                                </p>--%>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="row">
                        <div class="col-md-12">
                            <a data-toggle="collapse" href="#faq15" class="faq-question">15) ¿Dónde puedo consultar las Bases y Condiciones del programa?</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="faq15" class="panel-collapse collapse faq-answer">
                                <p>
                                    Podés acceder a las Bases y Condiciones clickeando aquí
                                </p>

                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
                //                $.ajax().always(function () {
                //                    simpleLoad($(this), false)
                //                });

                simpleLoad(btn, false)
            });
        });

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
    </script>

</asp:Content>
