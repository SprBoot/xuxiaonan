$(".list-group-item").live("click",function(){
	$(this).children("li").toggleClass("hid group");
});