//=require jquery.lazyload

$(function() {
	$list = $("img.lazy");//.show().lazyload();
	console.log(">>>>>>image length is:" + $list.length);	
	$("img.lazy").show().lazyload();
});