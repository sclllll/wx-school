// pages/message/message.js
Page({
	// handle:function(){
	// 	wx.showToast({
	// 		title: '发送成功',
	// 	});
	// 	setTimeout(function () {
	// 		wx.hideToast();
	// 	}, 1500);
	// },
	
	/**
	 * 页面的初始数据
	 */
	data: {

	},
	back_houtai:function(e){
		var title=e.detail.value.title;
		var phone=e.detail.value.phone;
		var email=e.detail.value.email;
		var content=e.detail.value.content;
		if(content==""){
			wx.showToast({
				title: '内容不能为空',
				icon:"loading"
			});
			setTimeout(function(){
				wx.hideToast();
			},1500)
		}else{
			wx.showToast({
				title: '发送成功',
			});
			setTimeout(function () {
				wx.hideToast();
			},1500)
		}
	},
	/**
	 * 生命周期函数--监听页面加载
	 */
	onLoad: function (options) {

	},

	/**
	 * 生命周期函数--监听页面初次渲染完成
	 */
	onReady: function () {

	},

	/**
	 * 生命周期函数--监听页面显示
	 */
	onShow: function () {

	},

	/**
	 * 生命周期函数--监听页面隐藏
	 */
	onHide: function () {

	},

	/**
	 * 生命周期函数--监听页面卸载
	 */
	onUnload: function () {

	},

	/**
	 * 页面相关事件处理函数--监听用户下拉动作
	 */
	onPullDownRefresh: function () {

	},

	/**
	 * 页面上拉触底事件的处理函数
	 */
	onReachBottom: function () {

	},

	/**
	 * 用户点击右上角分享
	 */
	onShareAppMessage: function () {

	}
})