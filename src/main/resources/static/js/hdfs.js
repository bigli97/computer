setTimeout( function(){
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('slave'));
option1 = {
    backgroundColor: '#483D8B',
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
        data: ['配置容量', '现有容量', '剩余DFS', '已使用的DFS', '非DFS', 'DFS剩余']
    },
    series: [
        {
            name: '访问来源',
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
                {value: 335, name: '配置容量', selected: true},
                {value: 679, name: '现有容量'},
                {value: 1548, name: '剩余DFS'}
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
                // shadowBlur:3,
                // shadowOffsetX: 2,
                // shadowOffsetY: 2,
                // shadowColor: '#999',
                // padding: [0, 7],
                rich: {
                    a: {
                        color: '#999',
                        lineHeight: 22,
                        align: 'center'
                    },
                    // abg: {
                    //     backgroundColor: '#333',
                    //     width: '100%',
                    //     align: 'right',
                    //     height: 22,
                    //     borderRadius: [4, 4, 0, 0]
                    // },
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
                {value: 12, name: '现有容量'},
                {value: 12, name: '剩余DFS'},
                {value: 1, name: '已使用的DFS'},
                {value: 5, name: '非DFS'},
                {value: 14, name: 'DFS剩余'},
            ]
        }
    ]
};
myChart.setOption(option1);
$('#loading').css("background-color","#483D8B");
 },2000 );

