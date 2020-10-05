<!DOCTYPE html>
<html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RECIBIDO UNA SUSCRIPCIÓN - EL QUINDE</title>

    <style type="text/css" media="screen">

        body{ font-family: Arial, sans-serif; }
        h1, h2{ margin-bottom: 0; }
        p{ margin: 3px 0 16px; }
        label{ color: #B3B3B3; }

        .color1{ color: #1C884E; }
        .color2{ color: #FF0000; }
        .link-user{ text-decoration: none; color: #000000; }
        .reset-link{ text-decoration: none;  }
    </style>
</head>

<body style="margin: 0">
<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#f7f7f7">
    <tbody>
        <tr>
        <td>
            @foreach($registro as $reg)
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
                        <h1 class="color1">NUEVA <br>SUSCRIPCIÓN</h1>
                    </td>
                </tr>

                <tr>
                    <td colspan="1" height="30"></td>
                </tr>

                <tr>
                    <td align="center" valign="middle">
                        <table align="center" width="565" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border: 4px solid #1C884E">

                            <tr>
                            <tr>
                                <td colspan="1" height="20"></td>
                            </tr>
                            </tr>

                            <tr>
                                <td align="center" valign="middle">
                                    <table align="center" width="475" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                        <tr>
                                                <td align="center" valign="top" width="260">
                                                    <table align="center" width="260" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>Nombres:</label>
                                                                <p>{{$reg->nombres}}</p>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>Apellidos:</label>
                                                                <p>{{$reg->apellidos}}</p>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>Correo Electrónico:</label>
                                                                <p>{{$reg->email}}</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td></td>
                                                <td align="center" valign="top" width="200">

                                                    <table align="center" width="200" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>Celular:</label>
                                                                <p>{{$reg->celular}}</p>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>Fecha de Nacimiento:</label>
                                                                <p>{{$reg->fecha_nac}}</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="middle">
                                                                <label>DNI:</label>
                                                                <p>{{$reg->dni}}</p>
                                                            </td>
                                                        </tr>
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
                                            @if($reg->ciudad == 'ica')
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
                                            @elseif($reg->ciudad == 'cajamarca')
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
                </tbody>
            </table>
            @endforeach
        </td>
    </tr>
    </tbody></table>

</body></html>