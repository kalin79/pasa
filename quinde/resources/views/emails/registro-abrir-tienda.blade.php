<!DOCTYPE html>
<html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RECIBIDO UNA TIENDA - EL QUINDE</title>

    <style type="text/css" media="screen">

        body{ font-family: Arial, sans-serif; }
        h1, h2{ margin-top: 0; margin-bottom: 0;}
        p{ margin: 3px 0 16px; }
        label{ color: #000000; font-weight: bold; }

        .color1{ color: #1C884E; }
        .color2{ color: #FF0000; }
        .link-user{ text-decoration: none; color: #000000; }
        .reset-link{ text-decoration: none;  }
    </style>
</head>

<body style="margin: 0">
@foreach($registro as $r)
<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#f7f7f7">
    <tbody><tr>
        <td>
            <table align="center" width="700" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">

                <tbody><tr>
                    <td align="center" valign="middle" width="700">
                        <img src="{{ asset('mailing/bg-top.png')}}" alt="RECIBIDO UNA SUSCRIPCIÓN- EL QUINDE" width="700" style="display: block;">
                    </td>
                </tr>

                <tr>
                    <td colspan="1" height="20"></td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <h1 class="color1">UN NEGOCIO <br>QUIERE UNIRSE</h1>
                    </td>
                </tr>

                <tr>
                    <td colspan="1" height="20"></td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <h2 class="color2">{{$r->nombre_contacto}} {{$r->apellido_contacto}}</h2>
                        <a class="link-user" href="mailto:{{$r->email_contacto}}">{{$r->email_contacto}}</a>
                    </td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <label>Teléfono:&nbsp;</label>
                        <p style="display: inline-block;">{{$r->telefono_contacto}}</p>
                    </td>
                </tr>

                <tr>
                    <td colspan="1" height="30"></td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <table align="center" width="565" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border: 4px solid #1C884E">

                            <tr>
                                <td align="center" valign="middle">
                                    <h3 class="color1">Datos del negocio</h3>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="1" height="15"></td>
                            </tr>

                            <tr>
                                <td align="center" valign="middle">
                                    <table align="center" width="475" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td align="center" valign="top" width="260">
                                                <table align="center" width="260" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Nombre Comercial:</label>
                                                            <p>{{$r->nombre_negocio}}</p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Años de experiencia:</label>
                                                            <p>{{$r->experiencia}}</p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Cuéntanos sobre tu negocio:</label>
                                                            <p><?php echo $r->descripcion_negocio ?></p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Categoria:</label>
                                                            <p>{{$r->nom_categoria}}</p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Formato de tienda:</label>
                                                            <p>{{$r->formato_negocio}}</p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td></td>
                                            <td align="center" valign="top" width="200">

                                                <table align="center" width="200" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                                    <tr>
                                                        <td align="left" valign="middle">
                                                            <label>Centro Comercial:</label>
                                                            @if ($r->cc_negocio && !$r->cc_negocio2)
                                                                <p>{{$r->cc_negocio}}</p>
                                                            @elseif(!$r->cc_negocio && $r->cc_negocio2)
                                                                <p>{{$r->cc_negocio2}}</p>
                                                            @elseif($r->cc_negocio && $r->cc_negocio2)
                                                                <p>{{$r->cc_negocio}} | {{$r->cc_negocio2}}</p>
                                                            @endif
                                                        </td>
                                                    </tr>
                                                    @if($r->foto_ref)
                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label style="display: inline-block; margin-bottom: 10px;">Foto de referencia:</label>
                                                                <img src="{{ asset('storage/'.$r->foto_ref)}}" width="145" alt="">
                                                            </td>
                                                        </tr>
                                                    @endif
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </table>
                    </td>
                </tr>

                <tr>
                    <td colspan="1" height="30"></td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <p>Empecemos el proceso de evaluación para<br> el negocio y contactémonos con el cliente.</p>
                    </td>
                </tr>


                <tr>
                    <td align="center" valign="middle" width="700">
                        <img src="{{ asset('mailing/bg-plantas.png')}}" width="700" style="display: block;">
                    </td>
                </tr>

                <tr>
                    <td align="center" valign="middle" width="700">
                        <table align="center" valign="middle" width="700" border="0" cellspacing="0" cellpadding="0" bgcolor="#18864A" style="color: #FFFFFF;">

                            <tbody>
                            <tr>
                                <td colspan="3" height="20"></td>
                            </tr>

                            <tr>

                                <td align="center" valign="middle" width="240">
                                    <table align="center" valign="middle" width="240" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td></td>
                                            <td align="left" valign="top" width="20">
                                                <img src="{{ asset('mailing/location.png')}}" width="14" alt="" style="display: block;">
                                            </td>
                                            <td align="left" valign="top" width="180">
                                                <a href="{{url('ica')}}" target="_blank" style="text-decoration: none; color:#ffffff;">
                                                    <multiline style="margin-top: 0; margin-bottom: 6px;font-size: 12px;">EL QUINDE ICA</multiline>
                                                    <p style="font-size: 11px; margin-bottom: 0;">AV. DE LOS MAESTROS, ICA<br>01 610 4646</p>
                                                </a>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </td>

                                <td align="center" valign="middle" width="240">
                                    <table align="center" valign="middle" width="240" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td></td>
                                            <td align="left" valign="top" width="20">
                                                <img src="{{ asset('mailing/location.png')}}" width="14" alt="" style="display: block;">
                                            </td>
                                            <td align="left" valign="top" width="200">
                                                <a href="{{url('cajamarca')}}" target="_blank" style="text-decoration: none; color:#ffffff;">
                                                    <multiline style="margin-top: 0; margin-bottom: 6px;font-size: 12px;">EL QUINDE CAJAMARCA</multiline>
                                                    <p style="font-size: 11px; margin-bottom: 0;">AV. HOYOS RUBIO, CAJAMARCA<br>914 675 461</p>
                                                </a>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </td>

                                <td align="center" valign="middle" width="220">

                                    <table align="center" width="200" border="0" cellspacing="0" cellpadding="0" bgcolor="#18864A" style="color: #FFFFFF;">

                                        <tbody>
                                        <tr>
                                            <td></td>
                                            @if($r->ciudad == 'ica')
                                                <td align="center" valign="middle" width="50">
                                                    <a href="https://www.facebook.com/CCElQuindeIca/" target="_blank">
                                                        <img src="{{ asset('mailing/facebook.png')}}" height="20" style="display: block;">
                                                    </a>
                                                </td>

                                                <td align="center" valign="middle" width="50">
                                                    <a href="https://twitter.com/CCElQuinde?lang=es" target="_blank">
                                                        <img src="{{ asset('mailing/twitter.png')}}" height="20" style="display: block;">
                                                    </a>
                                                </td>
                                            @elseif($r->ciudad == 'cajamarca')
                                                <td align="center" valign="middle" width="50">
                                                    <a href="https://www.facebook.com/CCElQuindeCajamarca/" target="_blank">
                                                        <img src="{{ asset('mailing/facebook.png')}}" height="20" style="display: block;">
                                                    </a>
                                                </td>

                                                <td align="center" valign="middle" width="50">
                                                    <a href="https://twitter.com/CCElQuinde?lang=es" target="_blank">
                                                        <img src="{{ asset('mailing/twitter.png')}}" height="20" style="display: block;">
                                                    </a>
                                                </td>
                                            @endif
                                            <td></td>

                                        </tr>

                                        </tbody>
                                    </table>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="1" height="20"></td>
                            </tr>

                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody></table>
        </td>
    </tr>
    </tbody></table>
@endforeach
</body>

</html>