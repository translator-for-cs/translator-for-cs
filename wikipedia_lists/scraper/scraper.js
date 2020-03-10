const axios = require("axios");
const cheerio = require("cheerio");
const base_url = "https://en.wikipedia.org";

const findSwedish = async link => {
  const res = await axios.get(`${base_url}/${link}`).catch(e => null);
  if (res == null) {
    return null;
  }
  const $ = cheerio.load(res.data);
  const swe_link = $("li.interwiki-sv > a:nth-child(1)");
  if (swe_link.attr("title")) {
    return swe_link.attr("title").replace(" – Swedish", "");
  }
  return null;
}

const sleep = ms =>
  new Promise(resolve => setTimeout(resolve, ms));


const run = async () => {
  const url = process.argv[2];
  const { data } = await axios.get(url);
  const $ = cheerio.load(data);
  /*
  let primary = $(".mw-parser-output dl dt a")
    .map((_, a) => ({ title: $(a).attr("title"), link: $(a).attr("href") }))
    .toArray();
  let secondary = $(".mw-parser-output dl dd a[title]")
    .map((_, a) => ({ title: $(a).attr("title"), link: $(a).attr("href") }))
    .toArray();
    */


  let primary = $(".mw-parser-output > ul li > b a")
    .map((_, a) => ({ title: $(a).attr("title"), link: $(a).attr("href") }))
    .toArray();


  let secondary = $(".mw-parser-output > ul li > a")
    .map((_, a) => ({ title: $(a).attr("title"), link: $(a).attr("href") }))
    .toArray();

  for (let { title, link } of primary) {
    const title_swe = await findSwedish(link);
    process.stdout.write(`${title}, ${title_swe}\n`);
    await sleep(100);
  }
  console.log("---- Secondary words -----");
  for (let { title, link } of secondary) {
    const title_swe = await findSwedish(link);
    process.stdout.write(`${title}, ${title_swe}\n`);
    await sleep(100);
  }
  //console.log(pairs);
}

run().catch(console.log);