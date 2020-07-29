$(function () {
	$('.loadingBox').attr('data-show', 1);
		setTimeout(function(){
			$('.loadingBox').attr('data-show', 0);
	},1900);
})