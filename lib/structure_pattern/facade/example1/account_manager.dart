class AccountManager{

  bool isValid(String accountName){
    //the right code should be check valid in the server through api
    if(accountName.contains("duy")){
      return true;
    }
    return false;
  }
}