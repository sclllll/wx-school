// pages/home/home.js
Page({
	handle1:function(){
		wx.navigateTo({
			url: '/pages/group/group'
		})
	},
  handle2:function(){
    wx.navigateTo({
      url: '/pages/introduction/introduction',
    })
  },
	handle3:function(){
		wx.navigateTo({
			url: '/pages/news/news',
		})
	},
	handle4:function(){
		wx.switchTab({
			url: '/pages/message/message',
		})
	},
	load:function(){
		wx.request({
			url: 'http://127.0.0.1:3000/homegroup',
			success:(result)=>{
				var rows=result.data;
				this.setData({list:rows});
			}
		})
	},
	/**
	 * 页面的初始数据
	 */
	data: {
		list:[]
	},

	/**
	 * 生命周期函数--监听页面加载
	 */
	onLoad: function (options) {
		this.load();
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