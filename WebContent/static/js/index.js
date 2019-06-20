/**
 * 方法描述:单击菜单（页面上部菜单），初始化子菜单（即页面左部菜单）
 */
function clickMenu(element,id) {
	// 将同级节点的[选中样式]清空
	$("#menuDiv").children().attr("class","");

	// 将当前单击的节点置为[选中样式]
	$(element).attr("class","on");
	if(id=="subMenuDiv1"){
		// 加载子菜单内容
		$('#subMenuDiv1').attr("style","display:block");
	}
}

/**
 * 方法描述:单击子菜单（页面左部菜单），初始化主页面
 */
function clickSubMenu(element) {
	// 将其他有[选中样式]的节点的样式清空
	$("#subMenuDiv1").find(".on").attr("class","");
	$("#subMenuDiv2").find(".on").attr("class","");
	$("#subMenuDiv3").find(".on").attr("class","");
	// 将当前单击的节点置为[选中样式]
	$(element).children().attr("class","on");
	// 按指定地址加载主页面(iframe)
	$("#mainPage").attr("src",$('input[name=basepath]').val()+"/getPointLookList");
}

function clickSubMenu1(element) {
	window.open($('input[name=basepath]').val()+"/forNavigation", "_self");
}

function clickSubMenu2(element) {
	// 将其他有[选中样式]的节点的样式清空
	$("#subMenuDiv2").find(".on").attr("class","");
	$("#subMenuDiv").find(".on").attr("class","");
	$("#subMenuDiv3").find(".on").attr("class","");
	// 将当前单击的节点置为[选中样式]
	$(element).children().attr("class","on");
	// 按指定地址加载主页面(iframe)
	$("#mainPage").attr("src",$('input[name=basepath]').val()+"/getPointList");
}

function clickSubMenu3(element) {
	// 将其他有[选中样式]的节点的样式清空
	$("#subMenuDiv").find(".on").attr("class","");
	$("#subMenuDiv1").find(".on").attr("class","");
	$("#subMenuDiv2").find(".on").attr("class","");
	// 将当前单击的节点置为[选中样式]
	$(element).children().attr("class","on");
	// 按指定地址加载主页面(iframe)
	$("#mainPage").attr("src",$('input[name=basepath]').val()+"/getUserList");
}

function clickSubMenu4(element) {
	// 将其他有[选中样式]的节点的样式清空
	$("#subMenuDiv").find(".on").attr("class","");
	$("#subMenuDiv1").find(".on").attr("class","");
	$("#subMenuDiv2").find(".on").attr("class","");
	// 将当前单击的节点置为[选中样式]
	$(element).children().attr("class","on");
	// 按指定地址加载主页面(iframe)
	$("#mainPage").attr("src",$('input[name=basepath]').val()+"/getPoint");
}
