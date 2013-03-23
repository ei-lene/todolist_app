$(document).ready(function(){

  // DOM selector
  var displayName = $('#user_display_name'),
      userName = $('#user_name'),
      email = $('#user_email'),
      emailConfirmation = $('#user_email_confirmation'),
      emailInputs = $('#user_email, #user_email_confirmation'),
      password = $('#user_password'),
      passwordConfirmation = $('#user_password_confirmation'),
      passwordInputs = $('#user_password, #user_password_confirmation'),

      displayNameError = $('#displayname_error'),
      userNameError = $('#username_error'),
      emailError = $('#email_error'),
      emailConfError = $('#email_confirmation_error'),
      passwordError = $('#password_error'),
      passwordConfError = $('#password_confirmation_error'),
      newUserForm = $('#new_user') ;
  
  $('span').hide(); // Initially hide error message spans

  // Validation functions
  function validateDisplayname(){
    var displayNameVal = displayName.val();  
    if(displayNameVal.length < 3) {
      displayNameError.show().addClass('red');
      return false;
    }
    else {
      displayNameError.hide().addClass('red');
      return true;
    }
  }

  function validateUsername(){
    var userNameVal = userName.val();
    var alphabet = /[a-zA-Z]/;
    if(userNameVal.length < 3 || !alphabet.test(userNameVal)) {
      userNameError.show().addClass('red');
      return false;
    }
    else {
      userNameError.hide();
      return true;
    }
  }


  function validateEmail() {
    var emailVal = email.val();
    var e = /^[-a-z-A-Z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/;
    if(!e.test(emailVal)) {
      emailError.show().addClass('red');
      return false;
    }
    else {
      emailError.hide();
      emailConfError.hide();
      return true;
    }
  }

  function validatePassword(){
    var passwordVal = password.val();
    if(passwordVal.length < 6) {
      passwordError.show().text("Password should have at least 6 characters").addClass('red');
      return false;
    }
    else {
      passwordError.hide();
      passwordConfError.hide();
      return true;
    }
  }

  function validatePasswordStrength(){
    var lowercase = /[a-z]/
    var uppercase = /[A-Z]/
    var numeric = /[0-9]/
    var passwordVal = password.val();
    passwordError.show(); 
    if(lowercase.test(passwordVal) && uppercase.test(passwordVal) && numeric.test(passwordVal)){
      
      passwordError.text("Password strength: Strong").removeClass().addClass('green');
    }
    else if(lowercase.test(passwordVal) && uppercase.test(passwordVal)){
      passwordError.text("Password strength: Medium").removeClass().addClass('amber');
    }
    else if(numeric.test(passwordVal) && uppercase.test(passwordVal)){
      passwordError.text("Password strength: Medium").removeClass().addClass('amber');
    }
    else if(numeric.test(passwordVal) && lowercase.test(passwordVal)){
      passwordError.text("Password strength: Medium").removeClass().addClass('amber');
    }
    else {
      passwordError.text("Password strength: Weak").addClass('red');
    }
  }

  // Validate input formats on Blur
  displayName.blur(function(){
    validateDisplayname(); 
  });

  userName.blur(function(){
    validateUsername(); 
  });

  email.blur(function(){
    validateEmail(); 
  });

  password.blur(function(){
    validatePassword(); 
  });

  password.keyup(function(){
     validatePasswordStrength(); 
  });


  // Email confirmation validation on Keyup and Blur
  emailInputs.keyup(function(){
    emailConfVal = emailConfirmation.val();
    emailVal = email.val();
    emailConfError.show(); 
    if(emailVal===''||emailConfVal==='') {
        emailConfError.hide();
    }
    else if(emailVal === emailConfVal){
      emailConfError.text("Email entries match").addClass('green');
    }       
    else {
      emailConfError.hide();
      emailConfError.text("Confirmation email does not match email").addClass('red');
      emailConfError.show();
    }
  }); 

  emailConfirmation.blur(function(){
    emailConfVal = emailConfirmation.val();
    emailVal = email.val();
    emailConfError.show(); 
    if(emailVal===''||emailConfVal==='') {
        emailConfError.hide();
    }
    else if(emailVal === emailConfVal){
      emailConfError.text("Email entries match").addClass('green');
    } 
  });

  // Password confirmation validation on Keyup and Blur
  passwordInputs.keyup(function(){
    passwordConfVal = passwordConfirmation.val();
    passwordVal = password.val();
    passwordConfError.show(); 
    if(passwordVal===''||passwordConfVal==='') {
        passwordConfError.hide();
    }
    else if(passwordVal === passwordConfVal){
      passwordConfError.text("Password entries match").addClass('green');
    }       
    else {
      passwordConfError.hide();
      passwordConfError.text("Confirmation password does not match password").addClass('red');
      passwordConfError.show();
    }
  }); 

  passwordConfirmation.blur(function(){
    passwordConfVal = passwordConfirmation.val();
    passwordVal = password.val();
    passwordConfError.show().addClass('red');
    if(passwordVal===''||passwordConfVal==='') {
      passwordConfError.hide();
    }
    else if(passwordVal === passwordConfVal){
      passwordConfError.text("Password entries match").addClass('green');
    } 
  });  

  // Validation on submit
  newUserForm.submit(function(){  
    if(validateDisplayname() & validateUsername() & validateEmail() & validatePassword()) {
      return true;
    } 
    else {
      return false;
    }
  }); // end submit form

}); // end document ready