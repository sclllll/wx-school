// pages/profile/profile.js
Page({
  handle:function(e){
		var pid=e.target.dataset.id;
    wx.navigateTo({
      url: this.data.info[(pid-1)].url,
    })
  },
	priflie:function(){
		wx.request({
			url: 'http://127.0.0.1:3000/prifile',
			success:(result)=>{
				var rows=result.data;
				this.setData({list:rows});
			}
		})
	},
	handle2:function(){
		wx.makePhoneCall({
			phoneNumber: '17806171951',
		})
	},
  login:function(){
    wx.navigateTo({
      url: '/pages/login/login',
    })
  },
	/**
	 * 页面的初始数据
	 */
	data: {
		list:[],
		info: [{url: '/pages/login/login'},
						{url: '/pages/introduction/introduction'},
						{url:'/pages/source/source'},
						{url:'/pages/group/group'},
					]
	},

	/**
	 * 生命周期函数--监听页面加载
	 */
	onLoad: function (options) {
		this.priflie();
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