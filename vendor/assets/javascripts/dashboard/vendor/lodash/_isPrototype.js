var objectProto=Object.prototype;function isPrototype(o){var t=o&&o.constructor;return o===("function"==typeof t&&t.prototype||objectProto)}module.exports=isPrototype;