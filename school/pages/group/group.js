// pages/group/group.js
Page({
	loadMore(){
		//加载下一页数据
		// 1:获取两个数值 pno pageSize
		var pno=this.data.pageIndex+1;
		var pageSize=this.data.pageSize;
		// 2:发送ajax请求
		wx.request({
			url:'http://127.0.0.1:3000/group',
			data:{pno:pno,pageSize:pageSize},
			success:(result)=>{
				var rows=this.data.list.concat(result.data.data);
				this.setData({list:rows,pageIndex:pno});
			}
		})
		wx.showLoading({
			title: '正在努力加载数据....',
		});
		setTimeout(function () {
			wx.hideLoading();
		},1000)
		// 	2.1:保留返回数据 data
		// 	2.2:显示加载动画
		// 	3:在shoplist.html显示列表数据
		// 	4:上拉触顶加载下一页
	},
	swiper:function(){
		wx.request({
			url: 'http://127.0.0.1:3000/introduction',
			success:(result)=>{
				var swiper=result.data;
				this.setData({info:swiper})
			}
		})
	},
	handle2:function(e){
		var gid=e.target.dataset.gid;
		wx.navigateTo({
			url: '/pages/info/info?gid='+gid,
		})
	},
	/**
	 * 页面的初始数据
	 */
	data: {
		list:[],
		pageIndex: 0,	//页码
		pageSize: 6 ,
		info:[]
  },

	/**
	 * 生命周期函数--监听页面加载
	 */
	onLoad: function (options) {
		this.loadMore();
		this.swiper();
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
		this.loadMore();
	},

	/**
	 * 用户点击右上角分享
	 */
	onShareAppMessage: function () {

	}
})