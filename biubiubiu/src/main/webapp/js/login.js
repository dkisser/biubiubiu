	$(function() {
		// 验证两次输入的密码是否一致   
		$.extend($.fn.validatebox.defaults.rules, {
			equals : {
				validator : function(value, param) {
					return value == $(param[0]).val();
				},
				message : "两次输入的值不一样"
			}
		});
		//长度检测
		$.extend($.fn.validatebox.defaults.rules,
				{
					minLength : {
						validator : function(value, param) {
							return value.length >= param[0]
									&& value.length <= param[1];
						},
						message : "密码的长度应该是6~15位"
					}
				});

		$("#bg").dialog({
			title : 'What?',
			collapsible : true,
			width : 300,
			height : 200,
			draggable : false,
			resizable : false,
			modal : true,
			buttons : [ {
				text : "登录",
				handler : function() {
					$.messager.alert("提示", "已经点击了登录", "warn");
					$("#bg").dialog({
						closed : true
					});
				}
			}, {
				text : "取消",
				handler : function() {
					$.messager.alert("提示", "已经点击了取消", "warn");
					$("#bg").dialog({
						closed : true
					});
				}
			} ]
		});

	});