console.log("### Reply Module");

var replyService = (function(){
	function add(qacomm_cont, callback, error){
		console.log("### add reply");
		
		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(qacomm_cont),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback){
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	function getList(param, callback, error) {
		var qa_num = param.qa_num;
		var page = param.page || 1;
		
		$.getJSON("/replies/pages/" + qa_num + "/" + page + ".json",
			function(data) {
				if (callback) {
					callback(data);
				}
			}).fail(function(xhr, status, err) {
				if (error) {
					error();
				}		
			});
	}	
	
	function remove(qacomm_num, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + qacomm_num,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	function update(qacomm_cont, callback, error) {
		console.log("qacomm_num : " + qacomm_cont.qacomm_num);
		
		$.ajax({
			type : 'put',
			url : '/replies/' + qacomm_cont.qacomm_num,
			data : JSON.stringify(qacomm_cont),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	function get(qacomm_num, callback, error) {
		$.get("/replies/" + qacomm_num + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	// 이전 시간 표현 방법 (작성한지 24시간이 지난 것은 날짜만 표기)
	/*
	function displayTime(timeValue) {

		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {

			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');

		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	};
	*/
	
	//날짜, 시간 모두 표기 방법
	function displayTime(timeValue) {

		var today = new Date();
		var dateObj = new Date(timeValue);
		var str = "";

		if (true) {

			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ yy, '-', (mm > 9 ? '' : '0') + mm, '-', (dd > 9 ? '' : '0') + dd, ' ', (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss ].join('');

		}
	};
	
	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get,
		displayTime : displayTime
	};
})();
