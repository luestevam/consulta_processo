

class Status {
  String _titular1N;
  String _titular1C;
  String _cpf;
  String _status;
  String _numContra;


  Status();

  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "titula"  : this.titular1N,
      "cpf"     : this._titular1C,
      "status"  : this.status,
      "numContr" : this.numContra
    };

    return map;


}

  String get status => _status;


  String get titular1N => _titular1N;

  set titular1N(String value) {
    _titular1N = value;
  }

  set status(String value) {
    _status = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get titular1C => _titular1C;

  set titular1C(String value) {
    _titular1C = value;
  }

  String get numContra => _numContra;

  set numContra(String value) {
    _numContra = value;
  }

}

