var ctx = document.getElementById("notLoggedInChart").getContext("2d");
let estr = JSON.parse(document.querySelector('#estr').dataset.json);
let eint = JSON.parse(document.querySelector('#eint').dataset.json);
let earr = JSON.parse(document.querySelector('#earr').dataset.json);
let ehash = JSON.parse(document.querySelector('#ehash').dataset.json);
let etotal = JSON.parse(document.querySelector('#etotal').dataset.json);
let eobj = JSON.parse(document.querySelector('#eobj').dataset.json);
let ereg = JSON.parse(document.querySelector('#ereg').dataset.json);

const everyone_average_score = new Array(estr, eint, earr, ehash, etotal, eobj, ereg)

var myChart = new Chart(ctx, {
  //グラフの種類
  type: 'radar',
  //データの設定
  data: {
      labels: ["String", "Integer", "Array", "Hash", "Total","Object", "Regexp"],
      datasets: [
          {
            //凡例のラベル
              label: "Everyone's average score",
              //背景色
              backgroundColor: "rgba(255,255,0,0.5)",
              //枠線の色
              borderColor: "rgba(255,216,0,1)",
              //結合点の背景色
              pointBackgroundColor: "rgba(255,216,0,1)",
              //結合点の枠線の色
              pointBorderColor: "#fff",
              //結合点の背景色（ホバーしたとき）
              pointHoverBackgroundColor: "#fff",
              //結合点の枠線の色（ホバーしたとき）
              pointHoverBorderColor: "rgba(255,216,0,1)",
              //結合点より外でマウスホバーを認識する範囲（ピクセル単位）
              hitRadius: 10,
              //グラフのデータ
              data: everyone_average_score
          }
      ]
  },
options: {
    scales:{
      r: {
        angleLines: {
            display: false
        },
        suggestedMin: 0,
        suggestedMax: 100,
        ticks:{
          stepSize:10,
        }
      }
    }
  }
});
            
        
