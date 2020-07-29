// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
option = {
    backgroundColor: '#483D8B',
	title: {
			text: '计算机指标可视化',
			textStyle:{
			    color:'#FFF'
			},
			left: "center"
		},
    tooltip: {
        formatter: '{b} <br/>{a} : {c}%'
    },
    toolbox: {
        show: true,
        feature: {
            mark: {show: true},
            restore: {show: true},
            saveAsImage: {show: true}
        }
    },
	series: [
	{
        name: '使用率',
        type: 'gauge',
        min: 0,
        max: 100,
        splitNumber: 10,
        radius: '50%',
        axisLine: {            // 坐标轴线，表盘
            lineStyle: {       // 属性lineStyle控制线条样式
                color: [[0.09, 'lime'], [0.82, '#1e90ff'], [1, '#ff4500']],
                width: 3,
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        axisLabel: {            // 坐标轴小标记
            fontWeight: 'bolder',
            color: '#fff',
            shadowColor: '#fff', //默认透明
            shadowBlur: 10
        },
        axisTick: {            // 坐标轴小标记
            length: 15,        // 属性length控制线长
            lineStyle: {       // 属性lineStyle控制线条样式
                color: 'auto',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        splitLine: {           // 分隔线
            length: 25,         // 属性length控制线长
            lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                width: 3,
                color: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        pointer: {           // 分隔线
            shadowColor: '#fff', //默认透明
            shadowBlur: 5
        },
        title: {
            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                fontWeight: 'bolder',
                fontSize: 20,
                fontStyle: 'italic',
                color: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        detail: {
        	formatter: '{value}%',
            backgroundColor: 'rgba(30,144,255,0.8)',
            borderWidth: 1,
            shadowBlur: 5,
            offsetCenter: [0, '50%'],       // x, y，单位px
            fontSize:25,
            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        data: [{value: (Math.random()*100).toFixed(1), name: '内存使用情况'}]
        },
    {
        name: '使用率',
        type: 'gauge',
        center: ['25%', '55%'],    // 默认全局居中
        radius: '30%',
        min: 0,
        max: 100,
        startAngle: 315,
        endAngle: 65,
        splitNumber: 5,
        axisLine: {            // 坐标轴线
            lineStyle: {       // 属性lineStyle控制线条样式
                color: [[0.29, 'lime'], [0.86, '#1e90ff'], [1, '#ff4500']],
                width: 2,
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        axisLabel: {            // 坐标轴小标记
            fontWeight: 'bolder',
            color: '#fff',
            shadowColor: '#fff', //默认透明
            shadowBlur: 10
        },
        axisTick: {            // 坐标轴小标记
            length: 12,        // 属性length控制线长
            lineStyle: {       // 属性lineStyle控制线条样式
                color: 'auto',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        splitLine: {           // 分隔线
            length: 20,         // 属性length控制线长
            lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                width: 3,
                color: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        pointer: {
            width: 5,
            shadowColor: '#fff', //默认透明
            shadowBlur: 5
        },
        title: {
            offsetCenter: [-5, '-30%'],       // x, y，单位px
            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                fontWeight: 'bolder',
                fontStyle: 'italic',
                fontSize: 12,
                color: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        detail: {
            //backgroundColor: 'rgba(30,144,255,0.8)',
            //borderWidth: 1,
            formatter: '{value}%',
            borderColor: '#fff',
            shadowColor: '#fff', //默认透明
            shadowBlur: 5,
            width: 80,
            height: 30,
            fontSize: 20,
            offsetCenter: [0, '10'],       // x, y，单位px
            textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                fontWeight: 'bolder',
                color: '#fff'
            }
        },
        data: [{value: (Math.random()*100).toFixed(1), name: 'CPU使用情况'}]
    },
    {	
        name: '实时网速',
        type: 'gauge',
        center: ['75%', '55%'],    // 默认全局居中
        radius: '30%',
        min: 0,
        max: 1024,
        startAngle: 475,
        endAngle: 230,
        splitNumber: 4,
        tooltip: {
	        formatter: '{b} <br/>{a} : {c}kb/s'
	    },
        axisLine: {            // 坐标轴线
            lineStyle: {       // 属性lineStyle控制线条样式
                color: [[0.2, 'lime'], [0.8, '#1e90ff'], [1, '#ff4500']],
                width: 2,
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        axisTick: {            // 坐标轴小标记
            length: 12,        // 属性length控制线长
            lineStyle: {       // 属性lineStyle控制线条样式
                color: 'auto',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        axisLabel: {
            fontWeight: 'bolder',
            color: '#fff',
            shadowColor: '#fff', //默认透明
            shadowBlur: 10,
        },
        splitLine: {           // 分隔线
            length:15,         // 属性length控制线长
            lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                width:3,
                color: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 10
            }
        },
        pointer: {
            width:5,
            shadowColor: '#fff', //默认透明
            shadowBlur: 5
        },
        title: {
            offsetCenter: [27, '-30%'],       // x, y，单位px
                textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                    fontWeight: 'bolder',
                    fontStyle: 'italic',
                    fontSize: 13,
                    color: '#fff',
                    shadowColor: '#fff', //默认透明
                    shadowBlur: 10
                }
        	},
            detail: {
            	formatter: '{value}kb/s',
                borderColor: '#fff',
                shadowColor: '#fff', //默认透明
                shadowBlur: 5,
                width: 1,
                height: 1,
                fontSize: 13,
                offsetCenter: [10, '20%'],       // x, y，单位px
                textStyle: {       // 其余属性默认使用全局文本样式，详见TEXTSTYLE
                    fontWeight: 'bolder',
                    color: '#fff'
                }
            },
            data: [{value: (Math.random()*1024).toFixed(2), name: '网络监控'}]
    	} 
	]
};

setInterval(function (){
    $.ajax({
		url: "get",
		dataType:"json",
		success: function(data){
		option.series[0].data[0].value = data.data.memoryUsage;
    	option.series[1].data[0].value = data.data.cpuUsage;
    	option.series[2].data[0].value = data.data.networkSpeed;
		},
		error: function (e) {
			console.log("ajax错误码:"+e.status);
		}
	});
    
    myChart.setOption(option);
},2000);