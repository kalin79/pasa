<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>GRACIAS POR SUSCRIBIRSE - EL QUINDE</title>

  <style type="text/css" media="screen">
      body{
        font-family: Arial, sans-serif;
      }

      .arial{
        font-family: Arial, sans-serif;
      }

      .sans-serif{
        font-family: sans-serif, Arial;
      }
  </style>
</head>

<body style="margin: 0">
    <table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#f7f7f7">
        <tr>
            <td>
                <table align="center" width="700" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
                    <tr>
                        <td align="center" valign="middle"  width="700">
                            <img src="{{ asset('mailing/bg-top.png')}}" alt="GRACIAS POR SUSCRIBIRSE- EL QUINDE" width="700" style="display: block;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" height="60"></td>
                    </tr>
                    <tr>
                        <td colspan="1" height="15"></td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            <h2 style="margin: 0; color: #FF0000; font-size: 28px;">¡GRACIAS POR <br>SUSCRIBIRSE!</h2>
                            <p style="margin: 0; margin-top: 10px; font-size: 14px;">Muy pronto estará recibiendo las últimas novedades,<br>eventos y promociones en su bandeja de correo.</p>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle"  width="700">
                            <img src="{{ asset('mailing/bg-plantas.png')}}" width="700" style="display: block;">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle"  width="700">
                            <table align="center" width="700" border="0" cellspacing="0" cellpadding="0" bgcolor="#18864A" style="color: #FFFFFF;">
                                <tr>
                                    <td colspan="3" height="20"></td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle"  width="240">
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
                                    <td align="center" valign="middle"  width="240">
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
                                    <td align="center" valign="middle"  width="220">
                                        <table align="center" width="200" border="0" cellspacing="0" cellpadding="0" bgcolor="#18864A" style="color: #FFFFFF;">
                                            <tr>
                                                @foreach($registro as $reg)
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
                                                @endforeach
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="1" height="20"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>