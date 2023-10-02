class SecurityManager{
  String code = "ND";

  SecurityManager();

  bool isCodeValid(String code){
    //the right code should be
    // serverCode = securityService.getCode(accountName);
    // return code == serverCode;
    return code == code;
  }
}