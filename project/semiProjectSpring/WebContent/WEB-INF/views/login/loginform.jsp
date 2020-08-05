<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
  <meta name="description" content="">
  <meta name="author" content="">
   <link href="resources/css/customer_board/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="resources/css/customer_board/sb-admin-2.min.css" rel="stylesheet">
  
<%@ include file="../include/header_menu.jsp"%>

<body class="bg-gradient-primary">

  <div class="container">
 
    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
<!--               <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">환영합니다!</h1>
                  </div>
                  <form action="loginPost" method="post">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" name="aid" placeholder="id를 입력해주세요.">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" name="apwd" placeholder="비밀번호를 입력해주세요.">
                    </div>
                    <input type="button" class="btn btn-primary btn-user btn-block" onclick="idchk()" value="Login" >
<!--                     <hr> -->
<!--                     <a href="index.html" class="btn btn-google btn-user btn-block"> -->
<!--                       <i class="fab fa-google fa-fw"></i> Login with Google -->
<!--                     </a> -->
<!--                     <a href="index.html" class="btn btn-facebook btn-user btn-block"> -->
<!--                       <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook -->
<!--                     </a> -->
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="findID">비밀번호를 잊으셨나요?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="choose">아직 계정이 없으시군요?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" id="login_chk" style="color: red;"></a>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
        </div>
				<form  id="user">
	            		<input type='hidden' value='${user.aid}' name='aid'>
	            		<input type='hidden' value='${user.apwd}' name='apwd'>
	           	</form>
      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/js/login/jquery.min.js"></script>
  <script src="resources/js/login/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/js/login/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/js/login/sb-admin-2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	var newForm=$("#user");
	function idchk(){
		console.log($('#exampleInputEmail').val())
			$.ajax({
			url : "loginPost" ,
			type : "post" ,
			data : {aid : $('#exampleInputEmail').val() ,
				 	apwd : $('#exampleInputPassword').val(),
					tab : 'ajax'	 	
			},
			success : function(result) {
				try{
					tokenins();	
				}catch(err){
					alert(err)
				}
				
				location = "loginPost?aid="+$('#exampleInputEmail').val()+"&apwd="+$('#exampleInputPassword').val()+"&tab=location"
			} ,
			error : function(result){
				$('#login_chk').text("아이디와 비밀번호가 틀렸습니다.");
			}
			});
	}
	
	function submit(){
		newForm.attr('method','post');
		newForm.attr("action", "/semiProjectSpring/loginPost");
		newForm.submit();		
		
	}
	
	function tokenins(){
	
	messaging.getToken().then(token =>{
		$.ajax({
			url : "logintokenins?aid="+$('#exampleInputEmail').val()+"&token="+token,
			type : "get" ,
			success : function(result) {
					console.log("pass");
			}
		});
	});
	
	}
	
	</script>
</body>
<div style="margin-bottom: 150px;">

</div>
<%@ include file="../include/footer.jsp"%>
