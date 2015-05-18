/**
 * 
 * @author hz453@126.com
 */
$.extend(C, {
	crud: {
		submit: function(callback){
			if (typeof beforeSubmit == "function") {
                if (beforeSubmit() == false) {
                    return;
                }
            }
			if(!this.validate()) {
				return;
			}
			this.saveByAjax(callback);
		},
		validate: function(){
			// 首先自定义的验证
            if (typeof myValidate == "function") {
                if (!myValidate())
                    return false;
            }
			// 使用验证引擎进行检测
            //TODO
            
            return true;
		},
		saveByAjax: function(callback){
			if (typeof onBeforeSave == "function") {
                if (onBeforeSave() == false) {
                    return;
                }
            }
			$.ajax({
				type: 'post',
				url: C.app.g('contextPath') + C.app.g('uriDirector') + '/save/ajax',
				async: false,
				dataType: 'json',
				data: $('#entityForm').serializeArray(),
				success: function (result){
					if(result.success) {
						$('#id').val(result.id);
					}
					if(typeof callback == 'function' || typeof onAfterSave == 'function'){
						if(typeof callback == 'function') {
							callback(result);
						}
						if(typeof onAfterSave == 'function') {
							onAfterSave(result);
						}
					}else  {
						if(result.success) {
							Toast.success(result.message);
						} else {
							Toast.error(result.message);
						}
						
					}
					
				},
				error: function(result){
					Toast.error(result.responseText || "请求的操作出错了！");
				}
			});
		},
		updateByAjax: function(data, callback) {
			if(typeof data == 'string') {
				data = $.parseJSON(data);
			}
			$.ajax({
				type: 'post',
				url: C.app.g('contextPath') + C.app.g('uriDirector') + '/update/ajax',
				data: $.toJSON(data),
				contentType:"application/json", 
				async: false,
				dataType: 'json',
				success: function (result){
					if(typeof callback == 'function') {
						callback(result);
					} else {
						if(result.success) {
							Toast.success(result.message);
						} else {
							Toast.error(result.message);
						}
					}
				},
				error: function(result){
					Toast.error(result.responseText || "请求的操作出错了！");
				}
			});
		}
	}
});