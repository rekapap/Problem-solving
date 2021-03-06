function processData(input) {
  let regex = /<a.*?href="(.*?)".*?>(.*?)<\/a>/ig;
  let results = [];
  let match;
  do {
      match = regex.exec(input);
      if (match) {
          let subString = match[1].trim() + ',' + match[2].replace(/<.*?>/g,'').trim()
          results.push(subString);
      }
  } while (match);
  console.log(results.join('\n'));
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
  _input += input;
});

process.stdin.on("end", function () {
 processData(_input);
});
