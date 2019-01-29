function processData(input) {
  // matching the email addresses
  let regex = /\b(\w*\.)*\w*@\w+(\.\w*)+\b/g;
  let results = input.match(regex);

  // remove duplicates
  let uniqueResults = [...new Set(results)];

  // order it into alphabetical order
  uniqueResults.sort();

  // join them into a string with ";""
  let resultStr = uniqueResults.join(";");

  console.log(resultStr);
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
