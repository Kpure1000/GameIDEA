# LearnOpenGL

## 有关几个第三方库的VS配置

配置和SFML基本一致（甚至还省去了预编译处理的配置）

>include
lib
dll

(相关问题都在__<a href = "https://www.cnblogs.com/csu-lmw/p/11587594.html" >学长的博客</a>__内有基本的解决方案)

### GLUT

#### 简单粗暴版

1. 下载GLUT。Windows环境下的<a href = "http://www.opengl.org/resources/libraries/glut/glutdlls37beta.zip">GLUT下载地址</a>
2. 将下载的压缩包解开，将得到5个文件：glut.h、glut.lib、glut32.lib、glut.dll、glut32.dll。
3. 将glut.h放到"C:\Program Files (x86)\Microsoft Visual Studio\2019\xxx\VC\Tools\MSVC\14.xx.xxxxxx\include\gl"文件夹中（gl文件夹若不存在则手动新建）。
4. 将glut.lib和glut32.lib放到"C:\Program Files (x86)\Microsoft Visual Studio\2019\xxx\VC\Tools\MSVC\14.xx.xxxxxx\lib\x86"文件夹中。
5. 将glut.dll和glut32.dll放到"C:\Windows\System32"文件夹(32位操作系统）或者"C:\Windows\SysWOW64"文件夹（64位操作系统）。

#### 复杂但最新版

__注意！！！这个方法还未验证是否可用！！__

1. 下载GLUT的release或者MSVC版的文件
2. 如果是release则通过Cmake配置生成VS解决方案，MSVC跳过
3. 有解决方案了，直接生成，报错就一步步解决即可
4. 生成了的

### GLUI

直接用GLUI中MSVC的解决方案生成，遇到问题按照博客的方法解决即可。
我现在已经生成好了这些需要的文件，只需要：

1. 把lib文件夹下所有.lib文件放入C:\Program Files (x86)\Microsoft Visual Studio\2019\xxx\VC\Tools\MSVC\14.xx.xxxxxx\lib\x86
2. 把bin文件夹下glui32dlld.dll 放入 C:\Windows\SysWOW64 或 C:\Windows\System32中
3. 最后，把 glui-2.36\src\include\GL 目录下的 glui.h 复制到 C:\Program Files (x86)\Microsoft Visual Studio\2019\xxx\VC\Tools\MSVC\14.xx.xxxxxx\include\gl 中

## 第一次作业

### 补全MeshViewer的绘制和鼠标操作

### 实现可拖拽控制点的Bezier曲线（曲面）和B-Spline曲线（曲面）

* Bezier曲线
	* 目前已经用SFML实现了可加入大量控制点的Bezier曲线，但还不可拖拽
	* 递归方法时间开销很大，可拖拽想都别想；去递归后好多了
* Bezier曲面
  * 还不清楚怎么绘制
* B-Spline曲线（曲面）
  * 不知