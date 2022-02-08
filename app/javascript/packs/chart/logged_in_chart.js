var ctx = document.getElementById("loggedInChart").getContext("2d");
let str = JSON.parse(document.querySelector('#str').dataset.json);
let int = JSON.parse(document.querySelector('#int').dataset.json);
let arr = JSON.parse(document.querySelector('#arr').dataset.json);
let hash = JSON.parse(document.querySelector('#hash').dataset.json);
let total = JSON.parse(document.querySelector('#total').dataset.json);
let obj = JSON.parse(document.querySelector('#obj').dataset.json);
let reg = JSON.parse(document.querySelector('#reg').dataset.json);


let estr = JSON.parse(document.querySelector('#estr').dataset.json);
let eint = JSON.parse(document.querySelector('#eint').dataset.json);
let earr = JSON.parse(document.querySelector('#earr').dataset.json);
let ehash = JSON.parse(document.querySelector('#ehash').dataset.json);
let etotal = JSON.parse(document.querySelector('#etotal').dataset.json);
let eobj = JSON.parse(document.querySelector('#eobj').dataset.json);
let ereg = JSON.parse(document.querySelector('#ereg').dataset.json);

const your_average_score = new Array(str, int, arr, hash, total, obj, reg)
const everyone_average_score = new Array(estr, eint, earr, ehash, etotal, eobj, ereg)

var myChart = new Chart(ctx, {
  //グラフの種類
  type: 'radar',
  //データの設定
  data: {
      labels: ["String", "Integer", "Array", "Hash", "Total","Object", "Regexp"],
      datasets: [
          {
              label: "Your average score",
              fill: true,
              //背景色
              backgroundColor: "rgba(0, 255, 0, 0.3)",
              //枠線の色
              borderColor: "rgb(0, 154, 0, 1)",
              //結合点の背景色
              pointBackgroundColor: "rgb(0, 154, 0,  1)",
              //結合点の枠線の色
              pointBorderColor: "#fff",
              //結合点の背景色（ホバーしたとき）
              pointHoverBackgroundColor: "#fff",
              //結合点の枠線の色（ホバーしたとき）
              pointHoverBorderColor: "rgb(0, 154, 0, 1)",
              //結合点より外でマウスホバーを認識する範囲（ピクセル単位）
              hitRadius:10,
              //グラフのデータ
              data: your_average_score,
          },
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
              data: everyone_average_score,
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
            
        
