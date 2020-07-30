// 基于准备好的dom，初始化echarts实例
var myChart1 = echarts.init(document.getElementById('hdfs'));
option1 = {
    backgroundColor: '#483D8B',
    toolbox: {
	    show: true,
	    borderColor: '#FFF',
	    feature: {
	      dataView: {
	        readOnly: true
	      },
	      restore: {},
	    }
	},
    title: {
			text: '大数据指标可视化',
			textStyle:{
			    color:'#FFF'
			},
			left: "center"
		},
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b}: {c} ({d}%)'
    },
    legend: {
        orient: 'vertical',
        left: 10,
        data: ['配置容量', '非DFS使用量',  '剩余DFS']
    },
    series: [
        {
            name: 'live DN',
            type: 'pie',
            selectedMode: 'single',
            radius: [0, '30%'],

            label: {
                position: 'inner'
            },
            labelLine: {
                show: false
            },
            data: [
                {value: 12.07, name: 'presentCapacity', selected: true},
                {value: 17.4, name: 'Configured Capacity'},
                {value: 12.33, name: 'DFS Remaining'}
            ]
        },
        {
            name: 'HDFS指标',
            type: 'pie',
            radius: ['40%', '55%'],
            label: {
                formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                backgroundColor: '#eee',
                borderColor: '#aaa',
                borderWidth: 1,
                borderRadius: 4,
                rich: {
                    a: {
                        color: '#999',
                        lineHeight: 22,
                        align: 'center'
                    },
                    hr: {
                        borderColor: '#aaa',
                        width: '100%',
                        borderWidth: 0.5,
                        height: 0
                    },
                    b: {
                        fontSize: 16,
                        lineHeight: 33
                    },
                    per: {
                        color: '#eee',
                        backgroundColor: '#334455',
                        padding: [2, 4],
                        borderRadius: 2
                    }
                }
            },
            data: [
                {value: 17.4, name: '配置容量'},
                {value: 5.2, name: '非DFS使用量'},
                {value: 12.33, name: '剩余DFS'},
            ]
        }
    ]
};
$.ajax({
		url: "getHDFSIndex",
		dataType:"json",
		success: function(data){
		option1.series[0].data[0].value = data.data.presentCapacity;
		option1.series[0].data[1].value = data.data.configuredCapacity;
		option1.series[0].data[2].value = data.data.dfsRemaining;
		option1.series[1].data[0].value = data.data.configuredCapacity;
		option1.series[1].data[1].value = data.data.nonDfsUsed;
		option1.series[1].data[2].value = data.data.dfsRemaining;
		myChart1.setOption(option1);
		$('#loading').css("background-color","#483D8B");
		},
		error: function (e) {
			console.log("ajax错误码:"+e.status);
		}
	});

