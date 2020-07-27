<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="container2 fixed-top " id="search-nav"style="margin-top: 88px;height: 80px;background-color: #f8f9fa;padding-top: auto;padding-top: 20px;">

		<div class="row">
			<div class="col-md-6 mt-6 search">
			
					<input type="text" id="keyword"  ><span class="btn" id="search_btn" onclick="search_estate()">검색</span>
			
				
			</div>
			<div class="col-md-6 mt-6 filter-section " >
			 <div class="container .col-md-12 filter-div">
                <a class="navbar-brand js-scroll-trigger btn" href="#page-top">필터</a>
                <a class="navbar-brand js-scroll-trigger btn" href="#page-top">초기화</a>
               
            </div> 
            </div>
            <div class="col-md-12 mt-12 filter-page invisible fixed-top" id="filter-page">
            <form action="" method="post" name="search_form" id="search_form"   style="height: 100%; overflow: scroll;">
            	<div class="col-md-12 mt-12 filter-sub-page" >
		            
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 id="page-up" style="margin-top: 30px;">방종류 <label style="font-size: 11px;">중복선택이 가능합니다<span style="padding-left: 10px;">(상가/사무실,아파트 제외)</span></label></h3> 
	            			<input type="checkbox"value="0" name="build" class="room checked" onclick="search_build('room')"><label class="room_check" style="margin-left: 10px;">원룸 </label>
	            			<input type="checkbox"value="1" name="build" class="room checked" onclick="search_build('room')"><label class="room_check" style="margin-left: 10px;">투ㆍ쓰리룸</label>
	            			<input type="checkbox"value="2" name="build" class="room checked" onclick="search_build('room')"><label class="room_check" style="margin-left: 10px;">오피스텔</label>
	            			<input type="checkbox"value="3" name="build" class="apt " onclick="search_build('apt')"><label class="room_check" style="padding-top: 40px;margin-left: 10px;">아파트</label>
	            			<input type="checkbox"value="4 " name="build" class="store" onclick="search_build('store')"><label class="room_check " style="margin-left: 10px;">상가/사무실 </label>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 style="margin-top: 30px;">매물 종류 <label style="font-size: 11px;">중복선택이 가능합니다</label></h3><br>
	            			<input type="checkbox" class="rentv checked" value="0">	<label>월세</label>
	            			<input type="checkbox" class="rentv checked" value="1">	<label>전세 </label>
	            			<input type="checkbox" class="rentv checked" value="2">	<label>매매</label>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div" style="height: 500px;">
	            			<div class="col-md-12">
		            			<div id="slider1" class="col-md-6 slider" style="text-align: center; padding-left: 10px;padding-top:10px; display:inline-block;">
									<label>보증금/전세가</label>
										<span id="deposits" class="invisible slider"></span>
								</div>
								<div class="col-md-6" style="display:inline; ">
									<label style="margin-left: 50px; margin-top: 80px;">
										<span id="deposits_val1"></span> / <span id="deposits_val2"></span>
									<input type="hidden" name="deposits_from" id="deposits_from" readonly="readonly" >
									<input type="hidden" name="deposits_to" readonly="readonly" id="deposits_to"></label>
								</div>
							</div>
							<div class="col-md-12">
								<div id="slider2" class="col-md-6 slider" style="text-align: center; padding-left: 10px;padding-top: 70px;display:inline-block;">
									<label>월세</label>
										<span id="monthmoenys" class="invisible slider"></span>
									
								</div>
								<div class="col-md-6" style="display:inline; margin-top: 30px"><label>

									<span id="monthmoenys_val1"></span> / <span id="monthmoenys_val2"></span>
									<input type="hidden" name="monthmoenys_from" id="monthmoenys_from" readonly="readonly" >
									<input type="hidden" name="monthmoenys_to" readonly="readonly" id="monthmoenys_to">
									</label></div>
							</div>
							<div class="col-md-6">
								<div id="slider3" class="col-md-6 slider" style="text-align: center; padding-left: 10px;padding-top: 70px;display:inline-block;">
									<label>매매가</label>
										<span id="trades" class="invisible slider"></span>
		
								</div>
								<div class="col-md-6" style="display:inline;"><label>
								
								<span id="trades_val1"></span> / <span id="trades_val2"></span>
									<input type="hidden" name="trades_from" id="trades_from" readonly="readonly" >
									<input type="hidden" name="trades_to" readonly="readonly" id="trades_to">
								</label></div>
							</div>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 style="margin-top: 30px;">방크기(전용면적)</h3><br>
	            			<div class="col-md-12">
								<div id="slider3" class="col-md-6 slider" style="text-align: center; padding-left: 10px;padding-top: 10px;display:inline-block;">
									
										<span id="roomArea" class="invisible slider"></span>
		
								</div>
								<div class="col-md-6" style="display:inline;"><label>
								
								<span id="roomArea_val1"></span> / <span id="roomArea_val2"></span>
									<input type="hidden" name="roomArea_from" id="roomArea_from" readonly="readonly" >
									<input type="hidden" name="roomArea_to" readonly="readonly" id="roomArea_to">
								</label></div>
							</div>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 style="margin-top: 30px;">관리비</h3><br>
	            			<div class="col-md-12">
								<div id="slider3" class="col-md-6 slider" style="text-align: center; padding-left: 10px;padding-top: 10px;display:inline-block;">
									
										<span id="roomCare" class="invisible slider"></span>
		
								</div>
								<div class="col-md-6" style="display:inline;"><label>
									<span id="roomCare_val1"></span> / <span id="roomCare_val2"></span>
									<input type="hidden" name="roomCare_from" id="roomCare_from" readonly="readonly" >
									<input type="hidden" name="roomCare_to" readonly="readonly" id="roomCare_to">
								</label></div>
							</div>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 style="margin-top: 30px;">층수 <label style="font-size: 11px;">중복선택이 가능합니다</label></h3><br>
	            			<input type="checkbox" name="floor " value="0">	<label>전체</label>
	            			<input type="checkbox" name="floor "value="1" class="checked">	<label>1층</label>
	            			<input type="checkbox" name="floor "value="2" class="checked">	<label>2층</label>
	            			<input type="checkbox" name="floor "value="3" class="checked">	<label>3층</label>
	            			<input type="checkbox" name="floor "value="4" class="checked">	<label>4층</label>
	            			<input type="checkbox" name="floor "value="5" class="checked">	<label>5층</label>
	            			<input type="checkbox" name="floor "value="6" class="checked">	<label>6층</label>
	            			<input type="checkbox" name="floor "value="7" class="checked">	<label>7층이상</label>
	            			<input type="checkbox" name="floor" value="8">	<label>반지층</label>
	            			<input type="checkbox" name="floor" value="9">	<label>옥탑</label>
	            		</div>
	            		<div class="col-md-12 mt-12 filter-sub-page-div">
	            			<h3 style="margin-top: 30px;">방구조<label style="font-size: 11px;">중복선택이 가능합니다</label></h3><br>
	            			
	            			<input type="checkbox" name="room"value="0" class="checked">	<label>주방분리형(1.5룸)</label>
	            			<input type="checkbox" name="room"value="1" class="checked">	<label>복층</label>
	            			<input type="checkbox" name="room"value="2" class="checked">	<label>투름</label>
	            			<input type="checkbox" name="room"value="3" class="checked">	<label>쓰리룸</label>
	            			
							<input type="hidden" name="cntPerPage" id="cntPerPage_val" value="10">
							<input type="hidden" name="nowPage" id="nowPage"value="1"> 
							<input type="hidden" name="keyword" id="keyword_val">
	            			<input type="hidden" id="esvo" value="${esvo}">
	            			<input type="hidden" id="paging_val" name="paging" value="">
	            		</div>	            		
	            		<div class="col-md-12 mt-12 filter-sub-page-div filter-div last">
	            			
	            				<a class="btn" id="filter_apply" onclick="submit()" href="#page-up">적용하기</a>
	            				<a class="btn" id="filter_close" href="#page-up">닫기</a>
	            		</div>
            	
	            	
            	</div>
            	</form>
            	
            </div>
		</div>
	</div>
	
<script>
	$(function(){
		$(".checked").prop("checked",true)
		
		
		
		 var custom_values = ['0만원','500만원','1000만원','1500만원','2000만원','2500만원','3000만원','3500만원','4000만원','4500만원',
			 '5000만원','5500만원','6000만원','6500만원','7000만원','7500만원','8000만원','8500만원','9000만원','9500만원','1억',
			 '1억500만원','1억1000만원','1억1500만원','1억2000만원','1억2500만원','1억3000만원','1억3500만원','1억4000만원','1억4500만원',
			 '1억5000만원','1억5500만원','1억6000만원','1억6500만원','1억7000만원','1억7500만원','1억8000만원','1억8500만원','1억9000만원',
			 '1억9500만원','2억','2억500만원','2억1000만원','2억1500만원','2억2000만원','2억2500만원','2억3000만원','2억3500만원','2억4000만원',
			 '2억4500만원','2억5000만원','2억5500만원','2억6000만원','2억6500만원','2억7000만원','2억7500만원','2억8000만원','2억8500만원','2억9000만원',
			 '2억9500만원','3억','3억500만원','3억1000만원','3억1500만원','3억2000만원','3억2500만원','3억3000만원','3억3500만원','3억4000만원',
			 '3억4500만원','3억5000만원','3억5500만원','3억6000만원','3억6500만원','3억7000만원','3억7500만원','3억8000만원','3억8500만원','3억9000만원',
			 '3억9500만원','4억','4억500만원','4억1000만원','4억1500만원','4억2000만원','4억2500만원','4억3000만원','4억3500만원','4억4000만원',
			 '4억4500만원','4억5000만원','4억5500만원','4억6000만원','4억6500만원','4억7000만원','4억7500만원','4억8000만원','4억8500만원','4억9000만원',
			 '4억9500만원','5억','5억500만원','5억1000만원','5억1500만원','5억2000만원','5억2500만원','5억3000만원','5억3500만원','5억4000만원',
			 '5억4500만원','5억5000만원','5억5500만원','5억6000만원','5억6500만원','5억7000만원','5억7500만원','5억8000만원','5억8500만원','5억9000만원',
			 '5억9500만원','6억','6억500만원','6억1000만원','6억1500만원','6억2000만원','6억2500만원','6억3000만원','6억3500만원','6억4000만원',
			 '6억4500만원','6억5000만원','6억5500만원','6억6000만원','6억6500만원','6억7000만원','6억7500만원','6억8000만원','6억8500만원','6억9000만원',
			 '6억9500만원','7억','7억500만원','7억1000만원','7억1500만원','7억2000만원','7억2500만원','7억3000만원','7억3500만원','7억4000만원',
			 '7억4500만원','7억5000만원','7억5500만원','7억6000만원','7억6500만원','7억7000만원','7억7500만원','7억8000만원','7억8500만원','7억9000만원',
			 '7억9500만원','8억','8억500만원','8억1000만원','8억1500만원','8억2000만원','8억2500만원','8억3000만원','8억3500만원','8억4000만원',
			 '8억4500만원','8억5000만원','8억5500만원','8억6000만원','8억6500만원','8억7000만원','8억7500만원','8억8000만원','8억8500만원','8억9000만원',
			 '8억9500만원','9억','무제한'];
		    // be careful! FROM and TO should be index of values array
		    var my_from = custom_values.indexOf(0);
		    var my_to = custom_values.indexOf('무제한');
		    
		    $("#deposits").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        from: my_from,
		        to: my_to,
		        step: 500,
		        values: custom_values,
		        onChange: function (data) {
		        	 
			            
			            $("#deposits_val1").text(data.from_value);
			        	$("#deposits_val2").text(data.to_value);
			        	$("#deposits_from").val(data.from_value)
			        	$("#deposits_to").val(data.to_value);
		            
		        },
		        onStart: function(data){
		        	$("#deposits_val1").text(data.from_value);
		        	$("#deposits_val2").text(data.to_value);
		        	$("#deposits_from").val(data.from_value)
		        	$("#deposits_to").val(data.to_value);
		        }
		        
		        
		       
		    });
		    
		 
		    
		    month=['0만원','10만원','20만원','30만원','40만원','50만원','60만원','70만원','80만원','90만원','100만원','110만원','120만원','130만원',
		    	'140만원','150만원','160만원','170만원','180만원','190만원','200만원','210만원','220만원','230만원','240만원','250만원','260만원',
		    	'270만원','280만원','290만원','300만원','무제한']
		    $("#monthmoenys").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        from: 0,
		        to: 300,
		        values:month, 
		        step: 5,
		        grid:true,
		        onChange: function (data) {
		        	 console.log(data.from);
			            
			            $("#monthmoenys_val1").text(data.from_value);
			        	$("#monthmoenys_val2").text(data.to_value);
			        	$("#monthmoenys_from").val(data.from_value)
			        	$("#monthmoenys_to").val(data.to_value);
		            
		        },
		        onStart: function(data){
		        	$("#monthmoenys_val1").text(data.from_value);
		        	$("#monthmoenys_val2").text(data.to_value);
		        	$("#monthmoenys_from").val(data.from_value)
		        	$("#monthmoenys_to").val(data.to_value);
		        }
		        
		       
		    });
		    trade=[]
			for(i=0;i<150000;i+=1000){
				if(i>10000){
					t=i/10000;
					a=i%10000;
					t=Math.floor(t);
					text=t+'억'+a+'만원'
					if(a===0){
					text=t+'억'						
					}
					trade.push(text)
				}else{
				trade.push(i+'만원');					
				}
				
			}
		    trade.push("무제한")
		    $("#trades").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:trade, 
		        step: 5,
		        onChange: function (data) {
		        	
			           
			            $("#trades_val1").text(data.from_value);
			        	$("#trades_val2").text(data.to_value);
			        	$("#trades_from").val(data.from_value)
			        	$("#trades_to").val(data.to_value);
		            
		        },onStart: function(data){
		        	$("#trades_val1").text(data.from_value);
		        	$("#trades_val2").text(data.to_value);
		        	$("#trades_from").val(data.from_value)
		        	$("#trades_to").val(data.to_value);
		        }
		        
		       
		    });
		    var roomArea=[]
		    for(i=0;i<=115;i++){
		    	var pung=i/3.305785;
		    	pung=Math.floor(pung);
		    	roomArea.push(i+"m²("+pung+")평")
		    }
		    roomArea.push("무제한")
		    $("#roomArea").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:roomArea, 
		        step: 5,
		        onChange: function (data) {
		        	 
			            $("#roomArea_val1").text(data.from_value);
			        	$("#roomArea_val2").text(data.to_value);
			        	$("#roomArea_from").val(data.from_value)
			        	$("#roomArea_to").val(data.to_value);

		        },onStart: function(data){
		        	$("#roomArea_val1").text(data.from_value);
		        	$("#roomArea_val2").text(data.to_value);
		        	$("#roomArea_from").val(data.from_value)
		        	$("#roomArea_to").val(data.to_value);
		        }
		        
		       
		    });
		    
		    
		    roomCare=[]
			for(i=0;i<=50;i+=2){
				roomCare.push(i+"만원")
				
			}
		    roomCare.push("무제한")
		    $("#roomCare").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:roomCare, 
		        step: 5,
		        onChange: function (data) {
		            console.log(data.from);
		            console.log(data.to);
		            console.log(data);
		            console.log(data.from_value);
		            console.log(data.to_value);
		           
		            $("#roomCare_val1").text(data.from_value);
		        	$("#roomCare_val2").text(data.to_value);
		        	$("#roomCare_from").val(data.from_value)
		        	$("#roomCare_to").val(data.to_value);
		            
		        },onStart: function(data){
		        	$("#roomCare_val1").text(data.from_value);
		        	$("#roomCare_val2").text(data.to_value);
		        	$("#roomCare_from").val(data.from_value)
		        	$("#roomCare_to").val(data.to_value);
		        }
		        
		       
		    });
		    
		    
		    
	});
	
	function search_build(text){
		if (text==="room"){
			$(".apt").prop( "checked", false );
			$(".store").prop( "checked", false );
		}else if(text==="apt"){
			$(".room").prop( "checked", false );
			$(".store").prop( "checked", false );
		}else if(text==="store"){
			$(".apt").prop( "checked", false );
			$(".room").prop( "checked", false );
		}
	}
	// 검색필터 적용시키는 function
	function submit(){
		
		$("#keyword_val").val($("#keyword").val());
		search_Ajax($('#search_form'),'filter')
		
		
	}
	//검색버튼클릭시 실행되는 function
	function search_estate(){
		search_Ajax($('#search_form'),'button')
	}
	
	// ajaxfunction
	function search_Ajax(data,text){
		var formData='';
		if(text==='filter'){
			formData= data.serialize();
		}else if(text==='button'){
			$("#keyword_val").val($("#keyword").val());
			formData= data.serialize();
		}
		$.ajax({
			cache: false,
			url:'estatelist',
	        type: 'POST',
	        data: formData,
	        success: function(data){
	        	$('#listtarget').html(data);
				$("#cntPerPage_val").val($('#cntPerPage').val());
	        }
		});
	}
</script>