// 工具类 https://blog.csdn.net/weixin_38500689/article/details/100049221
// https://blog.csdn.net/qq_21386275/article/details/82620668?utm_term=javascript%E5%B7%A5%E5%85%B7%E7%B1%BB&utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~all~sobaiduweb~default-1-82620668&spm=3001.4430
// https://blog.csdn.net/guang_s/article/details/87364440?utm_term=javascript%E5%B7%A5%E5%85%B7%E7%B1%BB&utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~all~sobaiduweb~default-4-87364440&spm=3001.4430
function formatDate(arg) {
	if(arg == undefined || arg == '') return ''
	// return arg < 10 ? '0' + arg : arg
	return arg.padStart(2,'0')
}

function addDate(date, days = 1) {
	// support safari
	date = date.replace(/-/g,'/')
	let newDate = new Date(date)
	newDate.setDate(newDate.getDate() + days)
	return newDate.getFullYear()+'-'+formatDate(newDate.getMonth() + 1)+'-'+formatDate(newDate.getDate())
}