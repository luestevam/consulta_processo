


class Status {

  String _titular;
  String _cpf;
  String _status;
  String _numContr;


  Status();

  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "titula"  : this.titular,
      "cpf"     : this.cpf,
      "status"  : this.status,
      "numContr" : this.numContr
    };

    return map;


}

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get titular => _titular;

  set titular(String value) {
    _titular = value;
  }

  String get numContr => _numContr;

  set numContr(String value) {
    _numContr = value;
  }

}

