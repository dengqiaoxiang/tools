// (function(window){
	// 正则面试题
	
	// toString
	function STRING(str){
		if(typeof str !== 'string') return str.toString()
		else return str
	}


	// 1. 过滤html敏感字符的正则表达式
	function filterHtml(str){
		return STRING(str).replace(/[<>&"']/gi,m=>'&#'+m.charCodeAt(0)+';')
	}
	function fromCharCode(str) {
		return String.fromCharCode(str)
	}

	/*过滤html代码(把<>转换)*/
	function htmlEncode (str) {
		str = str.replace(/&/ig, "&amp;");
		str = str.replace(/</ig, "&lt;");
		str = str.replace(/>/ig, "&gt;");
		str = str.replace(/\'/g,"&#39;");
		str = str.replace(/\"/, '&quot;');
		return str;
	}
	function htmlDecode (str) {
		str = str.replace(/(&amp; | &#38;)/g,"&");
		str = str.replace(/(&lt; | &#60;)/g,"<");
		str = str.replace(/(&gt; | &#62;)/g,">");
		str = str.replace(/&nbsp;/g," ");
		str = str.replace(/&#39;/g,"\'");
		str = str.replace(/(&quot; | &#34;)/g,"\"");
		return str;
	}



	// 2. 单词首尾相同字母改为大写,其他为小写
	function upperHeadTail(str){
		return STRING(str).toLowerCase().replace(/(\b)\w+(\b)/gi, v => {
			let first = v.slice(0,1), last = v.slice(-1)
			if(first == last){
				return first.toUpperCase() + v.slice(1,-2) + last.toUpperCase()
			}else{
				return v
			}
		})
	}

	// 3. 每句首字母改为大小
	/**
	 * toUpperCase() first letter
	 * like 'word' => 'Word'
	 * @param {string} str
	 */
	function uppercaseFirst(str){
		return STRING(str).toLowerCase().replace(/^\w/,m=>m.toUpperCase())
	}

	// 4. 10000 => 10k
	/**
	 * Number formatting
	 * like 10000 => 10k
	 * @param {number} num
	 * @param {number} digits
	 */
	function numberFormat(num, digit){
		const si = [
				{ value: 1E18, symbol: 'E' },
				{ value: 1E15, symbol: 'P' },
				{ value: 1E12, symbol: 'T' },
				{ value: 1E9, symbol: 'G' },
				{ value: 1E6, symbol: 'M' },
				{ value: 1E3, symbol: 'k' }
			]
		for(let item of si) {
			if(num >= item.value){
				return (num / item.value).toFixed(digit).replace(/\.0+$|(\.[0-9]*[1-9])0+$/,'$1') + item.symbol
			}
		}
	}

	// 5. 10000 => 10,000
	/**
	 * like 10000 => 10,000
	 * @param {number} num
	 */
	function toThousandFilter(num){
		// +num == Number(num)
		return (+num || 0).toString().replace(/^-?\d+/g, m => m.replace(/(?=(\B)(\d{3})+$)/g,',')) 
	}



	// https://www.cnblogs.com/dingdc/p/13589690.html,  https://blog.csdn.net/weixin_42418196/article/details/108445263
	// https://blog.csdn.net/songshuzhong/article/details/83062921?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-0&spm=1001.2101.3001.4242

	// 1.给一个连字符串例如：get-element-by-id转化成驼峰形式。
	/**
	 * like get-element-by-id => getElementById
	 * @param {string} str
	 */
	function toHumpForm(str){
		return STRING(str).replace(/-(\w)/g, (m,$1)=>$1.toUpperCase()) 
	}

	// 2.匹配二进制数字
	function isBinary(str){
		return /^[01]+$/.test(STRING(str))
	}

	// 3.非零的十进制数字 (有至少一位数字, 但是不能以0开头)
	function isDecimalism(str){
		return /^[1-9][0-9]*$/.test(STRING(str))
	}

	/*
	parseInt(num,8);   //八进制转十进制
	parseInt(num,16);   //十六进制转十进制
	parseInt(num).toString(8)  //十进制转八进制
	parseInt(num).toString(16)   //十进制转十六进制
	parseInt(num,2).toString(8)   //二进制转八进制
	parseInt(num,2).toString(16)  //二进制转十六进制
	parseInt(num,8).toString(2)   //八进制转二进制
	parseInt(num,8).toString(16)  //八进制转十六进制
	parseInt(num,16).toString(2)  //十六进制转二进制
	parseInt(num,16).toString(8)  //十六进制转八进制
	*/



	// 4.匹配一年中的12个月 
	function isMonth(str){
		return /^0[1-9]|1[0-2]$/.test(STRING(str))
	}


	// 7.匹配ip地址
	function isValidIP(ip) {
		let reg = /^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/
		return reg.test(ip);
	}

	// 13.判断是否符合USD格式
	function isUSD(num) {
		let reg = /^[1-9]\d{}$/
		return reg.test(num);
	}
	// 15.获取 url 参数
	// https://huaweicloud.blog.csdn.net/article/details/1084845
	function getURLParam(name, url) {
		let search = (url || window.location).split('?')[1]
		return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)', "ig").exec(url) || [, ""])[1].replace(/\+/g, '%20')) || null;
	}
	function getParams (name, url) {
		var search = (url || window.location).split('?')[1]
		if (search) {
			var obj = JSON.parse('{"' + decodeURIComponent(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g, '":"') + '"}')	
			
			return name ? obj[name] : obj
		}
	}
		

	// 16.验证邮箱
	// 17.验证身份证号码

	// 18.匹配汉字
	// 21.判断日期格式是否符合 '2017-05-11'的形式，严格判断（比较复杂）
	function isDate(date){
		let reg = /^(?:(?!0000)[0-9]{4}([-/.]?)(?:(?:0?[1-9]|1[0-2])\1(?:0?[1-9]|1[0-9]|2[0-8])|(?:0?[13-9]|1[0-2])\1(?:29|30)|(?:0?[13578]|1[02])\1(?:31))|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)([-/.]?)0?2\2(?:29))$/
		return reg.test(date);
	}

	// 22.IPv4地址正则
	function isValidIP4(ip) {
		let reg = /^(25[0-5]|2[0-4]\d|[0-1]?\d?\d)(\.(25[0-5]|2[0-4]\d|[0-1]?\d?\d)){3}$/
		return reg.test(ip);
	}

	// 23.十六进制颜色正则
	function isColor(str) {
		let reg = /^([a-fA-F\d]{6}|[a-fA-F\d]{3})$/
		return reg.test(str);
	}

	// 24.车牌号正则
	function isCarNum(str) {
		let reg = /^([京津晋冀蒙辽吉黑沪苏浙皖闽赣鲁豫鄂湘粤桂琼渝川贵云藏陕甘青宁新][ABCDEFGHJKLMNPQRSTUVWXY][1-9DF][1-9ABCDEFGHJKLMNPQRSTUVWXYZ]\d{3}[1-9DF]|[京津晋冀蒙辽吉黑沪苏浙皖闽赣鲁豫鄂湘粤桂琼渝川贵云藏陕甘青宁新][ABCDEFGHJKLMNPQRSTUVWXY][\dABCDEFGHJKLNMxPQRSTUVWXYZ]{5})$/
		return reg.test(str);
	}

	// 25.过滤HTML标签


	// 26.密码强度正则，最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
	function passwordReg(str) {
		let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{6,}$/
		return reg.test(str);
	}
	// 27.URL正则
	// 28.匹配浮点数
	// 29.匹配xxyy模式
	
	
// })(window)