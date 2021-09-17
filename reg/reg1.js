(function(window){
	let OBJ = {}
	OBJ.htmlEncode = function(str){
		str = str.replace(/&/ig, "&amp;");
		str = str.replace(/</ig, "&lt;");
		str = str.replace(/>/ig, "&gt;");
		str = str.replace(/\'/g,"&#39;");
		str = str.replace(/\"/, '&quot;');
		return str;
	}
	if ( typeof module === "object" && module && typeof module.exports === "object" ) {
	    module.exports = OBJ;
	} else {
	    // Otherwise expose jQuery to the global object as usual
	    window.tools = OBJ;
	}
})(window)