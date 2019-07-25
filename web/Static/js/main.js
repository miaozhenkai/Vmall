
/****************帮助*****************/
$(function(){
    $(".help_container_nav .hd").click(function(){
        $(this).toggleClass("on").siblings(".help_container_nav .hd").removeClass("on")
        $(this).next(".help_container_nav .bd").slideToggle(500).siblings(".help_container_nav .bd").slideUp(500);
    })

})


$(function(){
    $("#back-to-top").click(function(){
        $('body,html').animate({scrollTop:0},1000);
        return false;
    });

});


function t(str){
		var nr='<div class="small_tan_tip f16">'+str+'</div>';
		layer.open({
		  type: 1,
		  time:2200,
		  area: ['300px', '72px'],
		  shade: [0.5, '#000'],
		  closeBtn:0,
		  title: false,
		  content: nr
		}); 		
}

function dt(str,act){
	   var nr;
	    nr='        <div class="small_tan_tip_w">';
        nr=nr+'       <div class="small_tan_tip f16">'+str+'</div>';
        nr=nr+'      <div class="small_tan_tip_bot f14 clear">';
        nr=nr+'          <a class="an_niu tc__close"   href="javascript:;"  >确认</a>';
         nr=nr+'     </div> </div>';
		
		layer.open({
		  type: 1,
		  area: ['300px', '112px'],
		  shade: [0.5, '#000'],
		  closeBtn:0,
		  title: false, 
		  content: nr,
		  end:function(){
			  eval(act);
		  }
		  }); 
}

function w(str,act){
	var nr;
	   nr='        <div class="small_tan_tip_w">';
       nr=nr+'      <div class="small_tan_tip f16">'+str+'</div>';
       nr=nr+'      <div class="small_tan_tip_bot f14 clear">';
        nr=nr+'      <input type="hidden" id="tc__wact" value="'+act+'">';
        nr=nr+'      <a class="an_niu w50 fl" href="javascript:;"  id="tc__wok">确认</a>';
         nr=nr+'     <a class="an_niu w50 fl tc__close" href="javascript:;">取消</a>';
         nr=nr+'     </div> </div>';
		layer.open({
		  type: 1,
		  area: ['300px', '112px'],
		  shade: [0.5, '#000'],
		  closeBtn:0,
		  title: false,
		  content: nr
		 });
}

     $('body').on('click','.tc__close',function(){
		layer.closeAll();
		
	});
     $('body').on('click','#tc__wok',function(){
		eval($('#tc__wact').val());
		layer.closeAll();
	});


jQuery(".center_main_tab").slide({trigger:"click"});
jQuery(".tui_jian").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:6});
