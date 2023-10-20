import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:simulado2/widgets/toast.dart';

class Api {
  static logar(String email, String senha, context) async {
    try {
      final url = Uri.parse('https://fredaugusto.com.br/simuladodrs/token');

      final req = http.MultipartRequest('POST', url);
      req.fields['email'] = email;
      req.fields['senha'] = senha;

      final res = await req.send();

      if (res.statusCode == 200) {
        Map<String, dynamic> data =
            jsonDecode(await res.stream.bytesToString());
        final token = data['access_token'];
        Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
        final nome = decodedToken['apelido_user'];
        MyToast.gerarToast('Bem vindo $nome');
        Navigator.pushNamed(context, '/home');
      } else {
        MyToast.gerarToast('Erro ao logar');
      }
    } catch (e) {
      MyToast.gerarToast('Erro ao logar');
    }
  }

  static cadastrar(String nome, String email, String senha, context) async {
    try {
      final url = Uri.parse('https://fredaugusto.com.br/simuladodrs/users');

      final req = http.MultipartRequest('POST', url);
      req.fields['nome_user'] = nome;
      req.fields['email_user'] = email;
      req.fields['senha_user'] = senha;

      final res = await req.send();

      if (res.statusCode == 200) {
        MyToast.gerarToast('Usuário cadastrado com sucesso');
        Navigator.pushNamed(context, '/login');
      } else {
        MyToast.gerarToast('Erro ao cadastrar');
      }
    } catch (e) {
      MyToast.gerarToast('Erro ao cadastrar');
    }
  }
}
