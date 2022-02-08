var ctx = document.getElementById("myBarChart");
let dstr = JSON.parse(document.querySelector('#dstr').dataset.json);
let dint = JSON.parse(document.querySelector('#dint').dataset.json);
let darr = JSON.parse(document.querySelector('#darr').dataset.json);
let dhash = JSON.parse(document.querySelector('#dhash').dataset.json);
let dtotal = JSON.parse(document.querySelector('#dtotal').dataset.json);
let dobj = JSON.parse(document.querySelector('#dobj').dataset.json);
let dreg = JSON.parse(document.querySelector('#dreg').dataset.json);

your_dev = new Array(dstr, dint, darr, dhash, dtotal, dobj, dreg)
var myBarChart = new Chart(ctx, {
  //グラフの種類
  type: 'bar',
  //データの設定
  data: {
      //データ項目のラベル
      labels: ["String", "Integer", "Array", "Hash", "Total","Object", "Regexp"],
      //データセット
      datasets:[
            {
              backgroundColor: [
                                "rgba(240, 96, 96, 0.5)",
                                "rgba(81, 184, 245, 0.5)",
                                "rgba(8, 145, 39, 0.5)",
                                "rgba(215, 224, 0, 0.5)",
                                "rgba(255, 76, 196, 0.5)",
                                "rgba(255, 159, 6, 0.5)",
                                "rgba(74, 70, 64, 0.5)",
                                  ],
              borderColor: [
                                "rgba(240, 96, 96, 1)",
                                "rgba(81, 184, 245, 1)",
                                "rgba(8, 145, 39, 1)",
                                "rgba(215, 224, 0, 0.5)",
                                "rgba(255, 76, 196, 1)",
                                "rgba(255, 159, 6, 1)",
                                "rgba(74, 70, 64, 1)",
                                ],
              hoverBackgroundColor: [
                                "rgba(240, 96, 96, 1)",
                                "rgba(81, 184, 245, 1)", 
                                "rgba(8, 145, 39, 1)", 
                                "rgba(215, 224, 0, 1)",
                                "rgba(255, 76, 196, 1)",
                                "rgba(255, 159, 6, 1)",
                                "rgba(74, 70, 64, 1)",
                                ],
              borderWidth: 1,
              //グラフのデータ
              data: your_dev
            } 
          ]
        },
  options: {
    indexAxis: 'y',
      // レスポンシブ指定
    responsive: true,
    plugins: {
      legend : {
        display : false, 
      },
    }
  }
});    
