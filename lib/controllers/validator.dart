class Validator {
  static validarDados(String value) {
    if (value.isEmpty) {
      return 'Campo obrigatório';
    }
    return null;
  }

  static validarEmail(String email) {
    if (email.isEmpty) {
      return 'Campo obrigatório';
    }
    for (int i = 0; i < email.length; i++) {
      if (!email[i].contains(RegExp(r'[a-z]')) &&
          email[i] != '@' &&
          email[i] != '.') {
        return 'Caractéres inválidos';
      }
    }

    return null;
  }

  static validarSenha(String senha) {
    int maiusculo = 0;
    int nums = 0;
    int minusculos = 0;

    if (senha.isEmpty) {
      return 'Campo obrigatório';
    }
    if (senha.length < 8) {
      return "A senha deve ter no mínimo 8 caracteres";
    }

    for (int i = 0; i < senha.length; i++) {
      if (!senha[i].contains(RegExp(r'[0-9]')) &&
          !senha[i].contains(RegExp(r'[a-z]')) &&
          !senha[i].contains(RegExp(r'[A-Z]')) &&
          senha[i] != '_' &&
          senha[i] != '.') {
        return 'Caracteres inválidos';
      }
    }

    for (int i = 0; i < senha.length; i++) {
      if (senha[i].contains(RegExp(r'[0-9]'))) {
        nums++;
      }
      if (senha[i].contains(RegExp(r'[A-Z]'))) {
        maiusculo++;
      }
      if (senha[i].contains(RegExp(r'[a-z]'))) {
        minusculos++;
      }
    }

    if (nums < 2) {
      return 'Mínimo dois números';
    }
    if (minusculos < 1) {
      return 'Mínimo uma letra minúscula';
    }
    if (maiusculo < 1) {
      return 'Mínimo uma letra maiúscula';
    }

    return null;
  }

  static validarApelido(String apelido) {
    if (apelido.isEmpty) {
      return 'Campo obrigatório';
    }

    for (int i = 0; i < apelido.length; i++) {
      if (!apelido[i].contains(RegExp(r'[a-z]')) &&
          !apelido[i].contains(RegExp(r'[A-Z]')) &&
          apelido[i] != ' ') {
        return 'Caracteres inválidos';
      }
    }

    if (!apelido[0].contains(RegExp(r'[A-Z]'))) {
      return 'Primeira letra maiúscula';
    }

    for (int i = 1; i < apelido.length; i++) {
      if (apelido[i - 1] == ' ' && !apelido[0].contains(RegExp(r'[A-Z]'))) {
        return 'Primeira letra de cada palavra maiúscula';
      } else {
        if (!apelido[i].contains(RegExp(r'[a-z]'))) {
          return 'Apenas letras minúsculas';
        }
      }
    }

    return null;
  }

  static validarConfirmSenha(String senha, String confirmSenha) {
    if (confirmSenha.isEmpty) {
      return 'Campo obrigatório';
    }
    if (senha != confirmSenha) {
      return 'Senhas diferentes';
    }
    return null;
  }
}
