import 'package:flutter/material.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

class YandexAuthButton extends StatelessWidget {
final String clientId;
final String redirectUri;

YandexAuthButton({required this.clientId, required this.redirectUri});

@override
Widget build(BuildContext context) {
return Container(
width: 200,
child: ElevatedButton(
onPressed: () async {
// Параметры для авторизации через Яндекс
String authUrl = 'https://oauth.yandex.com/authorize';
String responseType = 'token';
String scope = 'login:email';

// Формирование URL для авторизации
String url =
'$authUrl?response_type=$responseType&client_id=$clientId&redirect_uri=$redirectUri&scope=$scope';

// Открытие авторизации в браузере
final result = await FlutterWebAuth.authenticate(
url: url,
callbackUrlScheme: redirectUri,
);

// Получение токена из результата авторизации
final token = Uri.parse(result).fragment;

// Действия с полученным токеном (например, сохранение)
print('Авторизация успешна! Токен: $token');
},
child: Text('Авторизация с Яндексом'),
),
);
}
}