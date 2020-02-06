#!/usr/bin/env node
const fs = require("fs");

let input = "";

process.stdin.on("data", function (chunk) {
  input += chunk;
});

process.stdin.on("end", function () {
  console.log(JSON.stringify(parse_file(input), null, " "));
});

const parse_file = f => {
  let lines = f.trim().split("\n").map(line => line.trim().split(",").map(p => p.trim()));
  return lines.map(([eng, swe]) => ({
    id: is_cn(eng) ? parse_item(eng).parts.map(e => e.word).join(" ") : parse_item(eng).word,
    eng: parse_item(eng),
    swe: parse_item(swe),
  }));
}

const parse_item = item =>
  is_cn(item) ? parse_complex_noun_parts(item.replace("CN ", "")) : parse_word(item);


const is_cn = w => {
  return w.startsWith("CN");
}

const parse_word = w => {
  let split = w.split(/_|-/);
  return { type: split[1], word: split[0] }
}

const parse_complex_noun_parts = w => {
  let split = w.split(" ").map(w => w.trim());
  return { type: "CN", parts: [...split.map(parse_word)] };
}