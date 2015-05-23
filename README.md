#weather forecast
基于WebService的天气预报
#WebService 的创建,部署和使用
测试环境：Windows10 
##I. 配置自己的IIS服务器
		1.打开控制面板 -> 程序 -> 启用或关闭Windows功能。
		2.这里我们找到internet信息服务，将Web管理工具和万维网服务选中。
   		 要调试 ASP.net 当然要安装IIS支持 ASP.net 的组件了。选择好了后点击确定就等他安装好 。
 	![image](https://raw.githubusercontent.com/hujewelz/webServiceDemo/master/screenshot/01.PNG)
  		3.安装好组件后需要重启才能够工作正常。重启好后 我们开始配置IIS。
  		4.桌面我的电脑，右键管理，打开计算机管理面板，展开左侧“服务和应用程序”。
 	![image text](https://raw.githubusercontent.com/hujewelz/webServiceDemo/master/screenshot/02.PNG)
  		5.右击网站，选择添加网站选项，在弹出的窗口中填入网站的名称，存放位置，注意：存放的位置
   		 和VS2012建立的开发文件夹是不同的，所以在这之前我们需要新建一个文件夹。
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/03.PNG)
		图中的物理路径就是我们刚刚建立的文件夹。点击确定后就会看见自己新建的网站已经显示了。
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/04.PNG)
		6.选择应用池，再选择刚刚建立的网站，双击鼠标，将framework改为4.0版本的。
		   至此IIS服务器就配好了。现在打开Microsoft Visual Studio 2012开始下一步吧。
##II. WebService的创建和部署
  		1.打开VS2012,新建空项目,注意选择.NET Framework的版本.这里我选择的是.NET Framework 4。
  		2.新建好项目后,在项目中添加一个Web服务。
 	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/05.PNG)
  		3.打开这个文件,将HellowWorld这段代码删除,修改后如下：
	    	[WebMethod]
        	public double sum(double a, double b)
	        {
	            return a + b;
	        }
	
	        [WebMethod]
	        public double sub(double a, double b)
	        {
	            return a - b;
	        }
	
	        [WebMethod]
	        public double mult(double a, double b)
	        {
	            return a * b;
	        }
	
	        [WebMethod]
	        public double div(double a, double b)
	        {
	            return a / b;
	        }
	        4.此时,我们已经完成这个WebService的代码部分.接下来我们要将这个WebService打包发布。
	        在项目上点击右键,点击菜单中的发布。
	        在下拉菜单选择新建配置文件，取个名字，下一步。目标位置为上一节中建立的文件夹
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/06.PNG)
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/07.PNG)
 		直接下一步
 		完成以上步骤后,我们可以在设置文件生成的文件夹内看到生成的以下文件
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/08.PNG)
 		这里我在上一节中新建的虚拟目录下建立了一个cal文件夹，我们要把cal下的bin文件移到虚拟目录根目录下，
 		并且为cal文件夹设置匿名权限.
 		添加完毕,启动网站,此时可以关闭与服务器的连接了.
	  	在本地的浏览器中输入地址
	  	http://192.168.1.112/cal/calService.asmx
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/09.PNG)
	  	此时我们已经完成了这个WebService的创建和部署.接下来,我们要在本地使用它。
##III. WebService的发布
  		1.打开VS2012,新建项目，项目名为WebCalculator。
  		2.在项目中添加新建项，选择Web窗体。
  		3.在项目中引用项上点击右键,选择添加服务引用,显示界面如下:
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/10.PNG)
		点击左下角的高级,出现界面如下
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/11.PNG)
		点击添加Web引用,出现界面如下
	![Image text](https://github.com/hujewelz/webServiceDemo/raw/master/screenshot/12.PNG)
		在URL中输入我们发布的WebService的URL地址,系统会自动搜索到服务.并且为Web引用设置一个引用名.此引用名将是
		我们在项目中引用这个服务的命名空间，点击添加引用,引用完成。
		4.接下来,我们在WebForm1的cs文件中写如下代码
		protected void Page_Load(object sender, EventArgs e)
	        {
			calService calS = new calService();
			double a = 22;  
            		double b = 114;  
            		Response.Write(calS.sum(a, b).ToString());  
	        }
		接下来,在浏览器中运行该项目即可。
		此时我们已经完成了这个WebService的使用过程。
	
	  
	
	
