class TValidator{
  static String? validatEmail(String?value){
    if(value==null || value.isEmpty){
      return 'Email is required';
    }

    //Regular expression for email validation
    final emailRegExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email adress';
    }
    return null;
  }


  static String? validatPassword(String?value){
    if(value==null || value.isEmpty){
      return 'password is required';
    }

  if(value.length<6){
    return 'Password must be at last 6 character letter';
  }

  if(!value.contains(RegExp(r'[0-9]'))){
    return 'Password must be at last one number';
  }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must be at last one uppercase letter';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?"{}|<>]'))){
      return 'Password must be at last one special character';
    }
    return null;
  }
}