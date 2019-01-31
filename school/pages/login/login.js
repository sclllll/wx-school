// pages/login/login.js
Page({
	formSubmit:function(e){
		console.log(e);
		var username=e.detail.value.username;
		var userpwd=e.detail.value.userpwd;
		var userphone=e.detail.value.userphone;
		wx.request({
			url: 'http://127.0.0.1:3000/login',
			data:{username:username,userpwd:userpwd,userphone:userphone},
			success:(result)=>{
				var code=result.data.code;
				if(code==1){
					wx.switchTab({
						url: '/pages/home/home',
					})
				}else{
					wx.showToast({
						title: '用户名或密码错误',
						icon:'none'
					},1500)
				}
			}
		})
	},
	/**
	 * 页面的初始数据
	 */
	data: {

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