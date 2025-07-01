abstract class Document {
  final String value;
  final String valueFormated;

  const Document(this.value, this.valueFormated);
}

final class CNPJ implements Document {
  @override
  late final String value;
  @override
  late final String valueFormated;

  CNPJ(String cnpj) {
    // desformata
    final numericOnly = cnpj.replaceAll(RegExp(r'\D'), '');

    // valida
    if (!_isValidCnpj(cnpj)) throw ArgumentError('CNPJ inválido');

    // salvar
    value = (numericOnly);
    valueFormated = cnpj;
  }

  bool _isValidCnpj(String v) {
    return true;
  }
}

final class CPF implements Document {
  @override
  late final String value;
  @override
  late final String valueFormated;

  CPF(String cpf) {
    // desformata
    final numericOnly = cpf.replaceAll(RegExp(r'\D'), '');

    // valida
    if (!_isValidCpf(cpf)) throw ArgumentError('CPF inválido');

    // salvar
    value = (numericOnly);
    valueFormated = cpf;
  }

  bool _isValidCpf(String v) {
    return true;
  }
}