# Ch5 welcome

这是入门精要第五章，主要是了解以下Shaderlab语法，相当于HelloWorld

## ShaderLab结构

```Shader
Shader "ShaderClassPath/ShaderName"
{
	//属性段
	Properties 
	{
		//属性定义
	}

	//代码段
	SubShader 
	{

		//PASS段
		Pass 
		{

			CGPROGRAM

			//包括的引用头文件
			#include "UnityCG.cginc"

			//编译指令
			#pragma vertex vert
			#pragma fragment frag	

			//变量
			fixed4 _Color;
			float _x;
			float _y;
			float _z;

			//结构体
			//  ?? to 顶点
			struct a2v 
			{
				float4 vertex : POSITION; //  冒号后面是语义

				float3 normal : NORMAL0;

				float4 texcoord : TEXCOORD0;
			};

			// 顶点 to 片元
			struct v2f 
			{
				float4 pos : SV_POSITION;

				fixed3 color : COLOR0;
			};

			//顶点着色器代码
			//  顶点变换
			v2f vert(a2v v)
			{
				//代码
			}

			// 片元着色器代码
			//  片元变换
			fixed4 frag(v2f i) : SV_Target
			{
				//代码
			}

			ENDCG
		}
	}
}

```


