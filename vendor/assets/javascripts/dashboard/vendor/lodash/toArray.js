var Symbol=require("./_Symbol"),copyArray=require("./_copyArray"),getTag=require("./_getTag"),isArrayLike=require("./isArrayLike"),isString=require("./isString"),iteratorToArray=require("./_iteratorToArray"),mapToArray=require("./_mapToArray"),setToArray=require("./_setToArray"),stringToArray=require("./_stringToArray"),values=require("./values"),mapTag="[object Map]",setTag="[object Set]",symIterator=Symbol?Symbol.iterator:void 0;function toArray(r){if(!r)return[];if(isArrayLike(r))return isString(r)?stringToArray(r):copyArray(r);if(symIterator&&r[symIterator])return iteratorToArray(r[symIterator]());var e=getTag(r);return(e==mapTag?mapToArray:e==setTag?setToArray:values)(r)}module.exports=toArray;