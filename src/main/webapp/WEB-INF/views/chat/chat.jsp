<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<!-- ���� ��� -->
  	<c:import url="/import/head"/>
    <!-- chat -->
    <script src="<c:url value="/js/simple-chat.js"/>"></script>
</head>
<body class="left-menu">  
    
    <!-- menu -->
    <c:import url="/import/menu"/>
 
    <div id="wrapper">
        <div class="section bgcolor noover">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message">
                            <h3><mark class="rotate">Hi </mark> ������ ����� �����غ��ô�</h3>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end section -->

        

        <section class="section lb">
            <div class="container">
                <div class="section-title text-center">
                    <h3>�ǽð� ä��</h3>
                    <p>Ip ������� ������ �ǽð� ä�� �� ���ø����̼� �Դϴ�.</p>
                </div><!-- end title -->
				<div id="chatApp" class="chat-app" style="width:100%;height:400px;">
					<div class="chat-area">
						<div class="chat-div">
							<div class="chat-name">
								127.0.0.1
							</div>
							<div class="chat-msg">
								�ȳ��ϼ���aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdasdadadasdasdasdasdasdasdasdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaa
							</div>
							<div class="chat-date">
								2013-11-10 12:13:00
							</div>
						</div>
					</div>
				</div>
            </div>
        </section>    

        <section class="section bgcolor">
            <div class="container">
                <a href="#">
                <div class="row callout">
                    <div class="col-md-4 text-center">
                        <h3><sup></sup>Chat</h3>
                        <h4>�α��� ���� ä��</h4>
                    </div><!-- end col -->

                    <div class="col-md-8">
                        <p class="lead" style="font-size:20px;">�α��α��� �����ϸ� �ð��� ���̰ɸ��ϱ� �׳� IP������� ��������.</p>
                    </div>
                </div><!-- end row -->
                </a>
            </div><!-- end container -->  
        </section>

        <footer class="section footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="widget clearfix">
                            <div class="newsletter-widget">
                                <p>You can opt out of our newsletters at any time.<br> See our <a href="#">privacy policy</a>.</p>
                                
                            </div><!-- end newsletter -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-2 col-md-4">
                        <div class="widget clearfix">
                            <div class="list-widget">   
                                <ul>
                                    <li><a href="page-about.html">About us</a></li>
                                    <li><a href="page-about-me.html">About me</a></li>
                                    <li><a href="page-services.html">Our Services</a></li>
                                    <li><a href="page-team.html">Our Team</a></li>
                                    <li><a href="page-contact-01.html">Contact us</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-2 col-md-4">
                        <div class="widget clearfix">
                            <div class="list-widget">   
                                <ul>
                                    <li><a href="page-contact-02.html">Get In Touch</a></li>
                                    <li><a href="page-faqs.html">FAQ's</a></li>
                                    <li><a href="page-testimonials.html">Testimonials</a></li>
                                    <li><a href="page-elements-html">Elements</a></li>
                                    <li><a href="page-404.html">Not Found</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-lg-2 col-md-4">
                        <div class="widget clearfix">
                            <div class="list-widget">   
                                <ul>
                                    <li><a href="shop-checkout.html">Checkout</a></li>
                                    <li><a href="shop-cart.html">Shopping Cart</a></li>
                                    <li><a href="shop-account.html">My Account</a></li>
                                    <li><a href="shop-login.html">Login / Register</a></li>
                                </ul>
                            </div><!-- end list-widget -->
                        </div><!-- end widget -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </footer><!-- end footer -->

        <div class="section copyrights">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="cop-logo">
                            <img src="/images/logo-normal.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 text-right">
                        <div class="cop-links">
                            <ul class="list-inline">
                                <li>&copy; 2018 Genius | Design: <a href="https://html.design">HTML Design</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- end wrapper -->

    <script>
    	function getRecentChat(){
			$.ajax({  
				type: 'get',  
				url: '/api/msg/recent.do',  
				async: true,
				data: {},  
				success: function(data){
					console.log(data)
				},  
				dataType: "json"  
			});  
    	}
    	
    	function postChat(msg){
			$.ajax({  
				type: 'post',  
				url: '/api/msg/chat.do',  
				async: true,
				data: {msg:msg},  
				success: function(data){
					if(data == 1){
						
					}else{
						alert('ä�� �Է¿� �����߽��ϴ�.')
					}
				},
				dataType: "text"  
			});  
    	}
    	
    	var simpleChat = new SimpleChat(document.getElementById('chatApp'), {
    		onMsgPost : function(input){
    			console.log(input);
    		}
    	});
		window.onload = function(){
			
		}
		
		
		
	    var ws;
	    
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED ){
                writeResponse("WebSocket is already opened.");
                return;
            }
            //������ ��ü ����� �ڵ�
            ws = new WebSocket("ws://localhost:8080/ws/chat.do");
            
            ws.onopen = function(event){
                if(event.data === undefined){
              		return;
                }
                writeResponse(event.data);
            };
            
            ws.onmessage = function(event){
                console.log('writeResponse');
                console.log(event.data)
                //console.log(event.data);
            };
            
            ws.onclose = function(event){
                console.log("��ȭ ����");
            }
            
        }
        
        function send(){
           // var text=document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            var text = document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            ws.send(text);
            text = "";
        }
        
        function closeSocket(){
            ws.close();
        }
        
        function writeResponse(text){
            messages.innerHTML += "<br/>"+text;
        }

        function clearText(){
            console.log(messages.parentNode);
            messages.parentNode.removeChild(messages)
      	}
        
    </script>

</body>
</html>