//index.js
//获取应用实例
const app = getApp()

Page({

	/**
	 * 页面的初始数据
	 */
	data: {
		list:[
			{id:1,img_url:"http://127.0.0.1:3000/img/banner1.png"},
			{id:2,img_url:"http://127.0.0.1:3000/img/banner2.png"},
			{id:3,img_url:"http://127.0.0.1:3000/img/banner3.png"},
			{id:4,img_url:"http://127.0.0.1:3000/img/banner4.png"},
		],
		obj:[
			{nid:1,title:'美食',img_url:"http://127.0.0.1:3000/icons/grid-01.png"},
			{nid:2,title:'澡堂子',img_url:"http://127.0.0.1:3000/icons/grid-02.png"},
			{nid:3,title:'结婚啦',img_url:"http://127.0.0.1:3000/icons/grid-03.png"},
			{nid:4,title:'卡拉OK',img_url:"http://127.0.0.1:3000/icons/grid-04.png"},
			{nid:5,title:'找工作',img_url:"http://127.0.0.1:3000/icons/grid-05.png"},
			{nid:6,title:'找工作',img_url:"http://127.0.0.1:3000/icons/grid-06.png"},
			{nid:7,title:'汽车保修',img_url:"http://127.0.0.1:3000/icons/grid-07.png"},
			{nid:8,title:'租房',img_url:"http://127.0.0.1:3000/icons/grid-08.png"},
			{nid:9,title:'装修',img_url:"http://127.0.0.1:3000/icons/grid-09.png"},
		]
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