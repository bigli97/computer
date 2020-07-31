(function ($) {
    "use strict";
    var mainApp = {
        initFunction: function () {
            $('#main-menu').metisMenu();
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });
        },
        initialization: function () {
            mainApp.initFunction();
        }
    }
    // Initializing ///	
	
    $(document).ready(function () {
        mainApp.initFunction(); 
		$("#sideNav").click(function(){
			if($(this).hasClass('closed')){
				$('.navbar-side').animate({left: '0px'});
				$(this).removeClass('closed');
				$('#page-wrapper').animate({'margin-left' : '260px'});
			}
			else{
			    $(this).addClass('closed');
				$('.navbar-side').animate({left: '-260px'});
				$('#page-wrapper').animate({'margin-left' : '0px'}); 
			}
		});
		
		$("#sideNav").addClass('closed');
		$('.navbar-side').animate({left: '-260px'});
		$('#page-wrapper').animate({'margin-left' : '0px'});
		
		$("#w2").css("width","150%");
		$("#w4").css("width","150%");
		$("#k5").css("padding","50px");
		$("#page-inner2").hide();
		
		$("#k2").click(function(){
			$("#page-inner1").hide();
        	$("#page-inner2").show();
        	$("#k3").removeClass("active-menu");
			$("#k2").addClass("active-menu");
		})
		
		$("#k3").click(function(){
			$("#page-inner2").hide();
        	$("#page-inner1").show();
        	$("#k2").removeClass("active-menu");
			$("#k3").addClass("active-menu");
		})
		
		//*****************************vue*********************************************
		var dataVue = {
            beans: [],
            beans2: [],
        };
        var vue = new Vue({
            el: '#page-inner',
            data: dataVue,
            mounted:function(){ //mounted　表示这个 Vue 对象加载成功了
                this.list();
                this.list2();
            },
            methods: {
                list:function(){
                    var url =  'getComputerAll';
                    axios.get(url).then(function(response) {
                        vue.beans = response.data.data;
                        console.log(vue.beans);
                    });
                },
                list2:function(){
                    var url =  'getHDFSAll';
                    axios.get(url).then(function(response) {
                        vue.beans2 = response.data.data;
                        console.log(vue.beans2);
                    });
                }
            }
        });
		//**********************************vue*****************************************
    });

}(jQuery));
