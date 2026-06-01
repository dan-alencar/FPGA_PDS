"use strict";(()=>{var Hd=Object.create;var ai=Object.defineProperty;var Wd=Object.getOwnPropertyDescriptor;var Vd=Object.getOwnPropertyNames;var Gd=Object.getPrototypeOf,jd=Object.prototype.hasOwnProperty;var sr=(t,e)=>()=>(e||t((e={exports:{}}).exports,e),e.exports);var Kd=(t,e,o,n)=>{if(e&&typeof e=="object"||typeof e=="function")for(let a of Vd(e))!jd.call(t,a)&&a!==o&&ai(t,a,{get:()=>e[a],enumerable:!(n=Wd(e,a))||n.enumerable});return t};var g=(t,e,o)=>(o=t!=null?Hd(Gd(t)):{},Kd(e||!t||!t.__esModule?ai(o,"default",{value:t,enumerable:!0}):o,t));var N=sr((vu,ii)=>{ii.exports=ftGlobals.wcUtils});var D=sr((Su,si)=>{si.exports=ftGlobals.lit});var V=sr((Ou,li)=>{li.exports=ftGlobals.litDecorators});var pr=sr((ig,As)=>{As.exports=ftGlobals.litClassMap});var il=sr((Kg,al)=>{al.exports=ftGlobals.litUnsafeHTML});var Lc=sr((rr,Tc)=>{var wn=typeof globalThis<"u"&&globalThis||typeof self<"u"&&self||typeof global<"u"&&global,An=function(){function t(){this.fetch=!1,this.DOMException=wn.DOMException}return t.prototype=wn,new t}();(function(t){var e=function(o){var n=typeof t<"u"&&t||typeof self<"u"&&self||typeof global<"u"&&global||{},a={searchParams:"URLSearchParams"in n,iterable:"Symbol"in n&&"iterator"in Symbol,blob:"FileReader"in n&&"Blob"in n&&function(){try{return new Blob,!0}catch{return!1}}(),formData:"FormData"in n,arrayBuffer:"ArrayBuffer"in n};function i(h){return h&&DataView.prototype.isPrototypeOf(h)}if(a.arrayBuffer)var s=["[object Int8Array]","[object Uint8Array]","[object Uint8ClampedArray]","[object Int16Array]","[object Uint16Array]","[object Int32Array]","[object Uint32Array]","[object Float32Array]","[object Float64Array]"],c=ArrayBuffer.isView||function(h){return h&&s.indexOf(Object.prototype.toString.call(h))>-1};function p(h){if(typeof h!="string"&&(h=String(h)),/[^a-z0-9\-#$%&'*+.^_`|~!]/i.test(h)||h==="")throw new TypeError('Invalid character in header field name: "'+h+'"');return h.toLowerCase()}function u(h){return typeof h!="string"&&(h=String(h)),h}function m(h){var x={next:function(){var _=h.shift();return{done:_===void 0,value:_}}};return a.iterable&&(x[Symbol.iterator]=function(){return x}),x}function y(h){this.map={},h instanceof y?h.forEach(function(x,_){this.append(_,x)},this):Array.isArray(h)?h.forEach(function(x){if(x.length!=2)throw new TypeError("Headers constructor: expected name/value pair to be length 2, found"+x.length);this.append(x[0],x[1])},this):h&&Object.getOwnPropertyNames(h).forEach(function(x){this.append(x,h[x])},this)}y.prototype.append=function(h,x){h=p(h),x=u(x);var _=this.map[h];this.map[h]=_?_+", "+x:x},y.prototype.delete=function(h){delete this.map[p(h)]},y.prototype.get=function(h){return h=p(h),this.has(h)?this.map[h]:null},y.prototype.has=function(h){return this.map.hasOwnProperty(p(h))},y.prototype.set=function(h,x){this.map[p(h)]=u(x)},y.prototype.forEach=function(h,x){for(var _ in this.map)this.map.hasOwnProperty(_)&&h.call(x,this.map[_],_,this)},y.prototype.keys=function(){var h=[];return this.forEach(function(x,_){h.push(_)}),m(h)},y.prototype.values=function(){var h=[];return this.forEach(function(x){h.push(x)}),m(h)},y.prototype.entries=function(){var h=[];return this.forEach(function(x,_){h.push([_,x])}),m(h)},a.iterable&&(y.prototype[Symbol.iterator]=y.prototype.entries);function b(h){if(!h._noBody){if(h.bodyUsed)return Promise.reject(new TypeError("Already read"));h.bodyUsed=!0}}function S(h){return new Promise(function(x,_){h.onload=function(){x(h.result)},h.onerror=function(){_(h.error)}})}function v(h){var x=new FileReader,_=S(x);return x.readAsArrayBuffer(h),_}function O(h){var x=new FileReader,_=S(x),W=/charset=([A-Za-z0-9_-]+)/.exec(h.type),ee=W?W[1]:"utf-8";return x.readAsText(h,ee),_}function P(h){for(var x=new Uint8Array(h),_=new Array(x.length),W=0;W<x.length;W++)_[W]=String.fromCharCode(x[W]);return _.join("")}function T(h){if(h.slice)return h.slice(0);var x=new Uint8Array(h.byteLength);return x.set(new Uint8Array(h)),x.buffer}function L(){return this.bodyUsed=!1,this._initBody=function(h){this.bodyUsed=this.bodyUsed,this._bodyInit=h,h?typeof h=="string"?this._bodyText=h:a.blob&&Blob.prototype.isPrototypeOf(h)?this._bodyBlob=h:a.formData&&FormData.prototype.isPrototypeOf(h)?this._bodyFormData=h:a.searchParams&&URLSearchParams.prototype.isPrototypeOf(h)?this._bodyText=h.toString():a.arrayBuffer&&a.blob&&i(h)?(this._bodyArrayBuffer=T(h.buffer),this._bodyInit=new Blob([this._bodyArrayBuffer])):a.arrayBuffer&&(ArrayBuffer.prototype.isPrototypeOf(h)||c(h))?this._bodyArrayBuffer=T(h):this._bodyText=h=Object.prototype.toString.call(h):(this._noBody=!0,this._bodyText=""),this.headers.get("content-type")||(typeof h=="string"?this.headers.set("content-type","text/plain;charset=UTF-8"):this._bodyBlob&&this._bodyBlob.type?this.headers.set("content-type",this._bodyBlob.type):a.searchParams&&URLSearchParams.prototype.isPrototypeOf(h)&&this.headers.set("content-type","application/x-www-form-urlencoded;charset=UTF-8"))},a.blob&&(this.blob=function(){var h=b(this);if(h)return h;if(this._bodyBlob)return Promise.resolve(this._bodyBlob);if(this._bodyArrayBuffer)return Promise.resolve(new Blob([this._bodyArrayBuffer]));if(this._bodyFormData)throw new Error("could not read FormData body as blob");return Promise.resolve(new Blob([this._bodyText]))}),this.arrayBuffer=function(){if(this._bodyArrayBuffer){var h=b(this);return h||(ArrayBuffer.isView(this._bodyArrayBuffer)?Promise.resolve(this._bodyArrayBuffer.buffer.slice(this._bodyArrayBuffer.byteOffset,this._bodyArrayBuffer.byteOffset+this._bodyArrayBuffer.byteLength)):Promise.resolve(this._bodyArrayBuffer))}else{if(a.blob)return this.blob().then(v);throw new Error("could not read as ArrayBuffer")}},this.text=function(){var h=b(this);if(h)return h;if(this._bodyBlob)return O(this._bodyBlob);if(this._bodyArrayBuffer)return Promise.resolve(P(this._bodyArrayBuffer));if(this._bodyFormData)throw new Error("could not read FormData body as text");return Promise.resolve(this._bodyText)},a.formData&&(this.formData=function(){return this.text().then(He)}),this.json=function(){return this.text().then(JSON.parse)},this}var k=["CONNECT","DELETE","GET","HEAD","OPTIONS","PATCH","POST","PUT","TRACE"];function F(h){var x=h.toUpperCase();return k.indexOf(x)>-1?x:h}function M(h,x){if(!(this instanceof M))throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');x=x||{};var _=x.body;if(h instanceof M){if(h.bodyUsed)throw new TypeError("Already read");this.url=h.url,this.credentials=h.credentials,x.headers||(this.headers=new y(h.headers)),this.method=h.method,this.mode=h.mode,this.signal=h.signal,!_&&h._bodyInit!=null&&(_=h._bodyInit,h.bodyUsed=!0)}else this.url=String(h);if(this.credentials=x.credentials||this.credentials||"same-origin",(x.headers||!this.headers)&&(this.headers=new y(x.headers)),this.method=F(x.method||this.method||"GET"),this.mode=x.mode||this.mode||null,this.signal=x.signal||this.signal||function(){if("AbortController"in n){var U=new AbortController;return U.signal}}(),this.referrer=null,(this.method==="GET"||this.method==="HEAD")&&_)throw new TypeError("Body not allowed for GET or HEAD requests");if(this._initBody(_),(this.method==="GET"||this.method==="HEAD")&&(x.cache==="no-store"||x.cache==="no-cache")){var W=/([?&])_=[^&]*/;if(W.test(this.url))this.url=this.url.replace(W,"$1_="+new Date().getTime());else{var ee=/\?/;this.url+=(ee.test(this.url)?"&":"?")+"_="+new Date().getTime()}}}M.prototype.clone=function(){return new M(this,{body:this._bodyInit})};function He(h){var x=new FormData;return h.trim().split("&").forEach(function(_){if(_){var W=_.split("="),ee=W.shift().replace(/\+/g," "),U=W.join("=").replace(/\+/g," ");x.append(decodeURIComponent(ee),decodeURIComponent(U))}}),x}function mt(h){var x=new y,_=h.replace(/\r?\n[\t ]+/g," ");return _.split("\r").map(function(W){return W.indexOf(`
`)===0?W.substr(1,W.length):W}).forEach(function(W){var ee=W.split(":"),U=ee.shift().trim();if(U){var Po=ee.join(":").trim();try{x.append(U,Po)}catch(Fn){console.warn("Response "+Fn.message)}}}),x}L.call(M.prototype);function De(h,x){if(!(this instanceof De))throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');if(x||(x={}),this.type="default",this.status=x.status===void 0?200:x.status,this.status<200||this.status>599)throw new RangeError("Failed to construct 'Response': The status provided (0) is outside the range [200, 599].");this.ok=this.status>=200&&this.status<300,this.statusText=x.statusText===void 0?"":""+x.statusText,this.headers=new y(x.headers),this.url=x.url||"",this._initBody(h)}L.call(De.prototype),De.prototype.clone=function(){return new De(this._bodyInit,{status:this.status,statusText:this.statusText,headers:new y(this.headers),url:this.url})},De.error=function(){var h=new De(null,{status:200,statusText:""});return h.ok=!1,h.status=0,h.type="error",h};var gt=[301,302,303,307,308];De.redirect=function(h,x){if(gt.indexOf(x)===-1)throw new RangeError("Invalid status code");return new De(null,{status:x,headers:{location:h}})},o.DOMException=n.DOMException;try{new o.DOMException}catch{o.DOMException=function(x,_){this.message=x,this.name=_;var W=Error(x);this.stack=W.stack},o.DOMException.prototype=Object.create(Error.prototype),o.DOMException.prototype.constructor=o.DOMException}function xe(h,x){return new Promise(function(_,W){var ee=new M(h,x);if(ee.signal&&ee.signal.aborted)return W(new o.DOMException("Aborted","AbortError"));var U=new XMLHttpRequest;function Po(){U.abort()}U.onload=function(){var ve={statusText:U.statusText,headers:mt(U.getAllResponseHeaders()||"")};ee.url.indexOf("file://")===0&&(U.status<200||U.status>599)?ve.status=200:ve.status=U.status,ve.url="responseURL"in U?U.responseURL:ve.headers.get("X-Request-URL");var ir="response"in U?U.response:U.responseText;setTimeout(function(){_(new De(ir,ve))},0)},U.onerror=function(){setTimeout(function(){W(new TypeError("Network request failed"))},0)},U.ontimeout=function(){setTimeout(function(){W(new TypeError("Network request timed out"))},0)},U.onabort=function(){setTimeout(function(){W(new o.DOMException("Aborted","AbortError"))},0)};function Fn(ve){try{return ve===""&&n.location.href?n.location.href:ve}catch{return ve}}if(U.open(ee.method,Fn(ee.url),!0),ee.credentials==="include"?U.withCredentials=!0:ee.credentials==="omit"&&(U.withCredentials=!1),"responseType"in U&&(a.blob?U.responseType="blob":a.arrayBuffer&&(U.responseType="arraybuffer")),x&&typeof x.headers=="object"&&!(x.headers instanceof y||n.Headers&&x.headers instanceof n.Headers)){var ni=[];Object.getOwnPropertyNames(x.headers).forEach(function(ve){ni.push(p(ve)),U.setRequestHeader(ve,u(x.headers[ve]))}),ee.headers.forEach(function(ve,ir){ni.indexOf(ir)===-1&&U.setRequestHeader(ir,ve)})}else ee.headers.forEach(function(ve,ir){U.setRequestHeader(ir,ve)});ee.signal&&(ee.signal.addEventListener("abort",Po),U.onreadystatechange=function(){U.readyState===4&&ee.signal.removeEventListener("abort",Po)}),U.send(typeof ee._bodyInit>"u"?null:ee._bodyInit)})}return xe.polyfill=!0,n.fetch||(n.fetch=xe,n.Headers=y,n.Request=M,n.Response=De),o.Headers=y,o.Request=M,o.Response=De,o.fetch=xe,o}({})})(An);An.fetch.ponyfill=!0;delete An.fetch.polyfill;var Zr=wn.fetch?wn:An;rr=Zr.fetch;rr.default=Zr.fetch;rr.fetch=Zr.fetch;rr.Headers=Zr.Headers;rr.Request=Zr.Request;rr.Response=Zr.Response;Tc.exports=rr});var Ga=sr((SS,Jc)=>{Jc.exports=ftGlobals.litRepeat});var zd=g(N());var ue=g(D()),Xe=g(V()),$n=g(N());var ce;(function(t){t.CHECKBOX="CHECKBOX",t.DEEPLINK="DEEPLINK",t.BUTTON="BUTTON"})(ce||(ce={}));var Ne;(function(t){t.ALWAYS="ALWAYS",t.ON_LEAF="ON_LEAF",t.ON_DEPTH="ON_DEPTH"})(Ne||(Ne={}));var ua=g(D()),Te=g(N());var ds=g(N());var Gn=globalThis,_o=Gn.trustedTypes,ci=_o?_o.createPolicy("lit-html",{createHTML:t=>t}):void 0,yi="$lit$",Wt=`lit$${Math.random().toFixed(9).slice(2)}$`,mi="?"+Wt,Zd=`<${mi}>`,dr=document,ko=()=>dr.createComment(""),no=t=>t===null||typeof t!="object"&&typeof t!="function",jn=Array.isArray,qd=t=>jn(t)||typeof t?.[Symbol.iterator]=="function",Mn=`[ 	
\f\r]`,oo=/<(?:(!--|\/[^a-zA-Z])|(\/?[a-zA-Z][^>\s]*)|(\/?$))/g,di=/-->/g,pi=/>/g,lr=RegExp(`>|${Mn}(?:([^\\s"'>=/]+)(${Mn}*=${Mn}*(?:[^ 	
\f\r"'\`<>=]|("|')|))|$)`,"g"),ui=/'/g,fi=/"/g,gi=/^(?:script|style|textarea|title)$/i,Kn=t=>(e,...o)=>({_$litType$:t,strings:e,values:o}),bi=Kn(1),xi=Kn(2),vi=Kn(3),ao=Symbol.for("lit-noChange"),fe=Symbol.for("lit-nothing"),hi=new WeakMap,cr=dr.createTreeWalker(dr,129);function Si(t,e){if(!jn(t)||!t.hasOwnProperty("raw"))throw Error("invalid template strings array");return ci!==void 0?ci.createHTML(e):e}var Yd=(t,e)=>{let o=t.length-1,n=[],a,i=e===2?"<svg>":e===3?"<math>":"",s=oo;for(let c=0;c<o;c++){let p=t[c],u,m,y=-1,b=0;for(;b<p.length&&(s.lastIndex=b,m=s.exec(p),m!==null);)b=s.lastIndex,s===oo?m[1]==="!--"?s=di:m[1]!==void 0?s=pi:m[2]!==void 0?(gi.test(m[2])&&(a=RegExp("</"+m[2],"g")),s=lr):m[3]!==void 0&&(s=lr):s===lr?m[0]===">"?(s=a??oo,y=-1):m[1]===void 0?y=-2:(y=s.lastIndex-m[2].length,u=m[1],s=m[3]===void 0?lr:m[3]==='"'?fi:ui):s===fi||s===ui?s=lr:s===di||s===pi?s=oo:(s=lr,a=void 0);let S=s===lr&&t[c+1].startsWith("/>")?" ":"";i+=s===oo?p+Zd:y>=0?(n.push(u),p.slice(0,y)+yi+p.slice(y)+Wt+S):p+Wt+(y===-2?c:S)}return[Si(t,i+(t[o]||"<?>")+(e===2?"</svg>":e===3?"</math>":"")),n]},io=class t{constructor({strings:e,_$litType$:o},n){let a;this.parts=[];let i=0,s=0,c=e.length-1,p=this.parts,[u,m]=Yd(e,o);if(this.el=t.createElement(u,n),cr.currentNode=this.el.content,o===2||o===3){let y=this.el.content.firstChild;y.replaceWith(...y.childNodes)}for(;(a=cr.nextNode())!==null&&p.length<c;){if(a.nodeType===1){if(a.hasAttributes())for(let y of a.getAttributeNames())if(y.endsWith(yi)){let b=m[s++],S=a.getAttribute(y).split(Wt),v=/([.?@])?(.*)/.exec(b);p.push({type:1,index:i,name:v[2],strings:S,ctor:v[1]==="."?zn:v[1]==="?"?Hn:v[1]==="@"?Wn:wr}),a.removeAttribute(y)}else y.startsWith(Wt)&&(p.push({type:6,index:i}),a.removeAttribute(y));if(gi.test(a.tagName)){let y=a.textContent.split(Wt),b=y.length-1;if(b>0){a.textContent=_o?_o.emptyScript:"";for(let S=0;S<b;S++)a.append(y[S],ko()),cr.nextNode(),p.push({type:2,index:++i});a.append(y[b],ko())}}}else if(a.nodeType===8)if(a.data===mi)p.push({type:2,index:i});else{let y=-1;for(;(y=a.data.indexOf(Wt,y+1))!==-1;)p.push({type:7,index:i}),y+=Wt.length-1}i++}}static createElement(e,o){let n=dr.createElement("template");return n.innerHTML=e,n}};function Er(t,e,o=t,n){if(e===ao)return e;let a=n!==void 0?o._$Co?.[n]:o._$Cl,i=no(e)?void 0:e._$litDirective$;return a?.constructor!==i&&(a?._$AO?.(!1),i===void 0?a=void 0:(a=new i(t),a._$AT(t,o,n)),n!==void 0?(o._$Co??=[])[n]=a:o._$Cl=a),a!==void 0&&(e=Er(t,a._$AS(t,e.values),a,n)),e}var Un=class{constructor(e,o){this._$AV=[],this._$AN=void 0,this._$AD=e,this._$AM=o}get parentNode(){return this._$AM.parentNode}get _$AU(){return this._$AM._$AU}u(e){let{el:{content:o},parts:n}=this._$AD,a=(e?.creationScope??dr).importNode(o,!0);cr.currentNode=a;let i=cr.nextNode(),s=0,c=0,p=n[0];for(;p!==void 0;){if(s===p.index){let u;p.type===2?u=new Do(i,i.nextSibling,this,e):p.type===1?u=new p.ctor(i,p.name,p.strings,this,e):p.type===6&&(u=new Vn(i,this,e)),this._$AV.push(u),p=n[++c]}s!==p?.index&&(i=cr.nextNode(),s++)}return cr.currentNode=dr,a}p(e){let o=0;for(let n of this._$AV)n!==void 0&&(n.strings!==void 0?(n._$AI(e,n,o),o+=n.strings.length-2):n._$AI(e[o])),o++}},Do=class t{get _$AU(){return this._$AM?._$AU??this._$Cv}constructor(e,o,n,a){this.type=2,this._$AH=fe,this._$AN=void 0,this._$AA=e,this._$AB=o,this._$AM=n,this.options=a,this._$Cv=a?.isConnected??!0}get parentNode(){let e=this._$AA.parentNode,o=this._$AM;return o!==void 0&&e?.nodeType===11&&(e=o.parentNode),e}get startNode(){return this._$AA}get endNode(){return this._$AB}_$AI(e,o=this){e=Er(this,e,o),no(e)?e===fe||e==null||e===""?(this._$AH!==fe&&this._$AR(),this._$AH=fe):e!==this._$AH&&e!==ao&&this._(e):e._$litType$!==void 0?this.$(e):e.nodeType!==void 0?this.T(e):qd(e)?this.k(e):this._(e)}O(e){return this._$AA.parentNode.insertBefore(e,this._$AB)}T(e){this._$AH!==e&&(this._$AR(),this._$AH=this.O(e))}_(e){this._$AH!==fe&&no(this._$AH)?this._$AA.nextSibling.data=e:this.T(dr.createTextNode(e)),this._$AH=e}$(e){let{values:o,_$litType$:n}=e,a=typeof n=="number"?this._$AC(e):(n.el===void 0&&(n.el=io.createElement(Si(n.h,n.h[0]),this.options)),n);if(this._$AH?._$AD===a)this._$AH.p(o);else{let i=new Un(a,this),s=i.u(this.options);i.p(o),this.T(s),this._$AH=i}}_$AC(e){let o=hi.get(e.strings);return o===void 0&&hi.set(e.strings,o=new io(e)),o}k(e){jn(this._$AH)||(this._$AH=[],this._$AR());let o=this._$AH,n,a=0;for(let i of e)a===o.length?o.push(n=new t(this.O(ko()),this.O(ko()),this,this.options)):n=o[a],n._$AI(i),a++;a<o.length&&(this._$AR(n&&n._$AB.nextSibling,a),o.length=a)}_$AR(e=this._$AA.nextSibling,o){for(this._$AP?.(!1,!0,o);e&&e!==this._$AB;){let n=e.nextSibling;e.remove(),e=n}}setConnected(e){this._$AM===void 0&&(this._$Cv=e,this._$AP?.(e))}},wr=class{get tagName(){return this.element.tagName}get _$AU(){return this._$AM._$AU}constructor(e,o,n,a,i){this.type=1,this._$AH=fe,this._$AN=void 0,this.element=e,this.name=o,this._$AM=a,this.options=i,n.length>2||n[0]!==""||n[1]!==""?(this._$AH=Array(n.length-1).fill(new String),this.strings=n):this._$AH=fe}_$AI(e,o=this,n,a){let i=this.strings,s=!1;if(i===void 0)e=Er(this,e,o,0),s=!no(e)||e!==this._$AH&&e!==ao,s&&(this._$AH=e);else{let c=e,p,u;for(e=i[0],p=0;p<i.length-1;p++)u=Er(this,c[n+p],o,p),u===ao&&(u=this._$AH[p]),s||=!no(u)||u!==this._$AH[p],u===fe?e=fe:e!==fe&&(e+=(u??"")+i[p+1]),this._$AH[p]=u}s&&!a&&this.j(e)}j(e){e===fe?this.element.removeAttribute(this.name):this.element.setAttribute(this.name,e??"")}},zn=class extends wr{constructor(){super(...arguments),this.type=3}j(e){this.element[this.name]=e===fe?void 0:e}},Hn=class extends wr{constructor(){super(...arguments),this.type=4}j(e){this.element.toggleAttribute(this.name,!!e&&e!==fe)}},Wn=class extends wr{constructor(e,o,n,a,i){super(e,o,n,a,i),this.type=5}_$AI(e,o=this){if((e=Er(this,e,o,0)??fe)===ao)return;let n=this._$AH,a=e===fe&&n!==fe||e.capture!==n.capture||e.once!==n.once||e.passive!==n.passive,i=e!==fe&&(n===fe||a);a&&this.element.removeEventListener(this.name,this,n),i&&this.element.addEventListener(this.name,this,e),this._$AH=e}handleEvent(e){typeof this._$AH=="function"?this._$AH.call(this.options?.host??this.element,e):this._$AH.handleEvent(e)}},Vn=class{constructor(e,o,n){this.element=e,this.type=6,this._$AN=void 0,this._$AM=o,this.options=n}get _$AU(){return this._$AM._$AU}_$AI(e){Er(this,e)}};var Xd=Gn.litHtmlPolyfillSupport;Xd?.(io,Do),(Gn.litHtmlVersions??=[]).push("3.3.0");var Ci=Symbol.for(""),Qd=t=>{if(t?.r===Ci)return t?._$litStatic$},Zn=t=>({_$litStatic$:t,r:Ci});var Oi=new Map,qn=t=>(e,...o)=>{let n=o.length,a,i,s=[],c=[],p,u=0,m=!1;for(;u<n;){for(p=e[u];u<n&&(i=o[u],(a=Qd(i))!==void 0);)p+=a+e[++u],m=!0;u!==n&&c.push(i),s.push(p),u++}if(u===n&&s.push(e[n]),m){let y=s.join("$$lit$$");(e=Oi.get(y))===void 0&&(s.raw=s,Oi.set(y,e=s)),o=c}return t(e,...o)},Yn=qn(bi),Au=qn(xi),Ru=qn(vi);var Xn=g(V()),cs=g(N());var Vt;(function(t){t.title="title",t.title_dense="title-dense",t.subtitle1="subtitle1",t.subtitle2="subtitle2",t.body1="body1",t.body2="body2",t.caption="caption",t.breadcrumb="breadcrumb",t.overline="overline",t.button="button",t.display="display",t.title1="title-1",t.title2="title-2",t.title3="title-3",t.body1regular="body-1-regular",t.body1medium="body-1-medium",t.body1semibold="body-1-semibold",t.body2regular="body-2-regular",t.body2medium="body-2-medium",t.body2semibold="body-2-semibold",t.label1medium="label-1-medium",t.label1semibold="label-1-semibold",t.label1bold="label-1-bold",t.label2medium="label-2-medium",t.label2semibold="label-2-semibold",t.label2bold="label-2-bold",t.caption1medium="caption-1-medium",t.caption1semibold="caption-1-semibold",t.caption1bold="caption-1-bold",t.caption2medium="caption-2-medium",t.caption2semibold="caption-2-semibold",t.caption2bold="caption-2-bold"})(Vt||(Vt={}));var nt=g(D()),A=g(N());var Lt=g(D(),1),Gt=t=>typeof t=="string"?(0,Lt.unsafeCSS)(t):t,r=class{static create(e,o,n,a){let i=c=>Gt(c??a),s=Lt.css`var(${Gt(e)}, ${i(a)})`;return s.name=e,s.description=o,s.category=n,s.defaultValue=a,s.defaultCssValue=i,s.get=c=>Lt.css`var(${Gt(e)}, ${i(c)})`,s.breadcrumb=()=>[],s.lastResortDefaultValue=()=>a,s}static extend(e,o,n,a){let i=c=>n.get(c??a),s=Lt.css`var(${Gt(e)}, ${i(a)})`;return s.name=e,s.description=o,s.category=n.category,s.fallbackVariable=n,s.defaultValue=a,s.defaultCssValue=i,s.get=c=>Lt.css`var(${Gt(e)}, ${i(c)})`,s.breadcrumb=()=>[n.name,...n.breadcrumb()],s.lastResortDefaultValue=()=>a??n.lastResortDefaultValue(),s}static external(e,o){let n=i=>e.fallbackVariable?e.fallbackVariable.get(i??e.defaultValue):Gt(i??e.lastResortDefaultValue()),a=Lt.css`var(${Gt(e.name)}, ${n(e.defaultValue)})`;return a.name=e.name,a.category=e.category,a.fallbackVariable=e.fallbackVariable,a.defaultValue=e.defaultValue,a.context=o,a.defaultCssValue=n,a.get=i=>Lt.css`var(${Gt(e.name)}, ${n(i)})`,a.breadcrumb=()=>e.fallbackVariable?[e.fallbackVariable.name,...e.fallbackVariable.breadcrumb()]:[],a.lastResortDefaultValue=()=>e.lastResortDefaultValue(),a}};var l={colorWhite:r.create("--ft-color-white","","COLOR","#ffffff"),colorGray0:r.create("--ft-color-gray-0","","COLOR","#71718e"),colorGray10:r.create("--ft-color-gray-10","","COLOR","#fbfbfc"),colorGray20:r.create("--ft-color-gray-20","","COLOR","#f2f2f5"),colorGray30:r.create("--ft-color-gray-30","","COLOR","#e9e9ed"),colorGray40:r.create("--ft-color-gray-40","","COLOR","#e0e0e6"),colorGray50:r.create("--ft-color-gray-50","","COLOR","#cdcdd7"),colorGray60:r.create("--ft-color-gray-60","","COLOR","#bbbbc9"),colorGray70:r.create("--ft-color-gray-70","","COLOR","#a8a8ba"),colorGray80:r.create("--ft-color-gray-80","","COLOR","#9696ab"),colorGray90:r.create("--ft-color-gray-90","","COLOR","#83839d"),colorGray100:r.create("--ft-color-gray-100","","COLOR","#62627c"),colorGray200:r.create("--ft-color-gray-200","","COLOR","#545469"),colorGray300:r.create("--ft-color-gray-300","","COLOR","#454557"),colorGray400:r.create("--ft-color-gray-400","","COLOR","#363644"),colorGray500:r.create("--ft-color-gray-500","","COLOR","#282832"),colorGray600:r.create("--ft-color-gray-600","","COLOR","#19191f"),colorGray700:r.create("--ft-color-gray-700","","COLOR","#0a0a0d"),colorBrand0:r.create("--ft-color-brand-0","","COLOR","#9d207b"),colorBrand10:r.create("--ft-color-brand-10","","COLOR","#f7edf4"),colorBrand20:r.create("--ft-color-brand-20","","COLOR","#ebcfe4"),colorBrand30:r.create("--ft-color-brand-30","","COLOR","#dfb2d3"),colorBrand40:r.create("--ft-color-brand-40","","COLOR","#d395c2"),colorBrand50:r.create("--ft-color-brand-50","","COLOR","#c778b1"),colorBrand60:r.create("--ft-color-brand-60","","COLOR","#ba5ba1"),colorBrand70:r.create("--ft-color-brand-70","","COLOR","#ae3e90"),colorBrand100:r.create("--ft-color-brand-100","","COLOR","#8d1d6e"),colorBrand200:r.create("--ft-color-brand-200","","COLOR","#78185e"),colorBrand300:r.create("--ft-color-brand-300","","COLOR","#62144d"),colorBrand400:r.create("--ft-color-brand-400","","COLOR","#4d103c"),colorBrand500:r.create("--ft-color-brand-500","","COLOR","#380b2c"),colorBrand600:r.create("--ft-color-brand-600","","COLOR","#23071b"),colorBrand700:r.create("--ft-color-brand-700","","COLOR","#0d030b"),colorCyan0:r.create("--ft-color-cyan-0","","COLOR","#0e98b4"),colorCyan10:r.create("--ft-color-cyan-10","","COLOR","#ebf6f9"),colorCyan20:r.create("--ft-color-cyan-20","","COLOR","#cbe9ef"),colorCyan30:r.create("--ft-color-cyan-30","","COLOR","#acdbe5"),colorCyan40:r.create("--ft-color-cyan-40","","COLOR","#8ccedb"),colorCyan50:r.create("--ft-color-cyan-50","","COLOR","#6dc0d1"),colorCyan60:r.create("--ft-color-cyan-60","","COLOR","#4db3c8"),colorCyan70:r.create("--ft-color-cyan-70","","COLOR","#2ea5be"),colorCyan100:r.create("--ft-color-cyan-100","","COLOR","#0c849c"),colorCyan200:r.create("--ft-color-cyan-200","","COLOR","#0a7085"),colorCyan300:r.create("--ft-color-cyan-300","","COLOR","#085c6d"),colorCyan400:r.create("--ft-color-cyan-400","","COLOR","#074856"),colorCyan500:r.create("--ft-color-cyan-500","","COLOR","#05343e"),colorCyan600:r.create("--ft-color-cyan-600","","COLOR","#032127"),colorCyan700:r.create("--ft-color-cyan-700","","COLOR","#010d0f"),colorGreen0:r.create("--ft-color-green-0","","COLOR","#21a274"),colorGreen10:r.create("--ft-color-green-10","","COLOR","#edf7f3"),colorGreen20:r.create("--ft-color-green-20","","COLOR","#cfebe1"),colorGreen30:r.create("--ft-color-green-30","","COLOR","#b2dfcf"),colorGreen40:r.create("--ft-color-green-40","","COLOR","#95d3bd"),colorGreen50:r.create("--ft-color-green-50","","COLOR","#78c7ab"),colorGreen60:r.create("--ft-color-green-60","","COLOR","#5bba98"),colorGreen70:r.create("--ft-color-green-70","","COLOR","#3eae86"),colorGreen100:r.create("--ft-color-green-100","","COLOR","#1d8d65"),colorGreen200:r.create("--ft-color-green-200","","COLOR","#187856"),colorGreen300:r.create("--ft-color-green-300","","COLOR","#146246"),colorGreen400:r.create("--ft-color-green-400","","COLOR","#104d37"),colorGreen500:r.create("--ft-color-green-500","","COLOR","#0b3828"),colorGreen600:r.create("--ft-color-green-600","","COLOR","#072319"),colorGreen700:r.create("--ft-color-green-700","","COLOR","#030d0a"),colorOrange0:r.create("--ft-color-orange-0","","COLOR","#F2700D"),colorOrange10:r.create("--ft-color-orange-10","","COLOR","#FFF7EB"),colorOrange20:r.create("--ft-color-orange-20","","COLOR","#FFEDD6"),colorOrange30:r.create("--ft-color-orange-30","","COLOR","#FFDDB2"),colorOrange40:r.create("--ft-color-orange-40","","COLOR","#FECB90"),colorOrange50:r.create("--ft-color-orange-50","","COLOR","#FCB76E"),colorOrange60:r.create("--ft-color-orange-60","","COLOR","#F9A34D"),colorOrange70:r.create("--ft-color-orange-70","","COLOR","#F68B2C"),colorOrange100:r.create("--ft-color-orange-100","","COLOR","#D35909"),colorOrange200:r.create("--ft-color-orange-200","","COLOR","#B74706"),colorOrange300:r.create("--ft-color-orange-300","","COLOR","#913503"),colorOrange400:r.create("--ft-color-orange-400","","COLOR","#6F2601"),colorOrange500:r.create("--ft-color-orange-500","","COLOR","#4D1800"),colorOrange600:r.create("--ft-color-orange-600","","COLOR","#330F00"),colorOrange700:r.create("--ft-color-orange-700","","COLOR","#140600"),colorRed0:r.create("--ft-color-red-0","","COLOR","#b40e2c"),colorRed10:r.create("--ft-color-red-10","","COLOR","#f9ebed"),colorRed20:r.create("--ft-color-red-20","","COLOR","#efcbd2"),colorRed30:r.create("--ft-color-red-30","","COLOR","#e5acb6"),colorRed40:r.create("--ft-color-red-40","","COLOR","#db8c9b"),colorRed50:r.create("--ft-color-red-50","","COLOR","#d16d7f"),colorRed60:r.create("--ft-color-red-60","","COLOR","#c84d63"),colorRed70:r.create("--ft-color-red-70","","COLOR","#be2e48"),colorRed100:r.create("--ft-color-red-100","","COLOR","#9c0c26"),colorRed200:r.create("--ft-color-red-200","","COLOR","#850a20"),colorRed300:r.create("--ft-color-red-300","","COLOR","#6d081b"),colorRed400:r.create("--ft-color-red-400","","COLOR","#560715"),colorRed500:r.create("--ft-color-red-500","","COLOR","#3e050f"),colorRed600:r.create("--ft-color-red-600","","COLOR","#270309"),colorRed700:r.create("--ft-color-red-700","","COLOR","#0f0104"),colorYellow0:r.create("--ft-color-yellow-0","","COLOR","#E4C00C"),colorYellow10:r.create("--ft-color-yellow-10","","COLOR","#fefae9"),colorYellow20:r.create("--ft-color-yellow-20","","COLOR","#fcf4ca"),colorYellow30:r.create("--ft-color-yellow-30","","COLOR","#faedaa"),colorYellow40:r.create("--ft-color-yellow-40","","COLOR","#f9e78b"),colorYellow50:r.create("--ft-color-yellow-50","","COLOR","#f7e06b"),colorYellow60:r.create("--ft-color-yellow-60","","COLOR","#F4D63E"),colorYellow70:r.create("--ft-color-yellow-70","","COLOR","#F3CE16"),colorYellow100:r.create("--ft-color-yellow-100","","COLOR","#d3b10b"),colorYellow200:r.create("--ft-color-yellow-200","","COLOR","#b3970a"),colorYellow300:r.create("--ft-color-yellow-300","","COLOR","#947c08"),colorYellow400:r.create("--ft-color-yellow-400","","COLOR","#746206"),colorYellow500:r.create("--ft-color-yellow-500","","COLOR","#554705"),colorYellow600:r.create("--ft-color-yellow-600","","COLOR","#352d03"),colorYellow700:r.create("--ft-color-yellow-700","","COLOR","#161201"),colorUltramarine0:r.create("--ft-color-ultramarine-0","","COLOR","#3C19E5"),colorUltramarine10:r.create("--ft-color-ultramarine-10","","COLOR","#EDEAFD"),colorUltramarine20:r.create("--ft-color-ultramarine-20","","COLOR","#D4CCF9"),colorUltramarine30:r.create("--ft-color-ultramarine-30","","COLOR","#BBAFF6"),colorUltramarine40:r.create("--ft-color-ultramarine-40","","COLOR","#A191F3"),colorUltramarine50:r.create("--ft-color-ultramarine-50","","COLOR","#8873EF"),colorUltramarine60:r.create("--ft-color-ultramarine-60","","COLOR","#6F55EC"),colorUltramarine70:r.create("--ft-color-ultramarine-70","","COLOR","#5537E8"),colorUltramarine100:r.create("--ft-color-ultramarine-100","","COLOR","#3416C7"),colorUltramarine200:r.create("--ft-color-ultramarine-200","","COLOR","#2C13A9"),colorUltramarine300:r.create("--ft-color-ultramarine-300","","COLOR","#250F8C"),colorUltramarine400:r.create("--ft-color-ultramarine-400","","COLOR","#1D0C6E"),colorUltramarine500:r.create("--ft-color-ultramarine-500","","COLOR","#150950"),colorUltramarine600:r.create("--ft-color-ultramarine-600","","COLOR","#0D0532"),colorUltramarine700:r.create("--ft-color-ultramarine-700","","COLOR","#050215"),colorAvocado0:r.create("--ft-color-avocado-0","","COLOR","#98BD28"),colorAvocado10:r.create("--ft-color-avocado-10","","COLOR","#F6F9EC"),colorAvocado20:r.create("--ft-color-avocado-20","","COLOR","#E8F0D0"),colorAvocado30:r.create("--ft-color-avocado-30","","COLOR","#DBE8B4"),colorAvocado40:r.create("--ft-color-avocado-40","","COLOR","#CEDF98"),colorAvocado50:r.create("--ft-color-avocado-50","","COLOR","#C0D77C"),colorAvocado60:r.create("--ft-color-avocado-60","","COLOR","#B3CE60"),colorAvocado70:r.create("--ft-color-avocado-70","","COLOR","#A5C644"),colorAvocado100:r.create("--ft-color-avocado-100","","COLOR","#84A423"),colorAvocado200:r.create("--ft-color-avocado-200","","COLOR","#708C1E"),colorAvocado300:r.create("--ft-color-avocado-300","","COLOR","#5D7318"),colorAvocado400:r.create("--ft-color-avocado-400","","COLOR","#495B13"),colorAvocado500:r.create("--ft-color-avocado-500","","COLOR","#35420E"),colorAvocado600:r.create("--ft-color-avocado-600","","COLOR","#212A09"),colorAvocado700:r.create("--ft-color-avocado-700","","COLOR","#0E1104"),colorBrown0:r.create("--ft-color-brown-0","","COLOR","#B26F4D"),colorBrown10:r.create("--ft-color-brown-10","","COLOR","#F8F2EF"),colorBrown20:r.create("--ft-color-brown-20","","COLOR","#EEDFD8"),colorBrown30:r.create("--ft-color-brown-30","","COLOR","#E4CDC1"),colorBrown40:r.create("--ft-color-brown-40","","COLOR","#DABAAA"),colorBrown50:r.create("--ft-color-brown-50","","COLOR","#D0A792"),colorBrown60:r.create("--ft-color-brown-60","","COLOR","#C6947B"),colorBrown70:r.create("--ft-color-brown-70","","COLOR","#BC8264"),colorBrown100:r.create("--ft-color-brown-100","","COLOR","#9B6143"),colorBrown200:r.create("--ft-color-brown-200","","COLOR","#845239"),colorBrown300:r.create("--ft-color-brown-300","","COLOR","#6D442F"),colorBrown400:r.create("--ft-color-brown-400","","COLOR","#553525"),colorBrown500:r.create("--ft-color-brown-500","","COLOR","#3E271B"),colorBrown600:r.create("--ft-color-brown-600","","COLOR","#271811"),colorBrown700:r.create("--ft-color-brown-700","","COLOR","#100A07"),spacing1:r.create("--ft-spacing-1","","SIZE","0.25rem"),spacing2:r.create("--ft-spacing-2","","SIZE","calc(0.25rem*2)"),spacing3:r.create("--ft-spacing-3","","SIZE","calc(0.25rem*3)"),spacing4:r.create("--ft-spacing-4","","SIZE","calc(0.25rem*4)"),spacing5:r.create("--ft-spacing-5","","SIZE","calc(0.25rem*5)"),spacing6:r.create("--ft-spacing-6","","SIZE","calc(0.25rem*6)"),spacing8:r.create("--ft-spacing-8","","SIZE","calc(0.25rem*8)"),spacing10:r.create("--ft-spacing-10","","SIZE","calc(0.25rem*10)"),spacing12:r.create("--ft-spacing-12","","SIZE","calc(0.25rem*12)"),spacing16:r.create("--ft-spacing-16","","SIZE","calc(0.25rem*16)"),spacing20:r.create("--ft-spacing-20","","SIZE","calc(0.25rem*20)"),spacing24:r.create("--ft-spacing-24","","SIZE","calc(0.25rem*24)"),spacing28:r.create("--ft-spacing-28","","SIZE","calc(0.25rem*28)"),spacing32:r.create("--ft-spacing-32","","SIZE","calc(0.25rem*32)"),spacing05:r.create("--ft-spacing-0-5","","SIZE","calc(0.25rem*0.5)"),borderRadiusS:r.create("--ft-border-radius-s","","SIZE","4px"),borderRadiusM:r.create("--ft-border-radius-m","","SIZE","8px"),borderRadiusL:r.create("--ft-border-radius-l","","SIZE","12px"),borderRadiusXl:r.create("--ft-border-radius-xl","","SIZE","16px"),borderRadiusPill:r.create("--ft-border-radius-pill","","SIZE","999px"),borderRadiusRound:r.create("--ft-border-radius-round","","SIZE","50%"),iconSize1:r.create("--ft-icon-size-1","","SIZE","0.75rem"),iconSize2:r.create("--ft-icon-size-2","","SIZE","1rem"),iconSize3:r.create("--ft-icon-size-3","","SIZE","1.25rem"),iconSize4:r.create("--ft-icon-size-4","","SIZE","1.5rem"),iconSize5:r.create("--ft-icon-size-5","","SIZE","2rem"),iconSize6:r.create("--ft-icon-size-6","","SIZE","3rem"),opacity0:r.create("--ft-opacity-0","","NUMBER","0"),opacity8:r.create("--ft-opacity-8","","NUMBER","0.08"),opacity12:r.create("--ft-opacity-12","","NUMBER","0.12"),opacity16:r.create("--ft-opacity-16","","NUMBER","0.16"),opacity24:r.create("--ft-opacity-24","","NUMBER","0.24"),opacity32:r.create("--ft-opacity-32","","NUMBER","0.32"),opacity40:r.create("--ft-opacity-40","","NUMBER","0.4"),opacity48:r.create("--ft-opacity-48","","NUMBER","0.48"),opacity80:r.create("--ft-opacity-80","","NUMBER","0.8"),shadowElevation01:r.create("--ft-shadow-elevation-01","","SHADOW","0px 1px 4px 0px rgba(0,0,0,0.06), 0px 1px 2px 0px rgba(0,0,0,0.14), 0px 0px 1px 0px rgba(0,0,0,0.06)"),shadowElevation02:r.create("--ft-shadow-elevation-02","","SHADOW","0px 4px 10px 0px rgba(0,0,0,0.06), 0px 2px 5px 0px rgba(0,0,0,0.14), 0px 0px 1px 0px rgba(0,0,0,0.06)"),shadowElevation03:r.create("--ft-shadow-elevation-03","","SHADOW","0px 6px 13px 0px rgba(0,0,0,0.06), 0px 3px 7px 0px rgba(0,0,0,0.14), 0px 1px 2px 0px rgba(0,0,0,0.06)"),shadowElevation04:r.create("--ft-shadow-elevation-04","","SHADOW","0px 8px 16px 0px rgba(0,0,0,0.06), 0px 4px 9px 0px rgba(0,0,0,0.14), 0px 2px 3px 0px rgba(0,0,0,0.06)"),shadowElevation06:r.create("--ft-shadow-elevation-06","","SHADOW","0px 12px 22px 0px rgba(0,0,0,0.06), 0px 6px 13px 0px rgba(0,0,0,0.14), 0px 4px 5px 0px rgba(0,0,0,0.06)"),shadowElevation08:r.create("--ft-shadow-elevation-08","","SHADOW","0px 16px 28px 0px rgba(0,0,0,0.06), 0px 8px 17px 0px rgba(0,0,0,0.14), 0px 6px 7px 0px rgba(0,0,0,0.06)"),shadowElevation12:r.create("--ft-shadow-elevation-12","","SHADOW","0px 22px 40px 0px rgba(0,0,0,0.06), 0px 12px 23px 0px rgba(0,0,0,0.14), 0px 10px 11px 0px rgba(0,0,0,0.06)"),shadowElevation16:r.create("--ft-shadow-elevation-16","","SHADOW","0px 28px 52px 0px rgba(0,0,0,0.06), 0px 16px 29px 0px rgba(0,0,0,0.14), 0px 14px 15px 0px rgba(0,0,0,0.06)"),shadowElevation24:r.create("--ft-shadow-elevation-24","","SHADOW","0px 40px 76px 0px rgba(0,0,0,0.06), 0px 24px 41px 0px rgba(0,0,0,0.14), 0px 22px 23px 0px rgba(0,0,0,0.06)")},Ei={fontFamily:r.create("--ft-typography-display-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-display-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-display-lineHeight","","SIZE","120%"),fontSize:r.create("--ft-typography-display-fontSize","","SIZE","2.5rem"),letterSpacing:r.create("--ft-typography-display-letterSpacing","","SIZE","-0.02em"),paragraphSpacing:r.create("--ft-typography-display-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-display-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-display-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-display-textCase","","UNKNOWN","none")},wi={fontFamily:r.create("--ft-typography-title-1-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-title-1-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-title-1-lineHeight","","SIZE","120%"),fontSize:r.create("--ft-typography-title-1-fontSize","","SIZE","1.5rem"),letterSpacing:r.create("--ft-typography-title-1-letterSpacing","","SIZE","-0.02em"),paragraphSpacing:r.create("--ft-typography-title-1-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-title-1-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-title-1-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-title-1-textCase","","UNKNOWN","none")},Ai={fontFamily:r.create("--ft-typography-title-2-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-title-2-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-title-2-lineHeight","","SIZE","120%"),fontSize:r.create("--ft-typography-title-2-fontSize","","SIZE","1.25rem"),letterSpacing:r.create("--ft-typography-title-2-letterSpacing","","SIZE","-0.02em"),paragraphSpacing:r.create("--ft-typography-title-2-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-title-2-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-title-2-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-title-2-textCase","","UNKNOWN","none")},Ri={fontFamily:r.create("--ft-typography-title-3-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-title-3-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-title-3-lineHeight","","SIZE","120%"),fontSize:r.create("--ft-typography-title-3-fontSize","","SIZE","1.125rem"),letterSpacing:r.create("--ft-typography-title-3-letterSpacing","","SIZE","-0.01em"),paragraphSpacing:r.create("--ft-typography-title-3-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-title-3-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-title-3-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-title-3-textCase","","UNKNOWN","none")},Ni={fontFamily:r.create("--ft-typography-body-1-regular-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-1-regular-fontWeight","","UNKNOWN","400"),lineHeight:r.create("--ft-typography-body-1-regular-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-1-regular-fontSize","","SIZE","1rem"),letterSpacing:r.create("--ft-typography-body-1-regular-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-1-regular-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-1-regular-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-1-regular-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-1-regular-textCase","","UNKNOWN","none")},Ti={fontFamily:r.create("--ft-typography-body-1-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-1-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-body-1-medium-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-1-medium-fontSize","","SIZE","1rem"),letterSpacing:r.create("--ft-typography-body-1-medium-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-1-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-1-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-1-medium-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-1-medium-textCase","","UNKNOWN","none")},Li={fontFamily:r.create("--ft-typography-body-1-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-1-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-body-1-semibold-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-1-semibold-fontSize","","SIZE","1rem"),letterSpacing:r.create("--ft-typography-body-1-semibold-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-1-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-1-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-1-semibold-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-1-semibold-textCase","","UNKNOWN","none")},Ii={fontFamily:r.create("--ft-typography-body-2-regular-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-2-regular-fontWeight","","UNKNOWN","400"),lineHeight:r.create("--ft-typography-body-2-regular-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-2-regular-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-body-2-regular-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-2-regular-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-2-regular-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-2-regular-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-2-regular-textCase","","UNKNOWN","none")},Pi={fontFamily:r.create("--ft-typography-body-2-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-2-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-body-2-medium-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-2-medium-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-body-2-medium-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-2-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-2-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-2-medium-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-2-medium-textCase","","UNKNOWN","none")},Jd={fontFamily:r.create("--ft-typography-body-2-medium-underline-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-2-medium-underline-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-body-2-medium-underline-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-2-medium-underline-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-body-2-medium-underline-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-2-medium-underline-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-2-medium-underline-paragraphIndent","","UNKNOWN","0"),textCase:r.create("--ft-typography-body-2-medium-underline-textCase","","UNKNOWN","none"),textDecoration:r.create("--ft-typography-body-2-medium-underline-textDecoration","","UNKNOWN","underline")},_i={fontFamily:r.create("--ft-typography-body-2-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-body-2-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-body-2-semibold-lineHeight","","SIZE","135%"),fontSize:r.create("--ft-typography-body-2-semibold-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-body-2-semibold-letterSpacing","","SIZE","normal"),paragraphSpacing:r.create("--ft-typography-body-2-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-body-2-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-body-2-semibold-textDecoration","","UNKNOWN","none"),textCase:r.create("--ft-typography-body-2-semibold-textCase","","UNKNOWN","none")},ki={fontFamily:r.create("--ft-typography-label-1-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-1-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-label-1-medium-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-1-medium-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-label-1-medium-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-1-medium-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-1-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-1-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-1-medium-textDecoration","","UNKNOWN","none")},Di={fontFamily:r.create("--ft-typography-label-1-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-1-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-label-1-semibold-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-1-semibold-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-label-1-semibold-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-1-semibold-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-1-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-1-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-1-semibold-textDecoration","","UNKNOWN","none")},$i={fontFamily:r.create("--ft-typography-label-1-bold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-1-bold-fontWeight","","UNKNOWN","700"),lineHeight:r.create("--ft-typography-label-1-bold-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-1-bold-fontSize","","SIZE","0.875rem"),letterSpacing:r.create("--ft-typography-label-1-bold-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-1-bold-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-1-bold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-1-bold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-1-bold-textDecoration","","UNKNOWN","none")},Bi={fontFamily:r.create("--ft-typography-label-2-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-2-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-label-2-medium-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-2-medium-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-label-2-medium-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-2-medium-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-2-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-2-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-2-medium-textDecoration","","UNKNOWN","none")},Fi={fontFamily:r.create("--ft-typography-label-2-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-2-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-label-2-semibold-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-2-semibold-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-label-2-semibold-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-2-semibold-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-2-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-2-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-2-semibold-textDecoration","","UNKNOWN","none")},Mi={fontFamily:r.create("--ft-typography-label-2-bold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-label-2-bold-fontWeight","","UNKNOWN","700"),lineHeight:r.create("--ft-typography-label-2-bold-lineHeight","","SIZE","110%"),fontSize:r.create("--ft-typography-label-2-bold-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-label-2-bold-letterSpacing","","SIZE","0.04em"),textCase:r.create("--ft-typography-label-2-bold-textCase","","UNKNOWN","uppercase"),paragraphSpacing:r.create("--ft-typography-label-2-bold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-label-2-bold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-label-2-bold-textDecoration","","UNKNOWN","none")},Ui={fontFamily:r.create("--ft-typography-caption-1-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-1-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-caption-1-medium-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-1-medium-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-caption-1-medium-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-1-medium-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-1-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-1-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-1-medium-textDecoration","","UNKNOWN","none")},zi={fontFamily:r.create("--ft-typography-caption-1-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-1-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-caption-1-semibold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-1-semibold-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-caption-1-semibold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-1-semibold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-1-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-1-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-1-semibold-textDecoration","","UNKNOWN","none")},Hi={fontFamily:r.create("--ft-typography-caption-1-bold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-1-bold-fontWeight","","UNKNOWN","700"),lineHeight:r.create("--ft-typography-caption-1-bold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-1-bold-fontSize","","SIZE","0.75rem"),letterSpacing:r.create("--ft-typography-caption-1-bold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-1-bold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-1-bold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-1-bold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-1-bold-textDecoration","","UNKNOWN","none")},Wi={fontFamily:r.create("--ft-typography-caption-2-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-2-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-caption-2-medium-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-2-medium-fontSize","","SIZE","0.6875rem"),letterSpacing:r.create("--ft-typography-caption-2-medium-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-2-medium-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-2-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-2-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-2-medium-textDecoration","","UNKNOWN","none")},Vi={fontFamily:r.create("--ft-typography-caption-2-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-2-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-caption-2-semibold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-2-semibold-fontSize","","SIZE","0.6875rem"),letterSpacing:r.create("--ft-typography-caption-2-semibold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-2-semibold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-2-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-2-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-2-semibold-textDecoration","","UNKNOWN","none")},Gi={fontFamily:r.create("--ft-typography-caption-2-bold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-2-bold-fontWeight","","UNKNOWN","700"),lineHeight:r.create("--ft-typography-caption-2-bold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-2-bold-fontSize","","SIZE","0.6875rem"),letterSpacing:r.create("--ft-typography-caption-2-bold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-2-bold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-2-bold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-2-bold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-2-bold-textDecoration","","UNKNOWN","none")},ji={fontFamily:r.create("--ft-typography-caption-3-medium-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-3-medium-fontWeight","","UNKNOWN","500"),lineHeight:r.create("--ft-typography-caption-3-medium-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-3-medium-fontSize","","SIZE","0.625rem"),letterSpacing:r.create("--ft-typography-caption-3-medium-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-3-medium-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-3-medium-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-3-medium-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-3-medium-textDecoration","","UNKNOWN","none")},Ki={fontFamily:r.create("--ft-typography-caption-3-semibold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-3-semibold-fontWeight","","UNKNOWN","600"),lineHeight:r.create("--ft-typography-caption-3-semibold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-3-semibold-fontSize","","SIZE","0.625rem"),letterSpacing:r.create("--ft-typography-caption-3-semibold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-3-semibold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-3-semibold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-3-semibold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-3-semibold-textDecoration","","UNKNOWN","none")},Zi={fontFamily:r.create("--ft-typography-caption-3-bold-fontFamily","","UNKNOWN","Inter"),fontWeight:r.create("--ft-typography-caption-3-bold-fontWeight","","UNKNOWN","700"),lineHeight:r.create("--ft-typography-caption-3-bold-lineHeight","","SIZE","130%"),fontSize:r.create("--ft-typography-caption-3-bold-fontSize","","SIZE","0.625rem"),letterSpacing:r.create("--ft-typography-caption-3-bold-letterSpacing","","SIZE","normal"),textCase:r.create("--ft-typography-caption-3-bold-textCase","","UNKNOWN","none"),paragraphSpacing:r.create("--ft-typography-caption-3-bold-paragraphSpacing","","UNKNOWN","normal"),paragraphIndent:r.create("--ft-typography-caption-3-bold-paragraphIndent","","UNKNOWN","0"),textDecoration:r.create("--ft-typography-caption-3-bold-textDecoration","","UNKNOWN","none")},$o={display:Ei,"title-1":wi,"title-2":Ai,"title-3":Ri,"body-1-regular":Ni,"body-1-medium":Ti,"body-1-semibold":Li,"body-2-regular":Ii,"body-2-medium":Pi,"body-2-medium-underline":Jd,"body-2-semibold":_i,"label-1-medium":ki,"label-1-semibold":Di,"label-1-bold":$i,"label-2-medium":Bi,"label-2-semibold":Fi,"label-2-bold":Mi,"caption-1-medium":Ui,"caption-1-semibold":zi,"caption-1-bold":Hi,"caption-2-medium":Wi,"caption-2-semibold":Vi,"caption-2-bold":Gi,"caption-3-medium":ji,"caption-3-semibold":Ki,"caption-3-bold":Zi};var d={backgroundActionPrimary:r.extend("--ft-background-action-primary","Used as backgorund of primary action components.",l.colorBrand0),backgroundErrorSubtle:r.extend("--ft-background-error-subtle","Used as background of subtle error components.",l.colorRed10),backgroundInfoSubtle:r.extend("--ft-background-info-subtle","Used as background of subtle information components.",l.colorCyan10),backgroundWarningSubtle:r.extend("--ft-background-warning-subtle","Used as background of subtle information components.",l.colorOrange10),backgroundSuccessSubtle:r.extend("--ft-background-success-subtle","Used as background of subtle success components.",l.colorGreen10),backgroundGlobalSurface:r.extend("--ft-background-global-surface","Used as app background.",l.colorWhite),backgroundGlobalOnSurface:r.extend("--ft-background-global-on-surface","Used as background on element on the base background, like cards.",l.colorGray10),backgroundGlobalOnSurfaceDark:r.extend("--ft-background-global-on-surface-dark","Used as background on element that need background separation.",l.colorGray30),contentActionPrimary:r.extend("--ft-content-action-primary","Used on label of primary action on light surface.",l.colorBrand0),contentWarningPrimary:r.extend("--ft-content-warning-primary","Used on label of warning messages on light surface.",l.colorOrange200),contentWarningIconOnly:r.extend("--ft-content-warning-icon-only","Used on warning status icons alone",l.colorOrange0),contentErrorPrimary:r.extend("--ft-content-error-primary","Used on label of error messages on light surface.",l.colorRed0),contentErrorIconOnly:r.extend("--ft-content-error-icon-only","Used on error status icons alone",l.colorRed70),contentInfoPrimary:r.extend("--ft-content-info-primary","Used on label of information messages on light surface.",l.colorCyan200),contentInfoIconOnly:r.extend("--ft-content-info-icon-only","Used on info status icons alone",l.colorCyan0),contentSuccessPrimary:r.extend("--ft-content-success-primary","Used on label of success messages on light surface.",l.colorGreen200),contentSuccessIconOnly:r.extend("--ft-content-success-icon-only","Used on success status icons alone",l.colorGreen0),contentGlobalPrimary:r.extend("--ft-content-global-primary","Used for main content on the page.",l.colorGray500),contentGlobalSecondary:r.extend("--ft-content-global-secondary",`Used for secondary content, often paired with primary content.
Also for action icons.`,l.colorGray200),contentGlobalSubtle:r.extend("--ft-content-global-subtle","Used for placeholder, unselected items in a tab component or breadcrumb.",l.colorGray0),contentGlobalOnColor:r.extend("--ft-content-global-on-color","Used for content on a dominant color.",l.colorWhite),borderActionPrimary:r.extend("--ft-border-action-primary","Used as border for primary action components.",l.colorBrand0),borderActionFocusRing:r.extend("--ft-border-action-focus-ring","Focus ring is an additional border to indicate focus-visible state.",l.colorCyan0),borderWarningPrimary:r.extend("--ft-border-warning-primary","Used as border for text fields in warning state and for buttons in warning color",l.colorOrange200),borderWarningSubtle:r.extend("--ft-border-warning-subtle","Used as border for warning components.",l.colorOrange30),borderSuccessPrimary:r.extend("--ft-border-success-primary","Used as border for success buttons.",l.colorGreen200),borderSuccessSubtle:r.extend("--ft-border-success-subtle","Used as border for success components.",l.colorGreen30),borderErrorPrimary:r.extend("--ft-border-error-primary","Used as border for text fields in error states.",l.colorRed0),borderErrorSubtle:r.extend("--ft-border-error-subtle","Used as border for error components.",l.colorRed30),borderInfoPrimary:r.extend("--ft-border-info-primary","Used as border for buttons in info color.",l.colorCyan200),borderInfoSubtle:r.extend("--ft-border-info-subtle","Used as border for information components.",l.colorCyan30),borderGlobalPrimary:r.extend("--ft-border-global-primary","Used as border for element like input.",l.colorGray50),borderGlobalSubtle:r.extend("--ft-border-global-subtle","Used as border to deliminate an area filled with background.on-surface and separators.",l.colorGray30),borderInputPrimary:r.extend("--ft-border-input-primary","Used as border for checkboxes and radio buttons",l.colorGray80),borderNeutralPrimary:r.extend("--ft-border-neutral-primary","Used as border for neutral secondary buttons",l.colorGray200)};var f={largeHeight:r.create("--ft-button-large-height","","SIZE","40px"),largeHorizontalPadding:r.extend("--ft-button-large-horizontal-padding","",l.spacing4),largeGap:r.extend("--ft-button-large-gap","",l.spacing2),largeBorderRadius:r.extend("--ft-button-large-border-radius","",l.borderRadiusS),largeIconSize:r.extend("--ft-button-large-icon-size","",l.iconSize3),largeBorderWidth:r.create("--ft-button-large-border-width","","SIZE","1px"),largeFocusOutlineOffset:r.create("--ft-button-large-focus-outline-offset","","SIZE","2px"),largeFocusOutlineWidth:r.create("--ft-button-large-focus-outline-width","","SIZE","2px"),largeIconOnlyWidth:r.create("--ft-button-large-icon-only-width","","SIZE","40px"),mediumHeight:r.create("--ft-button-medium-height","","SIZE","30px"),mediumHorizontalPadding:r.extend("--ft-button-medium-horizontal-padding","",l.spacing3),mediumGap:r.extend("--ft-button-medium-gap","",l.spacing2),mediumBorderRadius:r.extend("--ft-button-medium-border-radius","",l.borderRadiusS),mediumIconSize:r.extend("--ft-button-medium-icon-size","",l.iconSize2),mediumBorderWidth:r.create("--ft-button-medium-border-width","","SIZE","1px"),mediumFocusOutlineOffset:r.create("--ft-button-medium-focus-outline-offset","","SIZE","2px"),mediumFocusOutlineWidth:r.create("--ft-button-medium-focus-outline-width","","SIZE","2px"),mediumIconOnlyWidth:r.create("--ft-button-medium-icon-only-width","","SIZE","30px"),smallHeight:r.create("--ft-button-small-height","","SIZE","20px"),smallHorizontalPadding:r.extend("--ft-button-small-horizontal-padding","",l.spacing2),smallGap:r.extend("--ft-button-small-gap","",l.spacing1),smallBorderRadius:r.extend("--ft-button-small-border-radius","",l.borderRadiusS),smallIconSize:r.extend("--ft-button-small-icon-size","",l.iconSize1),smallBorderWidth:r.create("--ft-button-small-border-width","","SIZE","1px"),smallFocusOutlineOffset:r.create("--ft-button-small-focus-outline-offset","","SIZE","2px"),smallFocusOutlineWidth:r.create("--ft-button-small-focus-outline-width","","SIZE","2px"),smallIconOnlyWidth:r.create("--ft-button-small-icon-only-width","","SIZE","20px"),xSmallHeight:r.create("--ft-button-x-small-height","","SIZE","16px"),xSmallIconSize:r.extend("--ft-button-x-small-icon-size","",l.iconSize1),xSmallFocusOutlineOffset:r.create("--ft-button-x-small-focus-outline-offset","","SIZE","2px"),xSmallFocusOutlineWidth:r.create("--ft-button-x-small-focus-outline-width","","SIZE","2px"),xSmallIconOnlyWidth:r.create("--ft-button-x-small-icon-only-width","","SIZE","16px"),roundBorderRadius:r.extend("--ft-button-round-border-radius","",l.borderRadiusPill),primaryBrandBackgroundColor:r.extend("--ft-button-primary-brand-background-color","",d.backgroundActionPrimary),primaryBrandColor:r.extend("--ft-button-primary-brand-color","",d.contentGlobalOnColor),primaryBrandIconColor:r.extend("--ft-button-primary-brand-icon-color","",d.contentGlobalOnColor),primaryBrandStateLayerColor:r.extend("--ft-button-primary-brand-state-layer-color","",d.contentGlobalOnColor),primaryBrandHoverStateLayerOpacity:r.extend("--ft-button-primary-brand-hover-state-layer-opacity","",l.opacity16),primaryBrandFocusStateLayerOpacity:r.extend("--ft-button-primary-brand-focus-state-layer-opacity","",l.opacity16),primaryBrandActiveStateLayerOpacity:r.extend("--ft-button-primary-brand-active-state-layer-opacity","",l.opacity24),primaryBrandDisabledComponentOpacity:r.extend("--ft-button-primary-brand-disabled-component-opacity","",l.opacity40),focusFocusRingColor:r.extend("--ft-button-focus-focus-ring-color","",d.borderActionFocusRing),tertiaryBrandBackgroundColor:r.create("--ft-button-tertiary-brand-background-color","","COLOR","rgba(0,0,0,0)"),tertiaryBrandColor:r.extend("--ft-button-tertiary-brand-color","",d.contentActionPrimary),tertiaryBrandIconColor:r.extend("--ft-button-tertiary-brand-icon-color","",d.contentActionPrimary),tertiaryBrandStateLayerColor:r.extend("--ft-button-tertiary-brand-state-layer-color","",d.contentActionPrimary),tertiaryBrandHoverStateLayerOpacity:r.extend("--ft-button-tertiary-brand-hover-state-layer-opacity","",l.opacity8),tertiaryBrandFocusStateLayerOpacity:r.extend("--ft-button-tertiary-brand-focus-state-layer-opacity","",l.opacity8),tertiaryBrandActiveStateLayerOpacity:r.extend("--ft-button-tertiary-brand-active-state-layer-opacity","",l.opacity16),tertiaryBrandDisabledComponentOpacity:r.extend("--ft-button-tertiary-brand-disabled-component-opacity","",l.opacity40),tertiaryInfoBackgroundColor:r.create("--ft-button-tertiary-info-background-color","","COLOR","rgba(0,0,0,0)"),tertiaryInfoColor:r.extend("--ft-button-tertiary-info-color","",d.contentInfoPrimary),tertiaryInfoIconColor:r.extend("--ft-button-tertiary-info-icon-color","",d.contentInfoPrimary),tertiaryInfoStateLayerColor:r.extend("--ft-button-tertiary-info-state-layer-color","",d.contentInfoPrimary),tertiaryInfoFocusStateLayerOpacity:r.extend("--ft-button-tertiary-info-focus-state-layer-opacity","",l.opacity8),tertiaryInfoHoverStateLayerOpacity:r.extend("--ft-button-tertiary-info-hover-state-layer-opacity","",l.opacity8),tertiaryInfoActiveStateLayerOpacity:r.extend("--ft-button-tertiary-info-active-state-layer-opacity","",l.opacity16),tertiaryInfoDisabledComponentOpacity:r.extend("--ft-button-tertiary-info-disabled-component-opacity","",l.opacity40),tertiarySuccessBackgroundColor:r.create("--ft-button-tertiary-success-background-color","","COLOR","rgba(0,0,0,0)"),tertiarySuccessColor:r.extend("--ft-button-tertiary-success-color","",d.contentSuccessPrimary),tertiarySuccessIconColor:r.extend("--ft-button-tertiary-success-icon-color","",d.contentSuccessPrimary),tertiarySuccessStateLayerColor:r.extend("--ft-button-tertiary-success-state-layer-color","",d.contentSuccessPrimary),tertiarySuccessHoverStateLayerOpacity:r.extend("--ft-button-tertiary-success-hover-state-layer-opacity","",l.opacity8),tertiarySuccessFocusStateLayerOpacity:r.extend("--ft-button-tertiary-success-focus-state-layer-opacity","",l.opacity8),tertiarySuccessActiveStateLayerOpacity:r.extend("--ft-button-tertiary-success-active-state-layer-opacity","",l.opacity16),tertiarySuccessDisabledComponentOpacity:r.extend("--ft-button-tertiary-success-disabled-component-opacity","",l.opacity40),tertiaryWarningBackgroundColor:r.create("--ft-button-tertiary-warning-background-color","","COLOR","rgba(0,0,0,0)"),tertiaryWarningColor:r.extend("--ft-button-tertiary-warning-color","",d.contentWarningPrimary),tertiaryWarningIconColor:r.extend("--ft-button-tertiary-warning-icon-color","",d.contentWarningPrimary),tertiaryWarningStateLayerColor:r.extend("--ft-button-tertiary-warning-state-layer-color","",d.contentWarningPrimary),tertiaryWarningHoverStateLayerOpacity:r.extend("--ft-button-tertiary-warning-hover-state-layer-opacity","",l.opacity8),tertiaryWarningFocusStateLayerOpacity:r.extend("--ft-button-tertiary-warning-focus-state-layer-opacity","",l.opacity8),tertiaryWarningActiveStateLayerOpacity:r.extend("--ft-button-tertiary-warning-active-state-layer-opacity","",l.opacity16),tertiaryWarningDisabledComponentOpacity:r.extend("--ft-button-tertiary-warning-disabled-component-opacity","",l.opacity40),tertiaryErrorBackgroundColor:r.create("--ft-button-tertiary-error-background-color","","COLOR","rgba(0,0,0,0)"),tertiaryErrorColor:r.extend("--ft-button-tertiary-error-color","",d.contentErrorPrimary),tertiaryErrorIconColor:r.extend("--ft-button-tertiary-error-icon-color","",d.contentErrorPrimary),tertiaryErrorStateLayerColor:r.extend("--ft-button-tertiary-error-state-layer-color","",d.contentErrorPrimary),tertiaryErrorHoverStateLayerOpacity:r.extend("--ft-button-tertiary-error-hover-state-layer-opacity","",l.opacity8),tertiaryErrorFocusStateLayerOpacity:r.extend("--ft-button-tertiary-error-focus-state-layer-opacity","",l.opacity8),tertiaryErrorActiveStateLayerOpacity:r.extend("--ft-button-tertiary-error-active-state-layer-opacity","",l.opacity16),tertiaryErrorDisabledComponentOpacity:r.extend("--ft-button-tertiary-error-disabled-component-opacity","",l.opacity40),tertiaryNeutralBackgroundColor:r.create("--ft-button-tertiary-neutral-background-color","","COLOR","rgba(0,0,0,0)"),tertiaryNeutralIconColor:r.extend("--ft-button-tertiary-neutral-icon-color","",d.contentGlobalSecondary),tertiaryNeutralColor:r.extend("--ft-button-tertiary-neutral-color","",d.contentGlobalSecondary),tertiaryNeutralStateLayerColor:r.extend("--ft-button-tertiary-neutral-state-layer-color","",d.contentGlobalSecondary),tertiaryNeutralHoverStateLayerOpacity:r.extend("--ft-button-tertiary-neutral-hover-state-layer-opacity","",l.opacity8),tertiaryNeutralFocusStateLayerOpacity:r.extend("--ft-button-tertiary-neutral-focus-state-layer-opacity","",l.opacity8),tertiaryNeutralActiveStateLayerOpacity:r.extend("--ft-button-tertiary-neutral-active-state-layer-opacity","",l.opacity16),tertiaryNeutralDisabledComponentOpacity:r.extend("--ft-button-tertiary-neutral-disabled-component-opacity","",l.opacity40),secondaryBrandBackgroundColor:r.create("--ft-button-secondary-brand-background-color","","COLOR","rgba(0,0,0,0)"),secondaryBrandColor:r.extend("--ft-button-secondary-brand-color","",d.contentActionPrimary),secondaryBrandIconColor:r.extend("--ft-button-secondary-brand-icon-color","",d.contentActionPrimary),secondaryBrandStateLayerColor:r.extend("--ft-button-secondary-brand-state-layer-color","",d.contentActionPrimary),secondaryBrandHoverStateLayerOpacity:r.extend("--ft-button-secondary-brand-hover-state-layer-opacity","",l.opacity8),secondaryBrandFocusStateLayerOpacity:r.extend("--ft-button-secondary-brand-focus-state-layer-opacity","",l.opacity8),secondaryBrandActiveStateLayerOpacity:r.extend("--ft-button-secondary-brand-active-state-layer-opacity","",l.opacity16),secondaryBrandDisabledComponentOpacity:r.extend("--ft-button-secondary-brand-disabled-component-opacity","",l.opacity40),secondaryBrandBorderColor:r.extend("--ft-button-secondary-brand-border-color","",d.borderActionPrimary),secondaryNeutralHoverStateLayerOpacity:r.extend("--ft-button-secondary-neutral-hover-state-layer-opacity","",l.opacity8),secondaryNeutralFocusStateLayerOpacity:r.extend("--ft-button-secondary-neutral-focus-state-layer-opacity","",l.opacity8),secondaryNeutralActiveStateLayerOpacity:r.extend("--ft-button-secondary-neutral-active-state-layer-opacity","",l.opacity16),secondaryNeutralDisabledComponentOpacity:r.extend("--ft-button-secondary-neutral-disabled-component-opacity","",l.opacity40),secondaryNeutralBackgroundColor:r.create("--ft-button-secondary-neutral-background-color","","COLOR","rgba(0,0,0,0)"),secondaryNeutralColor:r.extend("--ft-button-secondary-neutral-color","",d.contentGlobalSecondary),secondaryNeutralIconColor:r.extend("--ft-button-secondary-neutral-icon-color","",d.contentGlobalSecondary),secondaryNeutralStateLayerColor:r.extend("--ft-button-secondary-neutral-state-layer-color","",d.contentGlobalSecondary),secondaryNeutralBorderColor:r.extend("--ft-button-secondary-neutral-border-color","",d.borderNeutralPrimary),secondaryInfoHoverStateLayerOpacity:r.extend("--ft-button-secondary-info-hover-state-layer-opacity","",l.opacity8),secondaryInfoFocusStateLayerOpacity:r.extend("--ft-button-secondary-info-focus-state-layer-opacity","",l.opacity8),secondaryInfoActiveStateLayerOpacity:r.extend("--ft-button-secondary-info-active-state-layer-opacity","",l.opacity16),secondaryInfoDisabledComponentOpacity:r.extend("--ft-button-secondary-info-disabled-component-opacity","",l.opacity40),secondaryInfoBackgroundColor:r.create("--ft-button-secondary-info-background-color","","COLOR","rgba(0,0,0,0)"),secondaryInfoBorderColor:r.extend("--ft-button-secondary-info-border-color","",d.borderInfoPrimary),secondaryInfoColor:r.extend("--ft-button-secondary-info-color","",d.contentInfoPrimary),secondaryInfoIconColor:r.extend("--ft-button-secondary-info-icon-color","",d.contentInfoPrimary),secondaryInfoStateLayerColor:r.extend("--ft-button-secondary-info-state-layer-color","",d.contentInfoPrimary),secondarySuccessHoverStateLayerOpacity:r.extend("--ft-button-secondary-success-hover-state-layer-opacity","",l.opacity8),secondarySuccessFocusStateLayerOpacity:r.extend("--ft-button-secondary-success-focus-state-layer-opacity","",l.opacity8),secondarySuccessActiveStateLayerOpacity:r.extend("--ft-button-secondary-success-active-state-layer-opacity","",l.opacity16),secondarySuccessDisabledComponentOpacity:r.extend("--ft-button-secondary-success-disabled-component-opacity","",l.opacity40),secondarySuccessBackgroundColor:r.create("--ft-button-secondary-success-background-color","","COLOR","rgba(0,0,0,0)"),secondarySuccessBorderColor:r.extend("--ft-button-secondary-success-border-color","",d.borderSuccessPrimary),secondarySuccessColor:r.extend("--ft-button-secondary-success-color","",d.contentSuccessPrimary),secondarySuccessIconColor:r.extend("--ft-button-secondary-success-icon-color","",d.contentSuccessPrimary),secondarySuccessStateLayerColor:r.extend("--ft-button-secondary-success-state-layer-color","",d.contentSuccessPrimary),secondaryWarningHoverStateLayerOpacity:r.extend("--ft-button-secondary-warning-hover-state-layer-opacity","",l.opacity8),secondaryWarningFocusStateLayerOpacity:r.extend("--ft-button-secondary-warning-focus-state-layer-opacity","",l.opacity8),secondaryWarningActiveStateLayerOpacity:r.extend("--ft-button-secondary-warning-active-state-layer-opacity","",l.opacity16),secondaryWarningDisabledComponentOpacity:r.extend("--ft-button-secondary-warning-disabled-component-opacity","",l.opacity40),secondaryWarningBackgroundColor:r.create("--ft-button-secondary-warning-background-color","","COLOR","rgba(0,0,0,0)"),secondaryWarningBorderColor:r.extend("--ft-button-secondary-warning-border-color","",d.borderWarningPrimary),secondaryWarningColor:r.extend("--ft-button-secondary-warning-color","",d.contentWarningPrimary),secondaryWarningIconColor:r.extend("--ft-button-secondary-warning-icon-color","",d.contentWarningPrimary),secondaryWarningStateLayerColor:r.extend("--ft-button-secondary-warning-state-layer-color","",d.contentWarningPrimary),secondaryErrorHoverStateLayerOpacity:r.extend("--ft-button-secondary-error-hover-state-layer-opacity","",l.opacity8),secondaryErrorFocusStateLayerOpacity:r.extend("--ft-button-secondary-error-focus-state-layer-opacity","",l.opacity8),secondaryErrorActiveStateLayerOpacity:r.extend("--ft-button-secondary-error-active-state-layer-opacity","",l.opacity16),secondaryErrorDisabledComponentOpacity:r.extend("--ft-button-secondary-error-disabled-component-opacity","",l.opacity40),secondaryErrorBackgroundColor:r.create("--ft-button-secondary-error-background-color","","COLOR","rgba(0,0,0,0)"),secondaryErrorBorderColor:r.extend("--ft-button-secondary-error-border-color","",d.contentErrorPrimary),secondaryErrorColor:r.extend("--ft-button-secondary-error-color","",d.contentErrorPrimary),secondaryErrorIconColor:r.extend("--ft-button-secondary-error-icon-color","",d.contentErrorPrimary),secondaryErrorStateLayerColor:r.extend("--ft-button-secondary-error-state-layer-color","",d.contentErrorPrimary)};var Gu={iconSize:r.extend("--ft-checkbox-icon-size","",l.iconSize2),boxSize:r.create("--ft-checkbox-box-size","","SIZE","18px"),colorLegendSize:r.create("--ft-checkbox-color-legend-size","","SIZE","16px"),borderRadius:r.create("--ft-checkbox-border-radius","","SIZE","1px"),color:r.extend("--ft-checkbox-color","",d.contentGlobalPrimary),checkedBackgroundColor:r.extend("--ft-checkbox-checked-background-color","",d.contentActionPrimary),checkedStateLayerColor:r.extend("--ft-checkbox-checked-state-layer-color","",d.contentActionPrimary),checkedIconColor:r.extend("--ft-checkbox-checked-icon-color","",d.contentGlobalOnColor),checkedHoverStateLayerOpacity:r.extend("--ft-checkbox-checked-hover-state-layer-opacity","",l.opacity16),checkedFocusStateLayerOpacity:r.extend("--ft-checkbox-checked-focus-state-layer-opacity","",l.opacity16),checkedActiveStateLayerOpacity:r.extend("--ft-checkbox-checked-active-state-layer-opacity","",l.opacity24),checkedDisabledComponentOpacity:r.extend("--ft-checkbox-checked-disabled-component-opacity","",l.opacity40),uncheckedBorderColor:r.extend("--ft-checkbox-unchecked-border-color","",l.colorGray80),uncheckedStateLayerColor:r.extend("--ft-checkbox-unchecked-state-layer-color","",l.colorGray80),uncheckedHoverStateLayerOpacity:r.extend("--ft-checkbox-unchecked-hover-state-layer-opacity","",l.opacity16),uncheckedFocusStateLayerOpacity:r.extend("--ft-checkbox-unchecked-focus-state-layer-opacity","",l.opacity16),uncheckedActiveStateLayerOpacity:r.extend("--ft-checkbox-unchecked-active-state-layer-opacity","",l.opacity24),uncheckedDisabledComponentOpacity:r.extend("--ft-checkbox-unchecked-disabled-component-opacity","",l.opacity40),focusFocusRingColor:r.extend("--ft-checkbox-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineOffset:r.create("--ft-checkbox-focus-outline-offset","","SIZE","3px"),focusOutlineWidth:r.create("--ft-checkbox-focus-outline-width","","SIZE","2px"),borderWidth:r.create("--ft-checkbox-border-width","","SIZE","2px"),horizontalGap:r.extend("--ft-checkbox-horizontal-gap","",l.spacing3),leftPadding:r.extend("--ft-checkbox-left-padding","",l.spacing2)};var Yu={headerRowBorderWidth:r.create("--ft-table-header-row-border-width","","SIZE","1px"),headerRowBackgroundColor:r.extend("--ft-table-header-row-background-color","",d.backgroundGlobalOnSurfaceDark),headerRowBorderColor:r.extend("--ft-table-header-row-border-color","",d.borderGlobalPrimary),headerRowColor:r.extend("--ft-table-header-row-color","",d.contentGlobalPrimary),dataRowBorderWidth:r.create("--ft-table-data-row-border-width","","SIZE","1px"),dataRowBackgroundColor:r.extend("--ft-table-data-row-background-color","",d.backgroundGlobalOnSurface),dataRowBorderColor:r.extend("--ft-table-data-row-border-color","",d.borderGlobalSubtle),dataRowColor:r.extend("--ft-table-data-row-color","",d.contentGlobalSecondary),dataRowDefaultHoverBackgroundColor:r.extend("--ft-table-data-row-default-hover-background-color","",l.colorGray20),dataRowSelectableUnselectedHoverBackgroundColor:r.extend("--ft-table-data-row-selectable-unselected-hover-background-color","",l.colorGray20),dataRowSelectableSelectedDefaultBackgroundColor:r.extend("--ft-table-data-row-selectable-selected-default-background-color","",l.colorBrand10),dataRowSelectableSelectedDefaultBorderColor:r.extend("--ft-table-data-row-selectable-selected-default-border-color","",l.colorBrand20),dataRowSelectableSelectedHoverBackgroundColor:r.extend("--ft-table-data-row-selectable-selected-hover-background-color","",l.colorBrand20),dataRowSelectableSelectedHoverBorderColor:r.extend("--ft-table-data-row-selectable-selected-hover-border-color","",l.colorBrand30),dataRowSelectableSelectedColor:r.extend("--ft-table-data-row-selectable-selected-color","",d.contentActionPrimary),dataRowClickableHoverBackgroundColor:r.extend("--ft-table-data-row-clickable-hover-background-color","",l.colorGray30),dataRowClickableFocusBorderColor:r.extend("--ft-table-data-row-clickable-focus-border-color","",d.borderActionFocusRing),dataRowClickableFocusBackgroundColor:r.extend("--ft-table-data-row-clickable-focus-background-color","",l.colorGray30),dataRowClickableActiveBackgroundColor:r.extend("--ft-table-data-row-clickable-active-background-color","",l.colorGray40),headerCellHorizontalGap:r.extend("--ft-table-header-cell-horizontal-gap","",l.spacing1),headerCellVerticalPadding:r.extend("--ft-table-header-cell-vertical-padding","",l.spacing2),headerCellHorizontalPadding:r.extend("--ft-table-header-cell-horizontal-padding","",l.spacing3),dataCellVerticalPadding:r.extend("--ft-table-data-cell-vertical-padding","",l.spacing2),dataCellHorizontalPadding:r.extend("--ft-table-data-cell-horizontal-padding","",l.spacing3),dataCellVerticalGap:r.extend("--ft-table-data-cell-vertical-gap","",l.spacing1)};var tf={neutralOffHoverStateLayerOpacity:r.extend("--ft-chip-choice-neutral-off-hover-state-layer-opacity","",l.opacity8),neutralOffFocusStateLayerOpacity:r.extend("--ft-chip-choice-neutral-off-focus-state-layer-opacity","",l.opacity8),neutralOffFocusFocusRingColor:r.extend("--ft-chip-choice-neutral-off-focus-focus-ring-color","",d.borderActionFocusRing),neutralOffActiveStateLayerOpacity:r.extend("--ft-chip-choice-neutral-off-active-state-layer-opacity","",l.opacity16),neutralOffBackgroundColor:r.extend("--ft-chip-choice-neutral-off-background-color","",d.backgroundGlobalOnSurface),neutralOffBorderColor:r.extend("--ft-chip-choice-neutral-off-border-color","",d.borderGlobalPrimary),neutralOffColor:r.extend("--ft-chip-choice-neutral-off-color","",d.contentGlobalSecondary),neutralOffStateLayerColor:r.extend("--ft-chip-choice-neutral-off-state-layer-color","",d.contentGlobalSecondary),neutralOnDefaultStateLayerOpacity:r.extend("--ft-chip-choice-neutral-on-default-state-layer-opacity","",l.opacity16),neutralOnHoverStateLayerOpacity:r.extend("--ft-chip-choice-neutral-on-hover-state-layer-opacity","",l.opacity24),neutralOnFocusStateLayerOpacity:r.extend("--ft-chip-choice-neutral-on-focus-state-layer-opacity","",l.opacity24),neutralOnFocusFocusRingColor:r.extend("--ft-chip-choice-neutral-on-focus-focus-ring-color","",d.borderActionFocusRing),neutralOnActiveStateLayerOpacity:r.extend("--ft-chip-choice-neutral-on-active-state-layer-opacity","",l.opacity32),neutralOnBackgroundColor:r.extend("--ft-chip-choice-neutral-on-background-color","",d.backgroundGlobalOnSurface),neutralOnBorderColor:r.extend("--ft-chip-choice-neutral-on-border-color","",d.borderGlobalPrimary),neutralOnColor:r.extend("--ft-chip-choice-neutral-on-color","",d.contentGlobalPrimary),neutralOnIconColor:r.extend("--ft-chip-choice-neutral-on-icon-color","",d.contentGlobalPrimary),neutralOnStateLayerColor:r.extend("--ft-chip-choice-neutral-on-state-layer-color","",d.contentGlobalPrimary),largeMinHeight:r.create("--ft-chip-choice-large-min-height","","SIZE","36px"),largeHorizontalPadding:r.extend("--ft-chip-choice-large-horizontal-padding","",l.spacing3),largeGap:r.extend("--ft-chip-choice-large-gap","",l.spacing1),largeBorderRadius:r.create("--ft-chip-choice-large-border-radius","","SIZE","18px"),largeBorderWidth:r.create("--ft-chip-choice-large-border-width","","SIZE","1px"),largeIconSize:r.extend("--ft-chip-choice-large-icon-size","",l.iconSize3),mediumMinHeight:r.create("--ft-chip-choice-medium-min-height","","SIZE","24px"),mediumHorizontalPadding:r.extend("--ft-chip-choice-medium-horizontal-padding","",l.spacing2),mediumGap:r.extend("--ft-chip-choice-medium-gap","",l.spacing1),mediumBorderRadius:r.create("--ft-chip-choice-medium-border-radius","","SIZE","12px"),mediumBorderWidth:r.create("--ft-chip-choice-medium-border-width","","SIZE","1px"),mediumIconSize:r.extend("--ft-chip-choice-medium-icon-size","",l.iconSize2)};var sf={largeMinHeight:r.create("--ft-chip-large-min-height","","SIZE","36px"),largeHorizontalPadding:r.extend("--ft-chip-large-horizontal-padding","",l.spacing3),largeButtonRightPadding:r.extend("--ft-chip-large-button-right-padding","",l.spacing1),largeGap:r.extend("--ft-chip-large-gap","",l.spacing1),largeFocusOutlineOffset:r.create("--ft-chip-large-focus-outline-offset","","SIZE","2px"),largeFocusOutlineWidth:r.create("--ft-chip-large-focus-outline-width","","SIZE","2px"),largeBorderRadius:r.create("--ft-chip-large-border-radius","","SIZE","18px"),largeBorderWidth:r.create("--ft-chip-large-border-width","","SIZE","1px"),largeIconSize:r.extend("--ft-chip-large-icon-size","",l.iconSize3),mediumMinHeight:r.create("--ft-chip-medium-min-height","","SIZE","24px"),mediumHorizontalPadding:r.extend("--ft-chip-medium-horizontal-padding","",l.spacing2),mediumButtonRightPadding:r.extend("--ft-chip-medium-button-right-padding","",l.spacing05),mediumGap:r.extend("--ft-chip-medium-gap","",l.spacing1),mediumFocusOutlineOffset:r.create("--ft-chip-medium-focus-outline-offset","","SIZE","2px"),mediumFocusOutlineWidth:r.create("--ft-chip-medium-focus-outline-width","","SIZE","2px"),mediumBorderRadius:r.create("--ft-chip-medium-border-radius","","SIZE","12px"),mediumBorderWidth:r.create("--ft-chip-medium-border-width","","SIZE","1px"),mediumIconSize:r.extend("--ft-chip-medium-icon-size","",l.iconSize2),smallMinHeight:r.create("--ft-chip-small-min-height","","SIZE","20px"),smallHorizontalPadding:r.extend("--ft-chip-small-horizontal-padding","",l.spacing1),smallButtonRightPadding:r.extend("--ft-chip-small-button-right-padding","",l.spacing05),smallGap:r.extend("--ft-chip-small-gap","",l.spacing1),smallFocusOutlineOffset:r.create("--ft-chip-small-focus-outline-offset","","SIZE","2px"),smallFocusOutlineWidth:r.create("--ft-chip-small-focus-outline-width","","SIZE","2px"),smallBorderRadius:r.create("--ft-chip-small-border-radius","","SIZE","10px"),smallBorderWidth:r.create("--ft-chip-small-border-width","","SIZE","1px"),smallIconSize:r.extend("--ft-chip-small-icon-size","",l.iconSize1),neutralBackgroundColor:r.extend("--ft-chip-neutral-background-color","",d.backgroundGlobalOnSurface),neutralColor:r.extend("--ft-chip-neutral-color","",d.contentGlobalSecondary),neutralIconColor:r.extend("--ft-chip-neutral-icon-color","",d.contentGlobalSecondary),neutralBorderColor:r.extend("--ft-chip-neutral-border-color","",d.borderGlobalSubtle),infoBackgroundColor:r.extend("--ft-chip-info-background-color","",d.backgroundInfoSubtle),infoColor:r.extend("--ft-chip-info-color","",d.contentInfoPrimary),infoIconColor:r.extend("--ft-chip-info-icon-color","",d.contentInfoIconOnly),infoBorderColor:r.extend("--ft-chip-info-border-color","",d.borderInfoSubtle),successBackgroundColor:r.extend("--ft-chip-success-background-color","",d.backgroundSuccessSubtle),successColor:r.extend("--ft-chip-success-color","",d.contentSuccessPrimary),successIconColor:r.extend("--ft-chip-success-icon-color","",d.contentSuccessIconOnly),successBorderColor:r.extend("--ft-chip-success-border-color","",d.borderSuccessSubtle),warningBackgroundColor:r.extend("--ft-chip-warning-background-color","",d.backgroundWarningSubtle),warningColor:r.extend("--ft-chip-warning-color","",d.contentWarningPrimary),warningIconColor:r.extend("--ft-chip-warning-icon-color","",d.contentWarningIconOnly),warningBorderColor:r.extend("--ft-chip-warning-border-color","",d.borderWarningSubtle),errorBackgroundColor:r.extend("--ft-chip-error-background-color","",d.backgroundErrorSubtle),errorColor:r.extend("--ft-chip-error-color","",d.contentErrorPrimary),errorIconColor:r.extend("--ft-chip-error-icon-color","",d.contentErrorIconOnly),errorBorderColor:r.extend("--ft-chip-error-border-color","",d.borderErrorSubtle)};var uf={brandHoverOpacity:r.extend("--ft-link-brand-hover-opacity","",l.opacity80),brandHoverColor:r.extend("--ft-link-brand-hover-color","",d.contentActionPrimary),brandFocusFocusRingColor:r.extend("--ft-link-brand-focus-focus-ring-color","",d.borderActionFocusRing),brandFocusColor:r.extend("--ft-link-brand-focus-color","",d.contentActionPrimary),brandDefaultColor:r.extend("--ft-link-brand-default-color","",d.contentActionPrimary),brandActiveColor:r.extend("--ft-link-brand-active-color","",d.contentActionPrimary),infoHoverOpacity:r.extend("--ft-link-info-hover-opacity","",l.opacity80),infoHoverColor:r.extend("--ft-link-info-hover-color","",d.contentInfoPrimary),infoFocusFocusRingColor:r.extend("--ft-link-info-focus-focus-ring-color","",d.borderActionFocusRing),infoFocusColor:r.extend("--ft-link-info-focus-color","",d.contentInfoPrimary),infoDefaultColor:r.extend("--ft-link-info-default-color","",d.contentInfoPrimary),infoActiveColor:r.extend("--ft-link-info-active-color","",d.contentInfoPrimary),neutralFocusFocusRingColor:r.extend("--ft-link-neutral-focus-focus-ring-color","",d.borderActionFocusRing),neutralFocusColor:r.extend("--ft-link-neutral-focus-color","",d.contentActionPrimary),neutralDefaultColor:r.extend("--ft-link-neutral-default-color","",d.contentGlobalPrimary),neutralHoverColor:r.extend("--ft-link-neutral-hover-color","",d.contentActionPrimary),neutralActiveColor:r.extend("--ft-link-neutral-active-color","",d.contentActionPrimary),neutralVisitedColor:r.extend("--ft-link-neutral-visited-color","",l.colorBrand100)};var gf={iconSize:r.extend("--ft-banner-icon-size","",l.iconSize5),borderWidth:r.create("--ft-banner-border-width","","SIZE","1px"),leftPadding:r.extend("--ft-banner-left-padding","",l.spacing6),rightPadding:r.extend("--ft-banner-right-padding","",l.spacing6),verticalPadding:r.extend("--ft-banner-vertical-padding","",l.spacing6),horizontalSideGap:r.extend("--ft-banner-horizontal-side-gap","",l.spacing6),horizontalMobileGap:r.extend("--ft-banner-horizontal-mobile-gap","",l.spacing4),verticalMobileGap:r.extend("--ft-banner-vertical-mobile-gap","",l.spacing6),horizontalMiddleGap:r.extend("--ft-banner-horizontal-middle-gap","",l.spacing20),infoBackgroundColor:r.extend("--ft-banner-info-background-color","",d.backgroundInfoSubtle),infoColor:r.extend("--ft-banner-info-color","",d.contentInfoPrimary),infoIconColor:r.extend("--ft-banner-info-icon-color","",d.contentInfoIconOnly),infoBorderColor:r.extend("--ft-banner-info-border-color","",d.borderInfoSubtle)};var Of={horizontalPadding:r.extend("--ft-badge-horizontal-padding","",l.spacing1),verticalPadding:r.extend("--ft-badge-vertical-padding","",l.spacing1),borderRadius:r.extend("--ft-badge-border-radius","",l.borderRadiusPill),color:r.extend("--ft-badge-color","",d.contentGlobalOnColor),backgroundColor:r.extend("--ft-badge-background-color","",d.contentActionPrimary)};var Rf={horizontalGap:r.extend("--ft-title-breadcrumb-horizontal-gap","",l.spacing1),currentColor:r.extend("--ft-title-breadcrumb-current-color","",d.contentGlobalPrimary),previousNonClickableColor:r.extend("--ft-title-breadcrumb-previous-non-clickable-color","",d.contentGlobalSecondary),iconColor:r.extend("--ft-title-breadcrumb-icon-color","",d.contentGlobalSubtle)};var Pf={parentHorizontalPadding:r.extend("--ft-page-header-parent-horizontal-padding","",l.spacing6),parentTopPadding:r.extend("--ft-page-header-parent-top-padding","",l.spacing4),parentBottomPadding:r.extend("--ft-page-header-parent-bottom-padding","",l.spacing6),parentHelpLeftMargin:r.extend("--ft-page-header-parent-help-left-margin","",l.spacing1),parentTitleColor:r.extend("--ft-page-header-parent-title-color","",d.contentGlobalPrimary),parentSubtitleColor:r.extend("--ft-page-header-parent-subtitle-color","",d.contentGlobalSecondary),parentChipLeftMargin:r.extend("--ft-page-header-parent-chip-left-margin","",l.spacing4),parentVerticalGap:r.extend("--ft-page-header-parent-vertical-gap","",l.spacing2),parentButtonsGroupHorizontalGap:r.extend("--ft-page-header-parent-buttons-group-horizontal-gap","",l.spacing4),parentButtonsGroupVerticalGap:r.extend("--ft-page-header-parent-buttons-group-vertical-gap","",l.spacing4),parentChipsGroupHorizontalGap:r.extend("--ft-page-header-parent-chips-group-horizontal-gap","",l.spacing2),parentChipsGroupVerticalGap:r.extend("--ft-page-header-parent-chips-group-vertical-gap","",l.spacing2),childHorizontalPadding:r.extend("--ft-page-header-child-horizontal-padding","",l.spacing6),childTopPadding:r.extend("--ft-page-header-child-top-padding","",l.spacing2),childBottomPadding:r.extend("--ft-page-header-child-bottom-padding","",l.spacing2),childHelpLeftMargin:r.extend("--ft-page-header-child-help-left-margin","",l.spacing1),childChipLeftMargin:r.extend("--ft-page-header-child-chip-left-margin","",l.spacing4),childVerticalGap:r.extend("--ft-page-header-child-vertical-gap","",l.spacing2),childMinHeight:r.create("--ft-page-header-child-min-height","","SIZE","40px"),childButtonsGroupHorizontalGap:r.extend("--ft-page-header-child-buttons-group-horizontal-gap","",l.spacing4),childButtonsGroupVerticalGap:r.extend("--ft-page-header-child-buttons-group-vertical-gap","",l.spacing4),childChipsGroupHorizontalGap:r.extend("--ft-page-header-child-chips-group-horizontal-gap","",l.spacing2),childChipsGroupVerticalGap:r.extend("--ft-page-header-child-chips-group-vertical-gap","",l.spacing2),backgroundColor:r.extend("--ft-page-header-background-color","",l.colorWhite),bottomBorderColor:r.extend("--ft-page-header-bottom-border-color","",d.borderGlobalSubtle),bottomBorderWidth:r.create("--ft-page-header-bottom-border-width","","SIZE","1px")};var Bf={horizontalPadding:r.extend("--ft-page-footer-horizontal-padding","",l.spacing6),verticalPadding:r.extend("--ft-page-footer-vertical-padding","",l.spacing2),verticalGap:r.extend("--ft-page-footer-vertical-gap","",l.spacing2),minHeight:r.create("--ft-page-footer-min-height","","SIZE","40px"),backgroundColor:r.extend("--ft-page-footer-background-color","",l.colorWhite),topBorderColor:r.extend("--ft-page-footer-top-border-color","",d.borderGlobalSubtle),topBorderWidth:r.create("--ft-page-footer-top-border-width","","SIZE","1px"),buttonsGroupGap:r.extend("--ft-page-footer-buttons-group-gap","",l.spacing4)};var zf={contentHorizontalPadding:r.extend("--ft-page-layout-content-horizontal-padding","",l.spacing6),contentVerticalPadding:r.extend("--ft-page-layout-content-vertical-padding","",l.spacing6)};var jf={smallContainerTargetWidth:r.create("--ft-modal-small-container-target-width","","SIZE","560px"),smallContainerMargin:r.extend("--ft-modal-small-container-margin","",l.spacing6),mediumContainerTargetWidth:r.create("--ft-modal-medium-container-target-width","","SIZE","800px"),mediumContainerMargin:r.extend("--ft-modal-medium-container-margin","",l.spacing6),largeContainerTargetWidth:r.create("--ft-modal-large-container-target-width","","SIZE","1040px"),largeContainerMargin:r.extend("--ft-modal-large-container-margin","",l.spacing6),overlayBackgroundColor:r.extend("--ft-modal-overlay-background-color","",l.colorGray700),overlayOpacity:r.extend("--ft-modal-overlay-opacity","",l.opacity40),shadow:r.extend("--ft-modal-shadow","",l.shadowElevation03),bodyBackgroundColor:r.extend("--ft-modal-body-background-color","",l.colorWhite),bodyColor:r.extend("--ft-modal-body-color","",d.contentGlobalPrimary),bodyHorizontalPadding:r.extend("--ft-modal-body-horizontal-padding","",l.spacing6),bodyVerticalPadding:r.extend("--ft-modal-body-vertical-padding","",l.spacing6),bodyVerticalGap:r.extend("--ft-modal-body-vertical-gap","",l.spacing6),headerBackgroundColor:r.extend("--ft-modal-header-background-color","",d.backgroundGlobalOnSurface),headerBorderColor:r.extend("--ft-modal-header-border-color","",d.borderGlobalSubtle),headerColor:r.extend("--ft-modal-header-color","",d.contentGlobalPrimary),headerLeadingIconColor:r.extend("--ft-modal-header-leading-icon-color","",d.contentGlobalPrimary),headerVerticalPadding:r.extend("--ft-modal-header-vertical-padding","",l.spacing1),headerRightPadding:r.extend("--ft-modal-header-right-padding","",l.spacing1),headerLeftPadding:r.extend("--ft-modal-header-left-padding","",l.spacing6),headerGap:r.extend("--ft-modal-header-gap","",l.spacing2),headerBorderBottomWidth:r.create("--ft-modal-header-border-bottom-width","","SIZE","1px"),borderRadius:r.extend("--ft-modal-border-radius","",l.borderRadiusM)};var Xf={overlayOpacity:r.extend("--ft-drawer-overlay-opacity","",l.opacity40),shadow:r.extend("--ft-drawer-shadow","",l.shadowElevation03),bodyColor:r.extend("--ft-drawer-body-color","",d.contentGlobalPrimary),bodyHorizontalPadding:r.extend("--ft-drawer-body-horizontal-padding","",l.spacing6),bodyVerticalPadding:r.extend("--ft-drawer-body-vertical-padding","",l.spacing6),bodyGap:r.extend("--ft-drawer-body-gap","",l.spacing6),bodyBackgroundColor:r.extend("--ft-drawer-body-background-color","",l.colorWhite),headerBackgroundColor:r.extend("--ft-drawer-header-background-color","",d.backgroundGlobalOnSurface),headerBorderColor:r.extend("--ft-drawer-header-border-color","",d.borderGlobalSubtle),headerColor:r.extend("--ft-drawer-header-color","",d.contentGlobalPrimary),headerTrailingIconColor:r.extend("--ft-drawer-header-trailing-icon-color","",d.contentGlobalSecondary),headerHeight:r.create("--ft-drawer-header-height","","SIZE","50px"),headerHorizontalPadding:r.extend("--ft-drawer-header-horizontal-padding","",l.spacing2),headerBorderWidth:r.create("--ft-drawer-header-border-width","","SIZE","1px"),headerGap:r.extend("--ft-drawer-header-gap","",l.spacing3),buttonsBarBackgroundColor:r.extend("--ft-drawer-buttons-bar-background-color","",d.backgroundGlobalOnSurface),buttonsBarBorderColor:r.extend("--ft-drawer-buttons-bar-border-color","",d.borderGlobalSubtle),buttonsBarColor:r.extend("--ft-drawer-buttons-bar-color","",d.contentGlobalPrimary),buttonsBarHorizontalPadding:r.extend("--ft-drawer-buttons-bar-horizontal-padding","",l.spacing6),buttonsBarVerticalPadding:r.extend("--ft-drawer-buttons-bar-vertical-padding","",l.spacing4),buttonsBarGap:r.extend("--ft-drawer-buttons-bar-gap","",l.spacing3),buttonsBarBorderWidth:r.create("--ft-drawer-buttons-bar-border-width","","SIZE","1px"),containerWidth:r.create("--ft-drawer-container-width","","SIZE","66%"),containerMinWidth:r.create("--ft-drawer-container-min-width","","SIZE","500px"),containerMaxWidth:r.create("--ft-drawer-container-max-width","","SIZE","1000px"),containerHeight:r.create("--ft-drawer-container-height","","SIZE","100%"),overlayBackgroundColor:r.extend("--ft-drawer-overlay-background-color","",l.colorGray700)};var rh={offBorderBottomWidth:r.create("--ft-tabs-off-border-bottom-width","","SIZE","1px"),offHoverStateLayerOpacity:r.extend("--ft-tabs-off-hover-state-layer-opacity","",l.opacity8),offDefaultStateLayerOpacity:r.extend("--ft-tabs-off-default-state-layer-opacity","",l.opacity0),offFocusStateLayerOpacity:r.extend("--ft-tabs-off-focus-state-layer-opacity","",l.opacity8),offDisabledComponentOpacity:r.extend("--ft-tabs-off-disabled-component-opacity","",l.opacity40),offColor:r.extend("--ft-tabs-off-color","",d.contentGlobalSubtle),offStateLayerColor:r.extend("--ft-tabs-off-state-layer-color","",d.contentGlobalSubtle),offBorderBottomColor:r.extend("--ft-tabs-off-border-bottom-color","",d.borderGlobalSubtle),activeTabIndicatorHeight:r.create("--ft-tabs-active-tab-indicator-height","","SIZE","3px"),topLeftBorderRadius:r.extend("--ft-tabs-top-left-border-radius","",l.borderRadiusS),topRightBorderRadius:r.extend("--ft-tabs-top-right-border-radius","",l.borderRadiusS),withLabelHorizontalPadding:r.extend("--ft-tabs-with-label-horizontal-padding","",l.spacing4),withLabelVerticalPadding:r.extend("--ft-tabs-with-label-vertical-padding","",l.spacing3),horizontalGap:r.extend("--ft-tabs-horizontal-gap","",l.spacing1),verticalGap:r.extend("--ft-tabs-vertical-gap","",l.spacing1),onHoverStateLayerOpacity:r.extend("--ft-tabs-on-hover-state-layer-opacity","",l.opacity16),onDefaultStateLayerOpacity:r.extend("--ft-tabs-on-default-state-layer-opacity","",l.opacity8),onFocusStateLayerOpacity:r.extend("--ft-tabs-on-focus-state-layer-opacity","",l.opacity16),onActiveStateLayerOpacity:r.extend("--ft-tabs-on-active-state-layer-opacity","",l.opacity24),onColor:r.extend("--ft-tabs-on-color","",d.contentActionPrimary),onStateLayerColor:r.extend("--ft-tabs-on-state-layer-color","",d.contentActionPrimary),onActiveTabIndicatorColor:r.extend("--ft-tabs-on-active-tab-indicator-color","",d.contentActionPrimary),iconOnlyHorizontalPadding:r.extend("--ft-tabs-icon-only-horizontal-padding","",l.spacing4),iconOnlyVerticalPadding:r.extend("--ft-tabs-icon-only-vertical-padding","",l.spacing4),alertTopPadding:r.extend("--ft-tabs-alert-top-padding","",l.spacing1),alertRightPadding:r.extend("--ft-tabs-alert-right-padding","",l.spacing05),focusOutlineWidth:r.create("--ft-tabs-focus-outline-width","","SIZE","2px"),focusFocusRingColor:r.extend("--ft-tabs-focus-focus-ring-color","",d.borderActionFocusRing)};var sh={fieldHorizontalPadding:r.extend("--ft-text-input-field-horizontal-padding","",l.spacing4),fieldHorizontalGap:r.extend("--ft-text-input-field-horizontal-gap","",l.spacing3),fieldVerticalGap:r.extend("--ft-text-input-field-vertical-gap","",l.spacing05),fieldIconSize:r.extend("--ft-text-input-field-icon-size","",l.iconSize3),fieldHeight:r.create("--ft-text-input-field-height","","SIZE","50px"),helperHorizontalPadding:r.extend("--ft-text-input-helper-horizontal-padding","",l.spacing4),helperHorizontalGap:r.extend("--ft-text-input-helper-horizontal-gap","",l.spacing1),helperIconSize:r.extend("--ft-text-input-helper-icon-size","",l.iconSize2),borderRadius:r.extend("--ft-text-input-border-radius","",l.borderRadiusM),backgroundColor:r.extend("--ft-text-input-background-color","",l.colorWhite),contentValueColor:r.extend("--ft-text-input-content-value-color","",d.contentGlobalPrimary),trailingIconColor:r.extend("--ft-text-input-trailing-icon-color","",d.contentGlobalSubtle),labelColor:r.extend("--ft-text-input-label-color","",d.contentGlobalSubtle),defaultBorderColor:r.extend("--ft-text-input-default-border-color","",d.borderInputPrimary),defaultHelperTextColor:r.extend("--ft-text-input-default-helper-text-color","",d.contentGlobalSubtle),defaultBorderWidth:r.create("--ft-text-input-default-border-width","","SIZE","1px"),errorBorderWidth:r.create("--ft-text-input-error-border-width","","SIZE","2px"),errorBorderColor:r.extend("--ft-text-input-error-border-color","",d.borderErrorPrimary),errorHelperTextColor:r.extend("--ft-text-input-error-helper-text-color","",d.contentErrorPrimary),errorHelperIconColor:r.extend("--ft-text-input-error-helper-icon-color","",d.contentErrorIconOnly),warningBorderWidth:r.create("--ft-text-input-warning-border-width","","SIZE","2px"),focusOutlineWidth:r.create("--ft-text-input-focus-outline-width","","SIZE","2px"),focusFocusRingColor:r.extend("--ft-text-input-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineOffset:r.create("--ft-text-input-focus-outline-offset","","SIZE","3px"),disabledComponentOpacity:r.extend("--ft-text-input-disabled-component-opacity","",l.opacity40)};var uh={backgroundColor:r.extend("--ft-text-area-background-color","",l.colorWhite),contentValueColor:r.extend("--ft-text-area-content-value-color","",d.contentGlobalPrimary),labelColor:r.extend("--ft-text-area-label-color","",d.contentGlobalSubtle),defaultBorderColor:r.extend("--ft-text-area-default-border-color","",d.borderInputPrimary),defaultHelperTextColor:r.extend("--ft-text-area-default-helper-text-color","",d.contentGlobalSubtle),defaultBorderWidth:r.create("--ft-text-area-default-border-width","","SIZE","1px"),errorBorderWidth:r.create("--ft-text-area-error-border-width","","SIZE","2px"),errorBorderColor:r.extend("--ft-text-area-error-border-color","",d.borderErrorPrimary),errorHelperTextColor:r.extend("--ft-text-area-error-helper-text-color","",d.contentErrorPrimary),errorHelperIconColor:r.extend("--ft-text-area-error-helper-icon-color","",d.contentErrorIconOnly),focusFocusRingColor:r.extend("--ft-text-area-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineWidth:r.create("--ft-text-area-focus-outline-width","","SIZE","2px"),focusOutlineOffset:r.create("--ft-text-area-focus-outline-offset","","SIZE","3px"),disabledComponentOpacity:r.extend("--ft-text-area-disabled-component-opacity","",l.opacity40),fieldHorizontalLeftPadding:r.extend("--ft-text-area-field-horizontal-left-padding","",l.spacing4),fieldHorizontalGap:r.extend("--ft-text-area-field-horizontal-gap","",l.spacing3),fieldVerticalGap:r.extend("--ft-text-area-field-vertical-gap","",l.spacing05),fieldMinHeight:r.create("--ft-text-area-field-min-height","","SIZE","64px"),helperHorizontalPadding:r.extend("--ft-text-area-helper-horizontal-padding","",l.spacing4),helperHorizontalGap:r.extend("--ft-text-area-helper-horizontal-gap","",l.spacing1),helperIconSize:r.extend("--ft-text-area-helper-icon-size","",l.iconSize2),borderRadius:r.extend("--ft-text-area-border-radius","",l.borderRadiusM)};var gh={height:r.create("--ft-floating-menu-height","","SIZE","50px"),horizontalPadding:r.extend("--ft-floating-menu-horizontal-padding","",l.spacing4),offIconColor:r.extend("--ft-floating-menu-off-icon-color","",d.contentGlobalPrimary),offColor:r.extend("--ft-floating-menu-off-color","",d.contentGlobalPrimary),onColor:r.extend("--ft-floating-menu-on-color","",d.contentActionPrimary),onStateLayerColor:r.extend("--ft-floating-menu-on-state-layer-color","",d.contentActionPrimary),gap:r.extend("--ft-floating-menu-gap","",l.spacing3),focusFocusRingColor:r.extend("--ft-floating-menu-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineWidth:r.create("--ft-floating-menu-focus-outline-width","","SIZE","3px"),focusStateLayerOpacity:r.extend("--ft-floating-menu-focus-state-layer-opacity","",l.opacity8),hoverStateLayerOpacity:r.extend("--ft-floating-menu-hover-state-layer-opacity","",l.opacity8),activeStateLayerOpacity:r.extend("--ft-floating-menu-active-state-layer-opacity","",l.opacity16),disabledComponentOpacity:r.extend("--ft-floating-menu-disabled-component-opacity","",l.opacity40),iconSize:r.extend("--ft-floating-menu-icon-size","",l.iconSize3),backgroundColor:r.extend("--ft-floating-menu-background-color","",d.backgroundGlobalOnSurface),shadow:r.extend("--ft-floating-menu-shadow","",l.shadowElevation02)};var Oh={fieldHorizontalPadding:r.extend("--ft-combobox-single-select-field-horizontal-padding","",l.spacing4),fieldHorizontalGap:r.extend("--ft-combobox-single-select-field-horizontal-gap","",l.spacing3),fieldVerticalGap:r.extend("--ft-combobox-single-select-field-vertical-gap","",l.spacing05),fieldIconSize:r.extend("--ft-combobox-single-select-field-icon-size","",l.iconSize3),fieldHeight:r.create("--ft-combobox-single-select-field-height","","SIZE","50px"),helperHorizontalPadding:r.extend("--ft-combobox-single-select-helper-horizontal-padding","",l.spacing4),helperHorizontalGap:r.extend("--ft-combobox-single-select-helper-horizontal-gap","",l.spacing1),helperVerticalGap:r.extend("--ft-combobox-single-select-helper-vertical-gap","",l.spacing1),helperIconSize:r.extend("--ft-combobox-single-select-helper-icon-size","",l.iconSize2),menuVerticalGap:r.extend("--ft-combobox-single-select-menu-vertical-gap","",l.spacing2),borderRadius:r.extend("--ft-combobox-single-select-border-radius","",l.borderRadiusM),backgroundColor:r.extend("--ft-combobox-single-select-background-color","",l.colorWhite),labelColor:r.extend("--ft-combobox-single-select-label-color","",d.contentGlobalSubtle),contentValueColor:r.extend("--ft-combobox-single-select-content-value-color","",d.contentGlobalPrimary),trailingIconColor:r.extend("--ft-combobox-single-select-trailing-icon-color","",d.contentGlobalSubtle),defaultBorderColor:r.extend("--ft-combobox-single-select-default-border-color","",d.borderInputPrimary),defaultHelperTextColor:r.extend("--ft-combobox-single-select-default-helper-text-color","",d.contentGlobalSubtle),defaultBorderWidth:r.create("--ft-combobox-single-select-default-border-width","","SIZE","1px"),errorBorderWidth:r.create("--ft-combobox-single-select-error-border-width","","SIZE","2px"),errorBorderColor:r.extend("--ft-combobox-single-select-error-border-color","",d.borderErrorPrimary),errorHelperTextColor:r.extend("--ft-combobox-single-select-error-helper-text-color","",d.contentErrorPrimary),warningBorderWidth:r.create("--ft-combobox-single-select-warning-border-width","","SIZE","2px"),warningBorderColor:r.extend("--ft-combobox-single-select-warning-border-color","",d.borderWarningPrimary),warningHelperTextColor:r.extend("--ft-combobox-single-select-warning-helper-text-color","",d.contentWarningPrimary),warningHelperIconColor:r.extend("--ft-combobox-single-select-warning-helper-icon-color","",d.contentWarningIconOnly),focusOutlineWidth:r.create("--ft-combobox-single-select-focus-outline-width","","SIZE","2px"),focusFocusRingColor:r.extend("--ft-combobox-single-select-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineOffset:r.create("--ft-combobox-single-select-focus-outline-offset","","SIZE","3px"),disabledComponentOpacity:r.extend("--ft-combobox-single-select-disabled-component-opacity","",l.opacity40)};var Rh={backgroundColor:r.extend("--ft-combobox-multi-select-background-color","",l.colorWhite),labelColor:r.extend("--ft-combobox-multi-select-label-color","",d.contentGlobalSubtle),trailingIconColor:r.extend("--ft-combobox-multi-select-trailing-icon-color","",d.contentGlobalSubtle),defaultBorderColor:r.extend("--ft-combobox-multi-select-default-border-color","",d.borderInputPrimary),defaultHelperTextColor:r.extend("--ft-combobox-multi-select-default-helper-text-color","",d.contentGlobalSubtle),defaultBorderWidth:r.create("--ft-combobox-multi-select-default-border-width","","SIZE","1px"),errorBorderColor:r.extend("--ft-combobox-multi-select-error-border-color","",d.borderErrorPrimary),errorHelperTextColor:r.extend("--ft-combobox-multi-select-error-helper-text-color","",d.contentErrorPrimary),errorHelperIcon:r.extend("--ft-combobox-multi-select-error-helper-icon","",d.contentErrorIconOnly),errorBorderWidth:r.create("--ft-combobox-multi-select-error-border-width","","SIZE","2px"),warningBorderColor:r.extend("--ft-combobox-multi-select-warning-border-color","",d.borderWarningPrimary),warningHelperTextColor:r.extend("--ft-combobox-multi-select-warning-helper-text-color","",d.contentWarningPrimary),warningHelperIconColor:r.extend("--ft-combobox-multi-select-warning-helper-icon-color","",d.contentWarningIconOnly),warningBorderWidth:r.create("--ft-combobox-multi-select-warning-border-width","","SIZE","2px"),focusFocusRingColor:r.extend("--ft-combobox-multi-select-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineWidth:r.create("--ft-combobox-multi-select-focus-outline-width","","SIZE","2px"),focusOutlineOffset:r.create("--ft-combobox-multi-select-focus-outline-offset","","SIZE","3px"),disabledComponentOpacity:r.extend("--ft-combobox-multi-select-disabled-component-opacity","",l.opacity40),helperHorizontalPadding:r.extend("--ft-combobox-multi-select-helper-horizontal-padding","",l.spacing4),helperHorizontalGap:r.extend("--ft-combobox-multi-select-helper-horizontal-gap","",l.spacing1),helperVerticalGap:r.extend("--ft-combobox-multi-select-helper-vertical-gap","",l.spacing1),helperIconSize:r.extend("--ft-combobox-multi-select-helper-icon-size","",l.iconSize2),fieldHorizontalPadding:r.extend("--ft-combobox-multi-select-field-horizontal-padding","",l.spacing4),fieldHorizontalGap:r.extend("--ft-combobox-multi-select-field-horizontal-gap","",l.spacing3),fieldVerticalGap:r.extend("--ft-combobox-multi-select-field-vertical-gap","",l.spacing05),fieldIconSize:r.extend("--ft-combobox-multi-select-field-icon-size","",l.iconSize3),fieldMaxHeight:r.create("--ft-combobox-multi-select-field-max-height","","SIZE","112px"),contentValuesHorizontalGap:r.extend("--ft-combobox-multi-select-content-values-horizontal-gap","",l.spacing1),contentValuesVerticalGap:r.extend("--ft-combobox-multi-select-content-values-vertical-gap","",l.spacing1),borderRadius:r.extend("--ft-combobox-multi-select-border-radius","",l.borderRadiusM)};var Ph={backgroundColor:r.extend("--ft-popover-background-color","",d.backgroundGlobalOnSurface),horizontalPadding:r.extend("--ft-popover-horizontal-padding","",l.spacing6),verticalPadding:r.extend("--ft-popover-vertical-padding","",l.spacing6),titleColor:r.extend("--ft-popover-title-color","",d.contentGlobalPrimary),bodyColor:r.extend("--ft-popover-body-color","",d.contentGlobalSecondary),linkColor:r.extend("--ft-popover-link-color","",d.contentActionPrimary),gap:r.extend("--ft-popover-gap","",l.spacing3),borderRadius:r.extend("--ft-popover-border-radius","",l.borderRadiusM),shadow:r.extend("--ft-popover-shadow","",l.shadowElevation02),maxWidth:r.create("--ft-popover-max-width","","SIZE","440px")};var Bh={hoverStateLayerOpacity:r.extend("--ft-collapsible-hover-state-layer-opacity","",l.opacity8),focusStateLayerOpacity:r.extend("--ft-collapsible-focus-state-layer-opacity","",l.opacity8),focusOutlineWidth:r.create("--ft-collapsible-focus-outline-width","","SIZE","3px"),focusFocusRingColor:r.extend("--ft-collapsible-focus-focus-ring-color","",d.borderActionFocusRing),activeStateLayerOpacity:r.extend("--ft-collapsible-active-state-layer-opacity","",l.opacity16),disabledComponentOpacity:r.extend("--ft-collapsible-disabled-component-opacity","",l.opacity40),horizontalPadding:r.extend("--ft-collapsible-horizontal-padding","",l.spacing4),verticalPadding:r.extend("--ft-collapsible-vertical-padding","",l.spacing3),color:r.extend("--ft-collapsible-color","",d.contentGlobalPrimary),stateLayerColor:r.extend("--ft-collapsible-state-layer-color","",d.contentGlobalPrimary),backgroundColor:r.extend("--ft-collapsible-background-color","",d.backgroundGlobalOnSurface),borderColor:r.extend("--ft-collapsible-border-color","",d.borderGlobalSubtle),iconSize:r.extend("--ft-collapsible-icon-size","",l.iconSize3)};var Hh={groupHorizontalPadding:r.extend("--ft-switch-group-horizontal-padding","",l.spacing1),groupVerticalPadding:r.extend("--ft-switch-group-vertical-padding","",l.spacing1),groupGap:r.extend("--ft-switch-group-gap","",l.spacing1),groupBackgroundColor:r.extend("--ft-switch-group-background-color","",d.backgroundGlobalSurface),groupBorderColor:r.extend("--ft-switch-group-border-color","",d.borderGlobalSubtle),groupBorderRadius:r.create("--ft-switch-group-border-radius","","SIZE","6px"),labelHorizontalPadding:r.extend("--ft-switch-label-horizontal-padding","",l.spacing2),labelVerticalPadding:r.extend("--ft-switch-label-vertical-padding","",l.spacing1),offHoverStateLayerOpacity:r.extend("--ft-switch-off-hover-state-layer-opacity","",l.opacity8),offFocusStateLayerOpacity:r.extend("--ft-switch-off-focus-state-layer-opacity","",l.opacity8),offActiveStateLayerOpacity:r.extend("--ft-switch-off-active-state-layer-opacity","",l.opacity16),offDisabledComponentOpacity:r.extend("--ft-switch-off-disabled-component-opacity","",l.opacity40),offColor:r.extend("--ft-switch-off-color","",d.contentGlobalSubtle),offStateLayerColor:r.extend("--ft-switch-off-state-layer-color","",d.contentGlobalSubtle),onHoverStateLayerOpacity:r.extend("--ft-switch-on-hover-state-layer-opacity","",l.opacity8),onFocusStateLayerOpacity:r.extend("--ft-switch-on-focus-state-layer-opacity","",l.opacity8),onActiveStateLayerOpacity:r.extend("--ft-switch-on-active-state-layer-opacity","",l.opacity16),onDisabledComponentOpacity:r.extend("--ft-switch-on-disabled-component-opacity","",l.opacity40),onColor:r.extend("--ft-switch-on-color","",d.contentActionPrimary),onStateLayerColor:r.extend("--ft-switch-on-state-layer-color","",d.contentActionPrimary),iconHorizontalPadding:r.extend("--ft-switch-icon-horizontal-padding","",l.spacing1),iconVerticalPadding:r.extend("--ft-switch-icon-vertical-padding","",l.spacing1),focusOutlineWidth:r.create("--ft-switch-focus-outline-width","","SIZE","2px"),focusFocusRingColor:r.extend("--ft-switch-focus-focus-ring-color","",d.borderActionFocusRing),optionBorderRadius:r.extend("--ft-switch-option-border-radius","",l.borderRadiusS)};var jh={color1Light:r.extend("--ft-chart-1-light","for area color charts",l.colorBrand40),color1Base:r.extend("--ft-chart-1-base","for line charts",l.colorBrand0),color2Light:r.extend("--ft-chart-2-light","for area color charts",l.colorYellow60),color2Base:r.extend("--ft-chart-2-base","for line charts",l.colorYellow100),color3Light:r.extend("--ft-chart-3-light","",l.colorUltramarine40),color3Base:r.extend("--ft-chart-3-base","",l.colorUltramarine70),color4Light:r.extend("--ft-chart-4-light","",l.colorCyan50),color4Base:r.extend("--ft-chart-4-base","",l.colorCyan100),color5Light:r.extend("--ft-chart-5-light","",l.colorRed40),color5Base:r.extend("--ft-chart-5-base","",l.colorRed60),color6Light:r.extend("--ft-chart-6-light","",l.colorGreen40),color6Base:r.extend("--ft-chart-6-base","",l.colorGreen70),color7Light:r.extend("--ft-chart-7-light","",l.colorOrange70),color7Base:r.extend("--ft-chart-7-base","",l.colorOrange100),color8Light:r.extend("--ft-chart-8-light","",l.colorAvocado70),color8Base:r.extend("--ft-chart-8-base","",l.colorAvocado200),color9Light:r.extend("--ft-chart-9-light","",l.colorBrown50),color9Base:r.extend("--ft-chart-9-base","",l.colorBrown200),color10Light:r.extend("--ft-chart-10-light","",l.colorGray50),color10Base:r.extend("--ft-chart-10-base","",l.colorGray80),monochrome10:r.extend("--ft-chart-monochrome-10","",l.colorBrand10),monochrome20:r.extend("--ft-chart-monochrome-20","",l.colorBrand20),monochrome30:r.extend("--ft-chart-monochrome-30","",l.colorBrand40),monochrome40:r.extend("--ft-chart-monochrome-40","",l.colorBrand60),monochrome50:r.extend("--ft-chart-monochrome-50","",l.colorBrand0),monochrome60:r.extend("--ft-chart-monochrome-60","",l.colorBrand200),scatterplotQuadrantPopularOldBackgroundColor:r.extend("--ft-chart-scatterplot-quadrant-popular-old-background-color","",l.colorYellow10),scatterplotQuadrantPopularNewBackgroundColor:r.extend("--ft-chart-scatterplot-quadrant-popular-new-background-color","",l.colorAvocado10),scatterplotQuadrantUnpopularOldBackgroundColor:r.extend("--ft-chart-scatterplot-quadrant-unpopular-old-background-color","",l.colorRed10),scatterplotQuadrantUnpopularNewBackgroundColor:r.extend("--ft-chart-scatterplot-quadrant-unpopular-new-background-color","",l.colorCyan10),scatterplotDatapointInitialDefaultBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-initial-default-background-color","",l.colorBrand70),scatterplotDatapointInitialDefaultBackgroundOpacity:r.extend("--ft-chart-scatterplot-datapoint-initial-default-background-opacity","",l.opacity48),scatterplotDatapointInitialHoverBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-initial-hover-background-color","",l.colorBrand0),scatterplotDatapointSelectedDefaultBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-selected-default-background-color","",l.colorBrand100),scatterplotDatapointSelectedHoverBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-selected-hover-background-color","",l.colorBrand200),scatterplotDatapointUnselectedDefaultBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-unselected-default-background-color","",l.colorGray60),scatterplotDatapointUnselectedDefaultBackgroundOpacity:r.extend("--ft-chart-scatterplot-datapoint-unselected-default-background-opacity","",l.opacity48),scatterplotDatapointUnselectedHoverBackgroundColor:r.extend("--ft-chart-scatterplot-datapoint-unselected-hover-background-color","",l.colorGray70),scatterplotDatapointHoverHoverRingColor:r.extend("--ft-chart-scatterplot-datapoint-hover-hover-ring-color","",l.colorCyan200)};var Yh={color1IconColor:r.extend("--ft-page-designer-1-icon-color","for area color charts",l.colorCyan0),color1ToolbarColor:r.extend("--ft-page-designer-1-toolbar-color","for area color charts",l.colorCyan0),color2IconColor:r.extend("--ft-page-designer-2-icon-color","for area color charts",l.colorBrand0),color2ToolbarColor:r.extend("--ft-page-designer-2-toolbar-color","for area color charts",l.colorBrand0),color3IconColor:r.extend("--ft-page-designer-3-icon-color","for area color charts",l.colorYellow200),color3ToolbarColor:r.extend("--ft-page-designer-3-toolbar-color","for area color charts",l.colorYellow200),color4IconColor:r.extend("--ft-page-designer-4-icon-color","for area color charts",l.colorUltramarine50),color4ToolbarColor:r.extend("--ft-page-designer-4-toolbar-color","for area color charts",l.colorUltramarine50),color5IconColor:r.extend("--ft-page-designer-5-icon-color","for area color charts",l.colorGreen0),color5ToolbarColor:r.extend("--ft-page-designer-5-toolbar-color","for area color charts",l.colorGreen0),color6IconColor:r.extend("--ft-page-designer-6-icon-color","for area color charts",l.colorOrange0),color6ToolbarColor:r.extend("--ft-page-designer-6-toolbar-color","for area color charts",l.colorOrange0),color7IconColor:r.extend("--ft-page-designer-7-icon-color","for area color charts",l.colorAvocado200),color7ToolbarColor:r.extend("--ft-page-designer-7-toolbar-color","for area color charts",l.colorAvocado200),color8IconColor:r.extend("--ft-page-designer-8-icon-color","for area color charts",l.colorBrown0),color8ToolbarColor:r.extend("--ft-page-designer-8-toolbar-color","for area color charts",l.colorBrown0)};var ty={borderWidth:r.create("--ft-notice-border-width","","SIZE","1px"),horizontalPadding:r.extend("--ft-notice-horizontal-padding","",l.spacing3),verticalPadding:r.extend("--ft-notice-vertical-padding","",l.spacing2),borderRadius:r.extend("--ft-notice-border-radius","",l.borderRadiusS),gap:r.extend("--ft-notice-gap","",l.spacing2),iconSize:r.extend("--ft-notice-icon-size","",l.iconSize3),infoBackgroundColor:r.extend("--ft-notice-info-background-color","",d.backgroundInfoSubtle),infoBorderColor:r.extend("--ft-notice-info-border-color","",d.borderInfoSubtle),infoColor:r.extend("--ft-notice-info-color","",d.contentInfoPrimary),infoIconColor:r.extend("--ft-notice-info-icon-color","",d.contentInfoIconOnly),warningBackgroundColor:r.extend("--ft-notice-warning-background-color","",d.backgroundWarningSubtle),warningBorderColor:r.extend("--ft-notice-warning-border-color","",d.borderWarningSubtle),warningColor:r.extend("--ft-notice-warning-color","",d.contentWarningPrimary),warningIconColor:r.extend("--ft-notice-warning-icon-color","",d.contentWarningIconOnly),errorBackgroundColor:r.extend("--ft-notice-error-background-color","",d.backgroundErrorSubtle),errorBorderColor:r.extend("--ft-notice-error-border-color","",d.borderErrorSubtle),errorColor:r.extend("--ft-notice-error-color","",d.contentErrorPrimary),errorIconColor:r.extend("--ft-notice-error-icon-color","",d.contentErrorIconOnly),successBackgroundColor:r.extend("--ft-notice-success-background-color","",d.backgroundSuccessSubtle),successBorderColor:r.extend("--ft-notice-success-border-color","",d.borderSuccessSubtle),successColor:r.extend("--ft-notice-success-color","",d.contentSuccessPrimary),successIconColor:r.extend("--ft-notice-success-icon-color","",d.contentSuccessIconOnly),denseHorizontalPadding:r.create("--ft-notice-dense-horizontal-padding","","SIZE","0px"),denseVerticalPadding:r.create("--ft-notice-dense-vertical-padding","","SIZE","0px"),denseGap:r.extend("--ft-notice-dense-gap","",l.spacing1),denseIconSize:r.extend("--ft-notice-dense-icon-size","",l.iconSize2),denseBorderWidth:r.create("--ft-notice-dense-border-width","","SIZE","0")};var iy={offHoverStateLayerOpacity:r.extend("--ft-toggle-off-hover-state-layer-opacity","",l.opacity16),offFocusStateLayerOpacity:r.extend("--ft-toggle-off-focus-state-layer-opacity","",l.opacity16),offActiveStateLayerOpacity:r.extend("--ft-toggle-off-active-state-layer-opacity","",l.opacity24),offDisabledComponentOpacity:r.extend("--ft-toggle-off-disabled-component-opacity","",l.opacity40),offBackgroundColor:r.extend("--ft-toggle-off-background-color","",d.contentGlobalSubtle),offIconColor:r.extend("--ft-toggle-off-icon-color","",d.contentGlobalSubtle),offStateLayerColor:r.extend("--ft-toggle-off-state-layer-color","",d.contentGlobalSubtle),onHoverStateLayerOpacity:r.extend("--ft-toggle-on-hover-state-layer-opacity","",l.opacity16),onFocusStateLayerOpacity:r.extend("--ft-toggle-on-focus-state-layer-opacity","",l.opacity16),onActiveStateLayerOpacity:r.extend("--ft-toggle-on-active-state-layer-opacity","",l.opacity24),onDisabledComponentOpacity:r.extend("--ft-toggle-on-disabled-component-opacity","",l.opacity40),onBackgroundColor:r.extend("--ft-toggle-on-background-color","",d.contentActionPrimary),onStateLayerColor:r.extend("--ft-toggle-on-state-layer-color","",d.contentActionPrimary),onIconColor:r.extend("--ft-toggle-on-icon-color","",d.contentActionPrimary),color:r.extend("--ft-toggle-color","",d.contentGlobalPrimary),focusFocusRingColor:r.extend("--ft-toggle-focus-focus-ring-color","",d.borderActionFocusRing),gap:r.extend("--ft-toggle-gap","",l.spacing3)};var py={color:r.extend("--ft-radio-color","",d.contentGlobalPrimary),selectedRadioColor:r.extend("--ft-radio-selected-radio-color","",d.contentActionPrimary),selectedStateLayerColor:r.extend("--ft-radio-selected-state-layer-color","",d.contentActionPrimary),selectedHoverStateLayerOpacity:r.extend("--ft-radio-selected-hover-state-layer-opacity","",l.opacity16),selectedFocusStateLayerOpacity:r.extend("--ft-radio-selected-focus-state-layer-opacity","",l.opacity16),selectedActiveStateLayerOpacity:r.extend("--ft-radio-selected-active-state-layer-opacity","",l.opacity24),selectedDisabledComponentOpacity:r.extend("--ft-radio-selected-disabled-component-opacity","",l.opacity40),unselectedStateLayerColor:r.extend("--ft-radio-unselected-state-layer-color","",d.borderInputPrimary),unselectedBorderColor:r.extend("--ft-radio-unselected-border-color","",d.borderInputPrimary),unselectedHoverStateLayerOpacity:r.extend("--ft-radio-unselected-hover-state-layer-opacity","",l.opacity16),unselectedFocusStateLayerOpacity:r.extend("--ft-radio-unselected-focus-state-layer-opacity","",l.opacity16),unselectedActiveStateLayerOpacity:r.extend("--ft-radio-unselected-active-state-layer-opacity","",l.opacity24),unselectedDisabledComponentOpacity:r.extend("--ft-radio-unselected-disabled-component-opacity","",l.opacity40),focusFocusRingColor:r.extend("--ft-radio-focus-focus-ring-color","",d.borderActionFocusRing),focusOutlineOffset:r.create("--ft-radio-focus-outline-offset","","SIZE","3px"),focusOutlineWidth:r.create("--ft-radio-focus-outline-width","","SIZE","2px"),gap:r.extend("--ft-radio-gap","",l.spacing3)};var my={iconSize:r.extend("--ft-notification-icon-size","",l.iconSize4),leftPadding:r.extend("--ft-notification-left-padding","",l.spacing5),rightPadding:r.extend("--ft-notification-right-padding","",l.spacing4),verticalPadding:r.extend("--ft-notification-vertical-padding","",l.spacing3),infoBackgroundColor:r.extend("--ft-notification-info-background-color","",d.backgroundInfoSubtle),infoColor:r.extend("--ft-notification-info-color","",d.contentInfoPrimary),infoIconColor:r.extend("--ft-notification-info-icon-color","",d.contentInfoIconOnly),infoBorderColor:r.extend("--ft-notification-info-border-color","",d.borderInfoSubtle),successBackgroundColor:r.extend("--ft-notification-success-background-color","",d.backgroundSuccessSubtle),successColor:r.extend("--ft-notification-success-color","",d.contentSuccessPrimary),successIconColor:r.extend("--ft-notification-success-icon-color","",d.contentSuccessIconOnly),successBorderColor:r.extend("--ft-notification-success-border-color","",d.borderSuccessSubtle),warningBackgroundColor:r.extend("--ft-notification-warning-background-color","",d.backgroundWarningSubtle),warningColor:r.extend("--ft-notification-warning-color","",d.contentWarningPrimary),warningIconColor:r.extend("--ft-notification-warning-icon-color","",d.contentWarningIconOnly),warningBorderColor:r.extend("--ft-notification-warning-border-color","",d.borderWarningSubtle),errorBackgroundColor:r.extend("--ft-notification-error-background-color","",d.backgroundErrorSubtle),errorColor:r.extend("--ft-notification-error-color","",d.contentErrorPrimary),errorIconColor:r.extend("--ft-notification-error-icon-color","",d.contentErrorIconOnly),errorBorderColor:r.extend("--ft-notification-error-border-color","",d.borderErrorSubtle),borderRadius:r.extend("--ft-notification-border-radius","",l.borderRadiusPill),borderWidth:r.create("--ft-notification-border-width","","SIZE","1px"),leadingGap:r.extend("--ft-notification-leading-gap","",l.spacing2),trailingGap:r.extend("--ft-notification-trailing-gap","",l.spacing8)};var Sy={horizontalPadding:r.extend("--ft-tooltip-horizontal-padding","",l.spacing2),verticalPadding:r.extend("--ft-tooltip-vertical-padding","",l.spacing2),borderRadius:r.extend("--ft-tooltip-border-radius","",l.borderRadiusS),color:r.extend("--ft-tooltip-color","",d.contentGlobalOnColor),backgroundColor:r.extend("--ft-tooltip-background-color","",d.contentGlobalPrimary),backgroundOpacity:r.extend("--ft-tooltip-background-opacity","",l.opacity80),shadow:r.extend("--ft-tooltip-shadow","",l.shadowElevation02),maxWidth:r.create("--ft-tooltip-max-width","","SIZE","256px"),gap:r.extend("--ft-tooltip-gap","",l.spacing05)};var Ay={verticalPadding:r.extend("--ft-reorderable-list-vertical-padding","",l.spacing4),gap:r.extend("--ft-reorderable-list-gap","",l.spacing1),borderRadius:r.extend("--ft-reorderable-list-border-radius","",l.borderRadiusM),reorderableItemTitleMarginRight:r.extend("--ft-reorderable-list-reorderable-item-title-margin-right","",l.spacing6),reorderableItemTitleColor:r.extend("--ft-reorderable-list-reorderable-item-title-color","",d.contentGlobalPrimary),reorderableItemLeftButtonsGroupMarginRight:r.extend("--ft-reorderable-list-reorderable-item-left-buttons-group-margin-right","",l.spacing6),reorderableItemLeftButtonsGroupHorizontalGap:r.extend("--ft-reorderable-list-reorderable-item-left-buttons-group-horizontal-gap","",l.spacing2),reorderableItemRightButtonsGroupHorizontalGap:r.extend("--ft-reorderable-list-reorderable-item-right-buttons-group-horizontal-gap","",l.spacing2),reorderableItemUsersCountColor:r.extend("--ft-reorderable-list-reorderable-item-users-count-color","",d.contentGlobalPrimary),reorderableItemUsersCountMarginRight:r.extend("--ft-reorderable-list-reorderable-item-users-count-margin-right","",l.spacing6),reorderableItemBackgroundColor:r.extend("--ft-reorderable-list-reorderable-item-background-color","",d.backgroundGlobalOnSurface),reorderableItemWarningMessageGap:r.extend("--ft-reorderable-list-reorderable-item-warning-message-gap","",l.spacing1),reorderableItemWarningMessageColor:r.extend("--ft-reorderable-list-reorderable-item-warning-message-color","",d.contentWarningPrimary),reorderableItemWarningMessageIconColor:r.extend("--ft-reorderable-list-reorderable-item-warning-message-icon-color","",d.contentWarningIconOnly),reorderableItemGripColor:r.extend("--ft-reorderable-list-reorderable-item-grip-color","",d.contentGlobalSecondary),reorderableItemGripOpacity:r.extend("--ft-reorderable-list-reorderable-item-grip-opacity","",l.opacity48),boxShadow:r.extend("--ft-reorderable-list-box-shadow","",l.shadowElevation01),borderWidth:r.create("--ft-reorderable-list-border-width","","SIZE","1px"),reorderableItemsGap:r.extend("--ft-reorderable-list-reorderable-items-gap","",l.spacing2),leftPadding:r.extend("--ft-reorderable-list-left-padding","",l.spacing2),rightPadding:r.extend("--ft-reorderable-list-right-padding","",l.spacing6),borderColor:r.extend("--ft-reorderable-list-border-color","",d.borderGlobalPrimary),backgroundColor:r.extend("--ft-reorderable-list-background-color","",d.backgroundGlobalOnSurfaceDark)};var Bo;(function(t){t.brand="brand",t.neutral="neutral",t.info="info",t.success="success",t.warning="warning",t.error="error"})(Bo||(Bo={}));var Ar;(function(t){t.large="large",t.medium="medium",t.small="small"})(Ar||(Ar={}));var Fo=g(D());function qi(t){let e=$o[t];return Fo.css`
        .ft-typography--${(0,Fo.unsafeCSS)(t)} {
            font-family: ${e.fontFamily};
            font-size: ${e.fontSize};
            font-weight: ${e.fontWeight};
            letter-spacing: ${e.letterSpacing};
            line-height: ${e.lineHeight};
            text-transform: ${e.textCase};
        }
    `}var Yi=A.FtCssVariableFactory.extend("--ft-typography-font-family","",A.designSystemVariables.titleFont),It=A.FtCssVariableFactory.extend("--ft-typography-font-family","",A.designSystemVariables.contentFont),R={fontFamily:It,fontSize:A.FtCssVariableFactory.create("--ft-typography-font-size","","SIZE","16px"),fontWeight:A.FtCssVariableFactory.create("--ft-typography-font-weight","","UNKNOWN","normal"),letterSpacing:A.FtCssVariableFactory.create("--ft-typography-letter-spacing","","SIZE","0.496px"),lineHeight:A.FtCssVariableFactory.create("--ft-typography-line-height","","NUMBER","1.5"),textTransform:A.FtCssVariableFactory.create("--ft-typography-text-transform","","UNKNOWN","inherit")},Rr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-title-font-family","",Yi),fontSize:A.FtCssVariableFactory.extend("--ft-typography-title-font-size","",R.fontSize,"20px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-title-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-title-letter-spacing","",R.letterSpacing,"0.15px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-title-line-height","",R.lineHeight,"1.2"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-title-text-transform","",R.textTransform,"inherit")},Nr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-title-dense-font-family","",Yi),fontSize:A.FtCssVariableFactory.extend("--ft-typography-title-dense-font-size","",R.fontSize,"14px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-title-dense-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-title-dense-letter-spacing","",R.letterSpacing,"0.105px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-title-dense-line-height","",R.lineHeight,"1.7"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-title-dense-text-transform","",R.textTransform,"inherit")},Tr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-font-size","",R.fontSize,"16px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-font-weight","",R.fontWeight,"600"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-letter-spacing","",R.letterSpacing,"0.144px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-line-height","",R.lineHeight,"1.5"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-subtitle1-text-transform","",R.textTransform,"inherit")},Lr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-font-size","",R.fontSize,"14px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-letter-spacing","",R.letterSpacing,"0.098px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-line-height","",R.lineHeight,"1.7"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-subtitle2-text-transform","",R.textTransform,"inherit")},Ir={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-body1-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-body1-font-size","",R.fontSize,"16px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-body1-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-body1-letter-spacing","",R.letterSpacing,"0.496px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-body1-line-height","",R.lineHeight,"1.5"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-body1-text-transform","",R.textTransform,"inherit")},Qe={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-body2-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-body2-font-size","",R.fontSize,"14px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-body2-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-body2-letter-spacing","",R.letterSpacing,"0.252px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-body2-line-height","",R.lineHeight,"1.4"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-body2-text-transform","",R.textTransform,"inherit")},Pr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-caption-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-caption-font-size","",R.fontSize,"12px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-caption-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-caption-letter-spacing","",R.letterSpacing,"0.396px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-caption-line-height","",R.lineHeight,"1.33"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-caption-text-transform","",R.textTransform,"inherit")},_r={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-font-size","",R.fontSize,"10px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-letter-spacing","",R.letterSpacing,"0.33px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-line-height","",R.lineHeight,"1.6"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-breadcrumb-text-transform","",R.textTransform,"inherit")},kr={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-overline-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-overline-font-size","",R.fontSize,"10px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-overline-font-weight","",R.fontWeight,"normal"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-overline-letter-spacing","",R.letterSpacing,"1.5px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-overline-line-height","",R.lineHeight,"1.6"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-overline-text-transform","",R.textTransform,"uppercase")},bt={fontFamily:A.FtCssVariableFactory.extend("--ft-typography-button-font-family","",It),fontSize:A.FtCssVariableFactory.extend("--ft-typography-button-font-size","",R.fontSize,"14px"),fontWeight:A.FtCssVariableFactory.extend("--ft-typography-button-font-weight","",R.fontWeight,"600"),letterSpacing:A.FtCssVariableFactory.extend("--ft-typography-button-letter-spacing","",R.letterSpacing,"1.246px"),lineHeight:A.FtCssVariableFactory.extend("--ft-typography-button-line-height","",R.lineHeight,"1.15"),textTransform:A.FtCssVariableFactory.extend("--ft-typography-button-text-transform","",R.textTransform,"uppercase")},Xi=nt.css`
    .ft-typography--title {
        font-family: ${Rr.fontFamily};
        font-size: ${Rr.fontSize};
        font-weight: ${Rr.fontWeight};
        letter-spacing: ${Rr.letterSpacing};
        line-height: ${Rr.lineHeight};
        text-transform: ${Rr.textTransform};
    }
`,Qi=nt.css`
    .ft-typography--title-dense {
        font-family: ${Nr.fontFamily};
        font-size: ${Nr.fontSize};
        font-weight: ${Nr.fontWeight};
        letter-spacing: ${Nr.letterSpacing};
        line-height: ${Nr.lineHeight};
        text-transform: ${Nr.textTransform};
    }
`,Ji=nt.css`
    .ft-typography--subtitle1 {
        font-family: ${Tr.fontFamily};
        font-size: ${Tr.fontSize};
        font-weight: ${Tr.fontWeight};
        letter-spacing: ${Tr.letterSpacing};
        line-height: ${Tr.lineHeight};
        text-transform: ${Tr.textTransform};
    }
`,es=nt.css`
    .ft-typography--subtitle2 {
        font-family: ${Lr.fontFamily};
        font-size: ${Lr.fontSize};
        font-weight: ${Lr.fontWeight};
        letter-spacing: ${Lr.letterSpacing};
        line-height: ${Lr.lineHeight};
        text-transform: ${Lr.textTransform};
    }

`,ts=nt.css`
    .ft-typography--body1 {
        font-family: ${Ir.fontFamily};
        font-size: ${Ir.fontSize};
        font-weight: ${Ir.fontWeight};
        letter-spacing: ${Ir.letterSpacing};
        line-height: ${Ir.lineHeight};
        text-transform: ${Ir.textTransform};
    }
`,rs=nt.css`
    .ft-typography--body2 {
        font-family: ${Qe.fontFamily};
        font-size: ${Qe.fontSize};
        font-weight: ${Qe.fontWeight};
        letter-spacing: ${Qe.letterSpacing};
        line-height: ${Qe.lineHeight};
        text-transform: ${Qe.textTransform};
    }
`,Mo=nt.css`
    .ft-typography--caption {
        font-family: ${Pr.fontFamily};
        font-size: ${Pr.fontSize};
        font-weight: ${Pr.fontWeight};
        letter-spacing: ${Pr.letterSpacing};
        line-height: ${Pr.lineHeight};
        text-transform: ${Pr.textTransform};
    }
`,os=nt.css`
    .ft-typography--breadcrumb {
        font-family: ${_r.fontFamily};
        font-size: ${_r.fontSize};
        font-weight: ${_r.fontWeight};
        letter-spacing: ${_r.letterSpacing};
        line-height: ${_r.lineHeight};
        text-transform: ${_r.textTransform};
    }
`,ns=nt.css`
    .ft-typography--overline {
        font-family: ${kr.fontFamily};
        font-size: ${kr.fontSize};
        font-weight: ${kr.fontWeight};
        letter-spacing: ${kr.letterSpacing};
        line-height: ${kr.lineHeight};
        text-transform: ${kr.textTransform};
    }
`,as=nt.css`
    .ft-typography--button {
        font-family: ${bt.fontFamily};
        font-size: ${bt.fontSize};
        font-weight: ${bt.fontWeight};
        letter-spacing: ${bt.letterSpacing};
        line-height: ${bt.lineHeight};
        text-transform: ${bt.textTransform};
    }
`,is=nt.css`
    .ft-typography {
        vertical-align: inherit;
    }
`,ss=[Object.keys($o).map(t=>qi(t))];var ls=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},K=class extends cs.FtLitElement{constructor(){super(...arguments),this.variant=Vt.body1}render(){return this.element?Yn`
                <${Zn(this.element)}
                    part="text"
                    class="ft-typography ft-typography--${this.variant}">
                    <slot></slot>
                </${Zn(this.element)}>
            `:Yn`
            <slot part="text" class="ft-typography ft-typography--${this.variant}"></slot>
        `}};K.styles=[Xi,Qi,Ji,es,ts,rs,Mo,os,ns,as,is,...ss];ls([(0,Xn.property)()],K.prototype,"element",void 0);ls([(0,Xn.property)()],K.prototype,"variant",void 0);(0,ds.customElement)("ft-typography")(K);var pa=g(N());var go=g(V()),fl=g(N());var Es=g(D()),$=g(N());var ms=g(D()),le=g(N()),ps=le.FtCssVariableFactory.extend("--ft-ripple-color","",le.designSystemVariables.colorContent),E={color:ps,backgroundColor:le.FtCssVariableFactory.extend("--ft-ripple-background-color","",ps),opacityContentOnSurfacePressed:le.FtCssVariableFactory.external(le.designSystemVariables.opacityContentOnSurfacePressed,"Design system"),opacityContentOnSurfaceHover:le.FtCssVariableFactory.external(le.designSystemVariables.opacityContentOnSurfaceHover,"Design system"),opacityContentOnSurfaceFocused:le.FtCssVariableFactory.external(le.designSystemVariables.opacityContentOnSurfaceFocused,"Design system"),opacityContentOnSurfaceSelected:le.FtCssVariableFactory.external(le.designSystemVariables.opacityContentOnSurfaceSelected,"Design system"),borderRadius:le.FtCssVariableFactory.create("--ft-ripple-border-radius","","SIZE","0px")},us=le.FtCssVariableFactory.extend("--ft-ripple-color","",le.designSystemVariables.colorPrimary),fs={color:us,backgroundColor:le.FtCssVariableFactory.extend("--ft-ripple-background-color","",us)},hs=le.FtCssVariableFactory.extend("--ft-ripple-color","",le.designSystemVariables.colorSecondary),ys={color:hs,backgroundColor:le.FtCssVariableFactory.extend("--ft-ripple-background-color","",hs)},gs=ms.css`
    :host {
        display: contents;
    }

    .ft-ripple {
        position: absolute;
        inset: 0;
        pointer-events: none;
    }

    .ft-ripple:not(.ft-ripple--unbounded) {
        overflow: hidden;
        border-radius: ${E.borderRadius};
    }

    .ft-ripple .ft-ripple--background,
    .ft-ripple .ft-ripple--effect {
        position: absolute;
        opacity: 0;
    }

    .ft-ripple .ft-ripple--effect {
        aspect-ratio: 1;
        width: auto;
        height: auto;
        min-width: 170%;
        min-height: 170%;
    }

    .ft-ripple .ft-ripple--background{
        width: 100%;
        height: 100%;
    }

    .ft-ripple.ft-ripple--unbounded .ft-ripple--effect,
    .ft-ripple.ft-ripple--unbounded .ft-ripple--background {
        aspect-ratio: 1;
        width: auto;
        height: auto;
        max-width: unset;
        max-height: unset;
        min-width: 100%;
        min-height: 100%;
    }

    .ft-ripple .ft-ripple--background {
        background-color: ${E.backgroundColor};
    }

    .ft-ripple .ft-ripple--effect {
        background-color: ${E.color};
    }

    .ft-ripple.ft-ripple--secondary .ft-ripple--background {
        background-color: ${ys.backgroundColor};
    }

    .ft-ripple.ft-ripple--secondary .ft-ripple--effect {
        background-color: ${ys.color};
    }

    .ft-ripple.ft-ripple--primary .ft-ripple--background {
        background-color: ${fs.backgroundColor};
    }

    .ft-ripple.ft-ripple--primary .ft-ripple--effect {
        background-color: ${fs.color};
    }

    .ft-ripple .ft-ripple--background {
        top: 0;
        left: 0;
        transition: opacity 75ms linear;
    }

    .ft-ripple .ft-ripple--effect,
    .ft-ripple.ft-ripple--unbounded .ft-ripple--background {
        border-radius: 50%;
    }

    .ft-ripple .ft-ripple--effect {
        transform: translate(-50%, -50%) scale(0.15);
        transition: transform 300ms ease, opacity 75ms linear;
    }

    .ft-ripple.ft-ripple--unbounded .ft-ripple--effect,
    .ft-ripple.ft-ripple--unbounded .ft-ripple--background {
        left: 50%;
        top: 50%;
    }

    .ft-ripple.ft-ripple--unbounded .ft-ripple--background {
        transform: translate(-50%, -50%);
    }

    .ft-ripple.ft-ripple--hovered .ft-ripple--background {
        opacity: ${E.opacityContentOnSurfaceHover};
    }

    .ft-ripple.ft-ripple--selected .ft-ripple--background {
        opacity: ${E.opacityContentOnSurfaceSelected};
    }

    .ft-ripple.ft-ripple--focused .ft-ripple--background {
        opacity: ${E.opacityContentOnSurfaceFocused};
    }

    .ft-ripple.ft-ripple--pressed .ft-ripple--effect {
        opacity: ${E.opacityContentOnSurfacePressed};
        transform: translate(-50%, -50%) scale(1);
    }
`;var bs=g(D()),so=g(N()),q={color:so.FtCssVariableFactory.extend("--ft-loader-color","",so.designSystemVariables.colorPrimary),size:so.FtCssVariableFactory.create("--ft-loader-size","","SIZE","80px")},xs=bs.css`
    :host {
        line-height: 0;
    }

    .ft-loader {
        display: inline-block;
        position: relative;

        width: ${q.size};
        height: ${q.size};
    }

    .ft-loader div {
        position: absolute;
        top: 37.5%;
        width: 25%;
        height: 25%;
        border-radius: 50%;
        background: ${q.color};
        animation-timing-function: cubic-bezier(0, 1, 1, 0);
    }

    .ft-loader div:nth-child(1) {
        left: 2.5%;
        animation: appear 0.6s infinite;
    }

    .ft-loader div:nth-child(2) {
        left: 2.5%;
        animation: move 0.6s infinite;
    }

    .ft-loader div:nth-child(3) {
        left: 37.5%;
        animation: move 0.6s infinite;
    }

    .ft-loader div:nth-child(4) {
        left: 72.5%;
        animation: disappear 0.6s infinite;
    }

    @keyframes appear {
        0% {
            transform: scale(0);
        }
        100% {
            transform: scale(1);
        }
    }

    @keyframes disappear {
        0% {
            transform: scale(1);
        }
        100% {
            transform: scale(0);
        }
    }

    @keyframes move {
        0% {
            transform: translate(0, 0);
        }
        100% {
            transform: translate(calc(0.35 * ${q.size}), 0);
        }
    }
`;var vs=g(D()),lt=g(N()),$e={size:lt.FtCssVariableFactory.create("--ft-icon-font-size","","SIZE","24px"),fluidTopicsFontFamily:lt.FtCssVariableFactory.extend("--ft-icon-fluid-topics-font-family","",lt.FtCssVariableFactory.create("--ft-icon-font-family","","UNKNOWN","ft-icons")),fileFormatFontFamily:lt.FtCssVariableFactory.extend("--ft-icon-file-format-font-family","",lt.FtCssVariableFactory.create("--ft-icon-font-family","","UNKNOWN","ft-mime")),materialFontFamily:lt.FtCssVariableFactory.extend("--ft-icon-material-font-family","",lt.FtCssVariableFactory.create("--ft-icon-font-family","","UNKNOWN","Material Icons")),verticalAlign:lt.FtCssVariableFactory.create("--ft-icon-vertical-align","","UNKNOWN","unset")},Ss=[vs.css`
        :host, i.ft-icon {
            display: inline-flex;
            align-items: center;
            flex-shrink: 0;
            flex-grow: 0;
        }

        :host {
            width: ${$e.size};
            height: ${$e.size};
        }

        i.ft-icon {
            width: 100%;
            height: 100%;
            font-size: ${$e.size};
            line-height: 1;
            font-weight: normal;
            text-transform: none;
            font-style: normal;
            font-variant: normal;
            speak: none;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            vertical-align: ${$e.verticalAlign};
        }

        i.ft-icon.ft-icon--fluid-topics {
            font-family: ${$e.fluidTopicsFontFamily}, ft-icons, fticons, sans-serif;

            /* Ugly fix because font is broken */
            font-size: calc(0.75 * ${$e.size});
            line-height: ${$e.size};
            position: relative;
            top: -4%;
            justify-content: center;
        }

        .ft-icon--file-format {
            font-family: ${$e.fileFormatFontFamily}, ft-mime, sans-serif;
        }

        .ft-icon--material {
            font-family: ${$e.materialFontFamily}, "Material Icons", sans-serif;
        }
    `,lt.noTextSelect];var Os=$.FtCssVariableFactory.extend("--ft-button-color","",$.designSystemVariables.colorPrimary),B={backgroundColor:$.FtCssVariableFactory.extend("--ft-button-background-color","",$.designSystemVariables.colorSurface),borderRadius:$.FtCssVariableFactory.extend("--ft-button-border-radius","",$.designSystemVariables.borderRadiusL),color:Os,fontSize:$.FtCssVariableFactory.extend("--ft-button-font-size","",bt.fontSize),iconSize:$.FtCssVariableFactory.create("--ft-button-icon-size","","SIZE","24px"),rippleColor:$.FtCssVariableFactory.extend("--ft-button-ripple-color","",Os),verticalPadding:$.FtCssVariableFactory.create("--ft-button-vertical-padding","","SIZE","6px"),horizontalPadding:$.FtCssVariableFactory.create("--ft-button-horizontal-padding","","SIZE","8px"),iconPadding:$.FtCssVariableFactory.create("--ft-button-icon-padding","","SIZE","8px"),opacityDisabled:$.FtCssVariableFactory.external($.designSystemVariables.colorOpacityDisabled,"Design system")},Cs=$.FtCssVariableFactory.extend("--ft-button-primary-color","",$.FtCssVariableFactory.extend("--ft-button-color","",$.designSystemVariables.colorOnPrimary)),Qn={backgroundColor:$.FtCssVariableFactory.extend("--ft-button-primary-background-color","",$.FtCssVariableFactory.extend("--ft-button-background-color","",$.designSystemVariables.colorPrimary)),color:Cs,rippleColor:$.FtCssVariableFactory.extend("--ft-button-primary-ripple-color","",Cs)},xt={borderRadius:$.FtCssVariableFactory.extend("--ft-button-dense-border-radius","",$.FtCssVariableFactory.extend("--ft-button-border-radius","",$.designSystemVariables.borderRadiusM)),verticalPadding:$.FtCssVariableFactory.create("--ft-button-dense-vertical-padding","","SIZE","2px"),horizontalPadding:$.FtCssVariableFactory.create("--ft-button-dense-horizontal-padding","","SIZE","4px"),iconPadding:$.FtCssVariableFactory.create("--ft-button-dense-icon-padding","","SIZE","4px")},ws=[Es.css`
        :host {
            display: inline-block;
            max-width: 100%;
            pointer-events: none;
        }

        .ft-button {
            box-shadow: 0px 0px 0px transparent;
            border: 0px solid transparent;
            text-shadow: 0px 0px 0px transparent;
            font-size: ${B.fontSize};
            text-decoration: none;
        }

        .ft-button:hover {
            box-shadow: 0px 0px 0px transparent;
            border: 0px solid transparent;
            text-shadow: 0px 0px 0px transparent;
        }

        .ft-button:active {
            outline: none;
            border: none;
        }

        .ft-button:focus {
            outline: 0;
        }

        .ft-button {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            overflow: hidden;
            box-sizing: border-box;
            border: none;
            pointer-events: auto;

            --ft-button-internal-line-height: max(calc(${B.fontSize} + 2px), ${B.iconSize});
            --ft-button-internal-color: ${B.color};
            ${(0,$.setVariable)($e.size,B.iconSize)};
            ${(0,$.setVariable)(E.color,B.rippleColor)};

            border-radius: ${B.borderRadius};
            padding: ${B.verticalPadding} ${B.horizontalPadding};
            background-color: ${B.backgroundColor};
            color: var(--ft-button-internal-color);
            -webkit-mask-image: radial-gradient(white, black);
        }

        .ft-button.ft-button--outlined {
            border: 1px solid var(--ft-button-internal-color);
            padding: calc(${B.verticalPadding} - 1px) calc(${B.horizontalPadding} - 1px);
        }

        .ft-button.ft-button--dense {
            padding: ${xt.verticalPadding} ${xt.horizontalPadding};
            border-radius: ${xt.borderRadius};
            gap: ${xt.iconPadding};
        }

        .ft-button.ft-button--dense.ft-button--outlined {
            padding: calc(${xt.verticalPadding} - 1px) calc(${xt.horizontalPadding} - 1px);
        }

        .ft-button:not([disabled]):hover {
            cursor: pointer;
        }

        .ft-button--round {
            border-radius: calc(var(--ft-button-internal-line-height) / 2 + ${B.verticalPadding});
        }

        .ft-button--round.ft-button--dense {
            border-radius: calc(var(--ft-button-internal-line-height) / 2 + ${xt.verticalPadding});
        }

        .ft-button[disabled] {
            filter: grayscale(1);
            opacity: ${B.opacityDisabled};
        }

        .ft-button.ft-button--primary {
            background-color: ${Qn.backgroundColor};
            --ft-button-internal-color: ${Qn.color};
            ${(0,$.setVariable)(E.color,Qn.rippleColor)};
        }

        .ft-button:focus {
            outline: none;
        }

        .ft-button--label {
            position: relative;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: block;
            margin: 0 ${B.iconPadding};
            ${(0,$.setVariable)(bt.fontSize,"1em")};
            ${(0,$.setVariable)(bt.lineHeight,"var(--ft-button-internal-line-height)")};
        }

        .ft-button--dense .ft-button--label {
            margin: 0 ${xt.iconPadding};
        }

        .ft-button--label[hidden] {
            display: none;
        }

        [part="icon"] {
            flex-shrink: 0;
            position: relative;
        }

        .ft-button--label[hidden] + [part="icon"] {
            margin: 0 calc(${B.horizontalPadding} * -1);
            padding: 0 ${B.verticalPadding};
        }

        .ft-button--dense .ft-button--label[hidden] + [part="icon"] {
            margin: 0 calc(${xt.horizontalPadding} * -1);
            padding: 0 ${xt.verticalPadding};
        }

        .ft-button:not(.ft-button--trailing-icon) [part="label"]{
            order: 2;
        }

        ft-loader {
            ${(0,$.setVariable)(q.size,B.iconSize)};
            ${(0,$.setVariable)(q.color,"var(--ft-button-internal-color)")};
        }
    `,$.noTextSelect];var qt=g(N());var Ts=g(N());var Rs=g(D()),Se=g(V()),Ns=g(pr()),lo=g(N());var We=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},H=class extends lo.FtLitElement{constructor(){super(...arguments),this.primary=!1,this.secondary=!1,this.unbounded=!1,this.activated=!1,this.selected=!1,this.disabled=!1,this.hovered=!1,this.focused=!1,this.pressed=!1,this.rippling=!1,this.originX=0,this.originY=0,this.debouncer=new lo.Debouncer(1e3),this.onTransitionStart=e=>{e.propertyName==="transform"&&(this.rippling=this.pressed,this.debouncer.run(()=>this.rippling=!1))},this.onTransitionEnd=e=>{e.propertyName==="transform"&&(this.rippling=!1)},this.setupDebouncer=new lo.Debouncer(10),this.moveRipple=e=>{var o,n;let{x:a,y:i}=this.getCoordinates(e),s=(n=(o=this.ripple)===null||o===void 0?void 0:o.getBoundingClientRect())!==null&&n!==void 0?n:{x:0,y:0,width:0,height:0};this.originX=Math.round(a!=null?a-s.x:s.width/2),this.originY=Math.round(i!=null?i-s.y:s.height/2)},this.startPress=e=>{this.moveRipple(e),this.pressed=!this.isIgnored(e)},this.endPress=()=>{this.pressed=!1},this.startHover=e=>{this.hovered=!this.isIgnored(e)},this.endHover=()=>{this.hovered=!1},this.startFocus=e=>{this.focused=this.isFocusVisible(e?.target)&&!this.isIgnored(e)},this.endFocus=()=>{this.focused=!1}}render(){let e={"ft-ripple":!0,"ft-ripple--primary":this.primary,"ft-ripple--secondary":this.secondary,"ft-ripple--unbounded":this.unbounded,"ft-ripple--selected":(this.selected||this.activated)&&!this.disabled,"ft-ripple--pressed":(this.pressed||this.rippling)&&!this.disabled,"ft-ripple--hovered":this.hovered&&!this.disabled,"ft-ripple--focused":this.focused&&!this.disabled};return Rs.html`
            <style>
                .ft-ripple .ft-ripple--effect {
                    left: ${this.originX}px;
                    top: ${this.originY}px;
                }
            </style>
            <div class="${(0,Ns.classMap)(e)}">
                <div class="ft-ripple--background"></div>
                <div class="ft-ripple--effect"></div>
            </div>
        `}contentAvailableCallback(e){super.contentAvailableCallback(e),this.rippleEffect&&this.rippleEffect.ontransitionstart!==this.onTransitionStart&&(this.rippleEffect.ontransitionstart=this.onTransitionStart,this.rippleEffect.ontransitionend=this.onTransitionEnd)}update(e){var o,n;super.update(e),e.has("disabled")&&(this.disabled?(this.endRipple(),(o=this.target)===null||o===void 0||o.removeAttribute("data-is-ft-ripple-target")):(n=this.target)===null||n===void 0||n.setAttribute("data-is-ft-ripple-target","true"))}endRipple(){this.endHover(),this.endFocus(),this.endPress(),this.rippling=!1}connectedCallback(){super.connectedCallback(),this.setupDebouncer.run(()=>this.defaultSetup())}defaultSetup(){var e,o;let n=(e=this.shadowRoot)===null||e===void 0?void 0:e.host.parentElement;n&&this.setupFor((o=this.target)!==null&&o!==void 0?o:n)}forceFocusUpdate(){var e;!((e=this.target)===null||e===void 0)&&e.matches(":focus-within")?this.startFocus():this.endFocus()}setupFor(e){if(this.setupDebouncer.cancel(),this.target===e)return;this.onDisconnect&&this.onDisconnect(),this.target=e,e.setAttribute("data-is-ft-ripple-target","true");let o=(...c)=>p=>{c.forEach(u=>window.addEventListener(u,this.endPress,{once:!0})),this.startPress(p)},n=o("mouseup","contextmenu"),a=o("touchend","touchcancel"),i=c=>{["Enter"," "].includes(c.key)&&o("keyup")(c)},s={passive:!0};e.addEventListener("mouseover",this.startHover,s),e.addEventListener("mousemove",this.moveRipple,s),e.addEventListener("mouseleave",this.endHover,s),e.addEventListener("mousedown",n,s),e.addEventListener("touchstart",a,s),e.addEventListener("touchmove",this.moveRipple,s),e.addEventListener("keydown",i,s),e.addEventListener("focus",this.startFocus,s),e.addEventListener("blur",this.endFocus,s),e.addEventListener("focusin",this.startFocus,s),e.addEventListener("focusout",this.endFocus,s),this.onDisconnect=()=>{e.removeAttribute("data-is-ft-ripple-target"),e.removeEventListener("mouseover",this.startHover,s),e.removeEventListener("mousemove",this.moveRipple,s),e.removeEventListener("mouseleave",this.endHover,s),e.removeEventListener("mousedown",n,s),e.removeEventListener("touchstart",a,s),e.removeEventListener("touchmove",this.moveRipple,s),e.removeEventListener("keydown",i,s),e.removeEventListener("focus",this.startFocus,s),e.removeEventListener("blur",this.endFocus,s),e.removeEventListener("focusin",this.startFocus,s),e.removeEventListener("focusout",this.endFocus,s),this.onDisconnect=void 0,this.target=void 0}}getCoordinates(e){let o=e,n=e,a,i;return o.x!=null?{x:a,y:i}=o:n.touches!=null&&(a=n.touches[0].clientX,i=n.touches[0].clientY),{x:a,y:i}}isFocusVisible(e){return e instanceof HTMLElement?e.matches(":focus-visible"):!0}isIgnored(e){if(this.disabled)return!0;if(e!=null)for(let o of e.composedPath()){if(o===this.target)break;if("hasAttribute"in o&&o.hasAttribute("data-is-ft-ripple-target"))return!0}return!1}disconnectedCallback(){super.disconnectedCallback(),this.onDisconnect&&this.onDisconnect(),this.endRipple()}};H.elementDefinitions={};H.styles=gs;We([(0,Se.property)({type:Boolean})],H.prototype,"primary",void 0);We([(0,Se.property)({type:Boolean})],H.prototype,"secondary",void 0);We([(0,Se.property)({type:Boolean})],H.prototype,"unbounded",void 0);We([(0,Se.property)({type:Boolean})],H.prototype,"activated",void 0);We([(0,Se.property)({type:Boolean})],H.prototype,"selected",void 0);We([(0,Se.property)({type:Boolean})],H.prototype,"disabled",void 0);We([(0,Se.state)()],H.prototype,"hovered",void 0);We([(0,Se.state)()],H.prototype,"focused",void 0);We([(0,Se.state)()],H.prototype,"pressed",void 0);We([(0,Se.state)()],H.prototype,"rippling",void 0);We([(0,Se.state)()],H.prototype,"originX",void 0);We([(0,Se.state)()],H.prototype,"originY",void 0);We([(0,Se.query)(".ft-ripple")],H.prototype,"ripple",void 0);We([(0,Se.query)(".ft-ripple--effect")],H.prototype,"rippleEffect",void 0);(0,Ts.customElement)("ft-ripple")(H);var nl=g(N());var ol=g(D()),de=g(V()),ho=g(N());var Ls=g(D()),Pt=g(N()),Dr={distance:Pt.FtCssVariableFactory.create("--ft-tooltip-distance","","SIZE","4px"),color:Pt.FtCssVariableFactory.create("--ft-tooltip-color","","COLOR","#FFFFFF"),backgroundColor:Pt.FtCssVariableFactory.create("--ft-tooltip-background-color","","COLOR","#666666"),zIndex:Pt.FtCssVariableFactory.create("--ft-tooltip-z-index","","NUMBER","100"),borderRadiusS:Pt.FtCssVariableFactory.external(Pt.designSystemVariables.borderRadiusS,"Design system"),maxWidth:Pt.FtCssVariableFactory.create("--ft-tooltip-max-width","","SIZE","150px")},Is=Ls.css`
    .ft-tooltip--container {
        display: block;
    }

    .ft-tooltip--inline {
        display: inline-block;
        max-width: 100%;
    }

    .ft-tooltip {
        position: fixed;
        box-sizing: border-box;
        overflow: hidden;
        width: max-content;
        max-width: ${Dr.maxWidth};
        text-align: center;
        padding: ${Dr.distance};
        z-index: ${Dr.zIndex};
    }

    .ft-tooltip--content {
        padding: 4px 8px;
        border-radius: ${Dr.borderRadiusS};
        background-color: ${Dr.backgroundColor};
        color: ${Dr.color};
        position: relative;
        word-break: break-word;
    }
`;var _s=["top","right","bottom","left"],Ps=["start","end"],ea=_s.reduce((t,e)=>t.concat(e,e+"-"+Ps[0],e+"-"+Ps[1]),[]),ks=Math.min,Ds=Math.max;var ep={left:"right",right:"left",bottom:"top",top:"bottom"},tp={start:"end",end:"start"};function ta(t,e,o){return Ds(t,ks(e,o))}function Uo(t,e){return typeof t=="function"?t(e):t}function $r(t){return t.split("-")[0]}function jt(t){return t.split("-")[1]}function ra(t){return t==="x"?"y":"x"}function oa(t){return t==="y"?"height":"width"}function zo(t){return["top","bottom"].includes($r(t))?"y":"x"}function na(t){return ra(zo(t))}function $s(t,e,o){o===void 0&&(o=!1);let n=jt(t),a=na(t),i=oa(a),s=a==="x"?n===(o?"end":"start")?"right":"left":n==="start"?"bottom":"top";return e.reference[i]>e.floating[i]&&(s=Jn(s)),[s,Jn(s)]}function Bs(t){return t.replace(/start|end/g,e=>tp[e])}function Jn(t){return t.replace(/left|right|bottom|top/g,e=>ep[e])}function rp(t){return{top:0,right:0,bottom:0,left:0,...t}}function Fs(t){return typeof t!="number"?rp(t):{top:t,right:t,bottom:t,left:t}}function ur(t){let{x:e,y:o,width:n,height:a}=t;return{width:n,height:a,top:o,left:e,right:e+n,bottom:o+a,x:e,y:o}}function Ms(t,e,o){let{reference:n,floating:a}=t,i=zo(e),s=na(e),c=oa(s),p=$r(e),u=i==="y",m=n.x+n.width/2-a.width/2,y=n.y+n.height/2-a.height/2,b=n[c]/2-a[c]/2,S;switch(p){case"top":S={x:m,y:n.y-a.height};break;case"bottom":S={x:m,y:n.y+n.height};break;case"right":S={x:n.x+n.width,y};break;case"left":S={x:n.x-a.width,y};break;default:S={x:n.x,y:n.y}}switch(jt(e)){case"start":S[s]-=b*(o&&u?-1:1);break;case"end":S[s]+=b*(o&&u?-1:1);break}return S}var Us=async(t,e,o)=>{let{placement:n="bottom",strategy:a="absolute",middleware:i=[],platform:s}=o,c=i.filter(Boolean),p=await(s.isRTL==null?void 0:s.isRTL(e)),u=await s.getElementRects({reference:t,floating:e,strategy:a}),{x:m,y}=Ms(u,n,p),b=n,S={},v=0;for(let O=0;O<c.length;O++){let{name:P,fn:T}=c[O],{x:L,y:k,data:F,reset:M}=await T({x:m,y,initialPlacement:n,placement:b,strategy:a,middlewareData:S,rects:u,platform:s,elements:{reference:t,floating:e}});m=L??m,y=k??y,S={...S,[P]:{...S[P],...F}},M&&v<=50&&(v++,typeof M=="object"&&(M.placement&&(b=M.placement),M.rects&&(u=M.rects===!0?await s.getElementRects({reference:t,floating:e,strategy:a}):M.rects),{x:m,y}=Ms(u,b,p)),O=-1)}return{x:m,y,placement:b,strategy:a,middlewareData:S}};async function aa(t,e){var o;e===void 0&&(e={});let{x:n,y:a,platform:i,rects:s,elements:c,strategy:p}=t,{boundary:u="clippingAncestors",rootBoundary:m="viewport",elementContext:y="floating",altBoundary:b=!1,padding:S=0}=Uo(e,t),v=Fs(S),P=c[b?y==="floating"?"reference":"floating":y],T=ur(await i.getClippingRect({element:(o=await(i.isElement==null?void 0:i.isElement(P)))==null||o?P:P.contextElement||await(i.getDocumentElement==null?void 0:i.getDocumentElement(c.floating)),boundary:u,rootBoundary:m,strategy:p})),L=y==="floating"?{x:n,y:a,width:s.floating.width,height:s.floating.height}:s.reference,k=await(i.getOffsetParent==null?void 0:i.getOffsetParent(c.floating)),F=await(i.isElement==null?void 0:i.isElement(k))?await(i.getScale==null?void 0:i.getScale(k))||{x:1,y:1}:{x:1,y:1},M=ur(i.convertOffsetParentRelativeRectToViewportRelativeRect?await i.convertOffsetParentRelativeRectToViewportRelativeRect({elements:c,rect:L,offsetParent:k,strategy:p}):L);return{top:(T.top-M.top+v.top)/F.y,bottom:(M.bottom-T.bottom+v.bottom)/F.y,left:(T.left-M.left+v.left)/F.x,right:(M.right-T.right+v.right)/F.x}}function op(t,e,o){return(t?[...o.filter(a=>jt(a)===t),...o.filter(a=>jt(a)!==t)]:o.filter(a=>$r(a)===a)).filter(a=>t?jt(a)===t||(e?Bs(a)!==a:!1):!0)}var ia=function(t){return t===void 0&&(t={}),{name:"autoPlacement",options:t,async fn(e){var o,n,a;let{rects:i,middlewareData:s,placement:c,platform:p,elements:u}=e,{crossAxis:m=!1,alignment:y,allowedPlacements:b=ea,autoAlignment:S=!0,...v}=Uo(t,e),O=y!==void 0||b===ea?op(y||null,S,b):b,P=await aa(e,v),T=((o=s.autoPlacement)==null?void 0:o.index)||0,L=O[T];if(L==null)return{};let k=$s(L,i,await(p.isRTL==null?void 0:p.isRTL(u.floating)));if(c!==L)return{reset:{placement:O[0]}};let F=[P[$r(L)],P[k[0]],P[k[1]]],M=[...((n=s.autoPlacement)==null?void 0:n.overflows)||[],{placement:L,overflows:F}],He=O[T+1];if(He)return{data:{index:T+1,overflows:M},reset:{placement:He}};let mt=M.map(xe=>{let h=jt(xe.placement);return[xe.placement,h&&m?xe.overflows.slice(0,2).reduce((x,_)=>x+_,0):xe.overflows[0],xe.overflows]}).sort((xe,h)=>xe[1]-h[1]),gt=((a=mt.filter(xe=>xe[2].slice(0,jt(xe[0])?2:3).every(h=>h<=0))[0])==null?void 0:a[0])||mt[0][0];return gt!==c?{data:{index:T+1,overflows:M},reset:{placement:gt}}:{}}}};var sa=function(t){return t===void 0&&(t={}),{name:"shift",options:t,async fn(e){let{x:o,y:n,placement:a}=e,{mainAxis:i=!0,crossAxis:s=!1,limiter:c={fn:P=>{let{x:T,y:L}=P;return{x:T,y:L}}},...p}=Uo(t,e),u={x:o,y:n},m=await aa(e,p),y=zo($r(a)),b=ra(y),S=u[b],v=u[y];if(i){let P=b==="y"?"top":"left",T=b==="y"?"bottom":"right",L=S+m[P],k=S-m[T];S=ta(L,S,k)}if(s){let P=y==="y"?"top":"left",T=y==="y"?"bottom":"right",L=v+m[P],k=v-m[T];v=ta(L,v,k)}let O=c.fn({...e,[b]:S,[y]:v});return{...O,data:{x:O.x-o,y:O.y-n,enabled:{[b]:i,[y]:s}}}}}};var la=Math.min,Br=Math.max,co=Math.round;var _t=t=>({x:t,y:t});function kt(t){return Hs(t)?(t.nodeName||"").toLowerCase():"#document"}function Ve(t){var e;return(t==null||(e=t.ownerDocument)==null?void 0:e.defaultView)||window}function Dt(t){var e;return(e=(Hs(t)?t.ownerDocument:t.document)||window.document)==null?void 0:e.documentElement}function Hs(t){return t instanceof Node||t instanceof Ve(t).Node}function vt(t){return t instanceof Element||t instanceof Ve(t).Element}function ct(t){return t instanceof HTMLElement||t instanceof Ve(t).HTMLElement}function zs(t){return typeof ShadowRoot>"u"?!1:t instanceof ShadowRoot||t instanceof Ve(t).ShadowRoot}function Fr(t){let{overflow:e,overflowX:o,overflowY:n,display:a}=Je(t);return/auto|scroll|overlay|hidden|clip/.test(e+n+o)&&!["inline","contents"].includes(a)}function Ws(t){return["table","td","th"].includes(kt(t))}function Wo(t){let e=Vo(),o=Je(t);return o.transform!=="none"||o.perspective!=="none"||(o.containerType?o.containerType!=="normal":!1)||!e&&(o.backdropFilter?o.backdropFilter!=="none":!1)||!e&&(o.filter?o.filter!=="none":!1)||["transform","perspective","filter"].some(n=>(o.willChange||"").includes(n))||["paint","layout","strict","content"].some(n=>(o.contain||"").includes(n))}function Vs(t){let e=fr(t);for(;ct(e)&&!po(e);){if(Wo(e))return e;e=fr(e)}return null}function Vo(){return typeof CSS>"u"||!CSS.supports?!1:CSS.supports("-webkit-backdrop-filter","none")}function po(t){return["html","body","#document"].includes(kt(t))}function Je(t){return Ve(t).getComputedStyle(t)}function uo(t){return vt(t)?{scrollLeft:t.scrollLeft,scrollTop:t.scrollTop}:{scrollLeft:t.pageXOffset,scrollTop:t.pageYOffset}}function fr(t){if(kt(t)==="html")return t;let e=t.assignedSlot||t.parentNode||zs(t)&&t.host||Dt(t);return zs(e)?e.host:e}function Gs(t){let e=fr(t);return po(e)?t.ownerDocument?t.ownerDocument.body:t.body:ct(e)&&Fr(e)?e:Gs(e)}function Ho(t,e,o){var n;e===void 0&&(e=[]),o===void 0&&(o=!0);let a=Gs(t),i=a===((n=t.ownerDocument)==null?void 0:n.body),s=Ve(a);return i?e.concat(s,s.visualViewport||[],Fr(a)?a:[],s.frameElement&&o?Ho(s.frameElement):[]):e.concat(a,Ho(a,[],o))}function Zs(t){let e=Je(t),o=parseFloat(e.width)||0,n=parseFloat(e.height)||0,a=ct(t),i=a?t.offsetWidth:o,s=a?t.offsetHeight:n,c=co(o)!==i||co(n)!==s;return c&&(o=i,n=s),{width:o,height:n,$:c}}function qs(t){return vt(t)?t:t.contextElement}function Mr(t){let e=qs(t);if(!ct(e))return _t(1);let o=e.getBoundingClientRect(),{width:n,height:a,$:i}=Zs(e),s=(i?co(o.width):o.width)/n,c=(i?co(o.height):o.height)/a;return(!s||!Number.isFinite(s))&&(s=1),(!c||!Number.isFinite(c))&&(c=1),{x:s,y:c}}var ip=_t(0);function Ys(t){let e=Ve(t);return!Vo()||!e.visualViewport?ip:{x:e.visualViewport.offsetLeft,y:e.visualViewport.offsetTop}}function sp(t,e,o){return e===void 0&&(e=!1),!o||e&&o!==Ve(t)?!1:e}function fo(t,e,o,n){e===void 0&&(e=!1),o===void 0&&(o=!1);let a=t.getBoundingClientRect(),i=qs(t),s=_t(1);e&&(n?vt(n)&&(s=Mr(n)):s=Mr(t));let c=sp(i,o,n)?Ys(i):_t(0),p=(a.left+c.x)/s.x,u=(a.top+c.y)/s.y,m=a.width/s.x,y=a.height/s.y;if(i){let b=Ve(i),S=n&&vt(n)?Ve(n):n,v=b.frameElement;for(;v&&n&&S!==b;){let O=Mr(v),P=v.getBoundingClientRect(),T=Je(v),L=P.left+(v.clientLeft+parseFloat(T.paddingLeft))*O.x,k=P.top+(v.clientTop+parseFloat(T.paddingTop))*O.y;p*=O.x,u*=O.y,m*=O.x,y*=O.y,p+=L,u+=k,v=Ve(v).frameElement}}return ur({width:m,height:y,x:p,y:u})}function lp(t){let{rect:e,offsetParent:o,strategy:n}=t,a=ct(o),i=Dt(o);if(o===i)return e;let s={scrollLeft:0,scrollTop:0},c=_t(1),p=_t(0);if((a||!a&&n!=="fixed")&&((kt(o)!=="body"||Fr(i))&&(s=uo(o)),ct(o))){let u=fo(o);c=Mr(o),p.x=u.x+o.clientLeft,p.y=u.y+o.clientTop}return{width:e.width*c.x,height:e.height*c.y,x:e.x*c.x-s.scrollLeft*c.x+p.x,y:e.y*c.y-s.scrollTop*c.y+p.y}}function cp(t){return Array.from(t.getClientRects())}function Xs(t){return fo(Dt(t)).left+uo(t).scrollLeft}function dp(t){let e=Dt(t),o=uo(t),n=t.ownerDocument.body,a=Br(e.scrollWidth,e.clientWidth,n.scrollWidth,n.clientWidth),i=Br(e.scrollHeight,e.clientHeight,n.scrollHeight,n.clientHeight),s=-o.scrollLeft+Xs(t),c=-o.scrollTop;return Je(n).direction==="rtl"&&(s+=Br(e.clientWidth,n.clientWidth)-a),{width:a,height:i,x:s,y:c}}function pp(t,e){let o=Ve(t),n=Dt(t),a=o.visualViewport,i=n.clientWidth,s=n.clientHeight,c=0,p=0;if(a){i=a.width,s=a.height;let u=Vo();(!u||u&&e==="fixed")&&(c=a.offsetLeft,p=a.offsetTop)}return{width:i,height:s,x:c,y:p}}function up(t,e){let o=fo(t,!0,e==="fixed"),n=o.top+t.clientTop,a=o.left+t.clientLeft,i=ct(t)?Mr(t):_t(1),s=t.clientWidth*i.x,c=t.clientHeight*i.y,p=a*i.x,u=n*i.y;return{width:s,height:c,x:p,y:u}}function js(t,e,o){let n;if(e==="viewport")n=pp(t,o);else if(e==="document")n=dp(Dt(t));else if(vt(e))n=up(e,o);else{let a=Ys(t);n={...e,x:e.x-a.x,y:e.y-a.y}}return ur(n)}function Qs(t,e){let o=fr(t);return o===e||!vt(o)||po(o)?!1:Je(o).position==="fixed"||Qs(o,e)}function fp(t,e){let o=e.get(t);if(o)return o;let n=Ho(t,[],!1).filter(c=>vt(c)&&kt(c)!=="body"),a=null,i=Je(t).position==="fixed",s=i?fr(t):t;for(;vt(s)&&!po(s);){let c=Je(s),p=Wo(s);!p&&c.position==="fixed"&&(a=null),(i?!p&&!a:!p&&c.position==="static"&&!!a&&["absolute","fixed"].includes(a.position)||Fr(s)&&!p&&Qs(t,s))?n=n.filter(m=>m!==s):a=c,s=fr(s)}return e.set(t,n),n}function hp(t){let{element:e,boundary:o,rootBoundary:n,strategy:a}=t,s=[...o==="clippingAncestors"?fp(e,this._c):[].concat(o),n],c=s[0],p=s.reduce((u,m)=>{let y=js(e,m,a);return u.top=Br(y.top,u.top),u.right=la(y.right,u.right),u.bottom=la(y.bottom,u.bottom),u.left=Br(y.left,u.left),u},js(e,c,a));return{width:p.right-p.left,height:p.bottom-p.top,x:p.left,y:p.top}}function yp(t){return Zs(t)}function mp(t,e,o){let n=ct(e),a=Dt(e),i=o==="fixed",s=fo(t,!0,i,e),c={scrollLeft:0,scrollTop:0},p=_t(0);if(n||!n&&!i)if((kt(e)!=="body"||Fr(a))&&(c=uo(e)),n){let u=fo(e,!0,i,e);p.x=u.x+e.clientLeft,p.y=u.y+e.clientTop}else a&&(p.x=Xs(a));return{x:s.left+c.scrollLeft-p.x,y:s.top+c.scrollTop-p.y,width:s.width,height:s.height}}function Ks(t,e){return!ct(t)||Je(t).position==="fixed"?null:e?e(t):t.offsetParent}function Js(t,e){let o=Ve(t);if(!ct(t))return o;let n=Ks(t,e);for(;n&&Ws(n)&&Je(n).position==="static";)n=Ks(n,e);return n&&(kt(n)==="html"||kt(n)==="body"&&Je(n).position==="static"&&!Wo(n))?o:n||Vs(t)||o}var gp=async function(t){let{reference:e,floating:o,strategy:n}=t,a=this.getOffsetParent||Js,i=this.getDimensions;return{reference:mp(e,await a(o),n),floating:{x:0,y:0,...await i(o)}}};function bp(t){return Je(t).direction==="rtl"}var Go={convertOffsetParentRelativeRectToViewportRelativeRect:lp,getDocumentElement:Dt,getClippingRect:hp,getOffsetParent:Js,getElementRects:gp,getClientRects:cp,getDimensions:yp,getScale:Mr,isElement:vt,isRTL:bp};var el=(t,e,o)=>{let n=new Map,a={platform:Go,...o},i={...a.platform,_c:n};return Us(t,e,{...a,platform:i})};function tl(t){return xp(t)}function ca(t){return t.assignedSlot?t.assignedSlot:t.parentNode instanceof ShadowRoot?t.parentNode.host:t.parentNode}function xp(t){for(let e=t;e;e=ca(e))if(e instanceof Element&&getComputedStyle(e).display==="none")return null;for(let e=ca(t);e;e=ca(e)){if(!(e instanceof Element))continue;let o=getComputedStyle(e);if(o.display!=="contents"&&(o.position!=="static"||o.filter!=="none"||e.tagName==="BODY"))return e}return null}async function rl(t,e,o){return el(t,e,{platform:{...Go,getOffsetParent:n=>Go.getOffsetParent(n,tl)},middleware:[sa({crossAxis:!0}),ia({allowedPlacements:[o]})]})}var Ge=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},te=class extends ho.FtLitElement{constructor(){super(...arguments),this.text="",this.manual=!1,this.inline=!1,this.delay=500,this.position="bottom",this.visible=!1,this.validPositions=new Set(["top","bottom","left","right"]),this.hideDebounce=new ho.Debouncer,this.revealDebouncer=new ho.Debouncer}get validPosition(){return this.validPositions.has(this.position)?this.position:"bottom"}render(){return ol.html`
            <div part="container"
                 class="ft-tooltip--container ${this.inline?"ft-tooltip--inline":""}"
                 @mouseenter=${this.onHover}
                 @mouseleave=${this.onOut}
                 @focusin=${this.onHover}
                 @focusout=${this.onOut}
                 @touchstart=${this.onTouch}>
                <slot part="slot" @click=${this.onClick}></slot>
                <div part="tooltip" role="tooltip" inert
                     class="ft-tooltip ft-tooltip--${this.validPosition}"
                     ?hidden=${!this.visible}>
                    <div part="tooltip-content" class="ft-tooltip--content">
                        <slot name="text"></slot>
                        <ft-typography variant="caption" ?hidden=${!this.text}>${this.text}</ft-typography>
                    </div>
                </div>
            </div>
        `}updated(e){e.has("visible")&&this.visible&&this.resetTooltipContent(),super.updated(e)}contentAvailableCallback(e){super.contentAvailableCallback(e),["visible","text"].some(o=>e.has(o))&&this.visible&&this.positionTooltip()}async show(e){this.visible=!0,e!=null&&await this.hideDebounce.run(()=>{this.hide()},e)}async showTemporaryText(e,o){let n=this.manual;this.manual=!0;let a=this.text;this.text=e,await this.show(o),this.text=a,this.manual=n}hide(){this.visible=!1}toggle(){this.visible=!this.visible}get slottedElement(){var e;return((e=this.slotNodes)!==null&&e!==void 0?e:[]).filter(o=>o.nodeType==Node.ELEMENT_NODE)[0]}resetTooltipContent(){if(this.tooltip&&this.tooltipContent){let e=this.tooltipContent.style;switch(e.transition="none",this.validPosition){case"top":e.top=this.tooltip.clientHeight+"px",e.left="0";break;case"bottom":e.top=-this.tooltip.clientHeight+"px",e.left="0";break;case"left":e.top="0",e.left=this.tooltip.clientWidth+"px";break;case"right":e.top="0",e.left=-this.tooltip.clientWidth+"px";break}}}positionTooltip(){this.resetTooltipContent(),this.tooltip&&this.slottedElement&&(this.tooltip.style.left="",this.tooltip.style.top="",rl(this.slottedElement,this.tooltip,this.position).then(({x:e,y:o})=>{this.tooltip&&(this.tooltip.style.left=`${e}px`,this.tooltip.style.top=`${o}px`)})),this.revealDebouncer.run(()=>{this.tooltipContent&&(this.tooltipContent.style.transition="top var(--ft-transition-duration, 250ms), left var(--ft-transition-duration, 250ms)",this.tooltipContent.style.top="0",this.tooltipContent.style.left="0")},this.manual?0:this.delay)}onTouch(){this.manual||(this.show(),setTimeout(()=>window.addEventListener("touchstart",e=>{e.composedPath().includes(this.container)||this.onOut()},{once:!0}),100))}onHover(){this.manual||this.show()}onOut(){this.manual||(this.revealDebouncer.cancel(),this.hide())}onClick(){this.manual||(this.revealDebouncer.cancel(),this.hide())}correctOutOfWindowPixels(e,o){return Math.max(e,Math.min(0,-o))}};te.elementDefinitions={"ft-typography":K};te.styles=Is;Ge([(0,de.property)()],te.prototype,"text",void 0);Ge([(0,de.property)({type:Boolean})],te.prototype,"manual",void 0);Ge([(0,de.property)({type:Boolean})],te.prototype,"inline",void 0);Ge([(0,de.property)({type:Number})],te.prototype,"delay",void 0);Ge([(0,de.property)()],te.prototype,"position",void 0);Ge([(0,de.queryAssignedNodes)()],te.prototype,"slotNodes",void 0);Ge([(0,de.query)(".ft-tooltip--container")],te.prototype,"container",void 0);Ge([(0,de.query)(".ft-tooltip")],te.prototype,"tooltip",void 0);Ge([(0,de.query)(".ft-tooltip--content")],te.prototype,"tooltipContent",void 0);Ge([(0,de.state)()],te.prototype,"visible",void 0);Ge([(0,de.eventOptions)({passive:!0})],te.prototype,"onTouch",null);Ge([(0,de.eventOptions)({passive:!0})],te.prototype,"onHover",null);Ge([(0,de.eventOptions)({passive:!0})],te.prototype,"onOut",null);Ge([(0,de.eventOptions)({passive:!0})],te.prototype,"onClick",null);(0,nl.customElement)("ft-tooltip")(te);var cl=g(N());var yo=g(D()),Kt=g(V()),sl=g(N()),ll=g(il());var jo;(function(t){t.ADD_TO_PBK="&#xe800;",t.ALERT="&#xe801;",t.ADD_ALERT="&#xe802;",t.BACK_TO_SEARCH="&#xe803;",t.ADD_BOOKMARK="&#xe804;",t.BOOKMARK="&#xe805;",t.BOOKS="&#xe806;",t.MENU="&#xe807;",t.DOWNLOAD="&#xe808;",t.EDIT="&#xe809;",t.FEEDBACK="&#xe80a;",t.HOME="&#xe80b;",t.MODIFY_PBK="&#xe80c;",t.SCHEDULED="&#xe80d;",t.SEARCH="&#xe80e;",t.EXPORT="&#xe80f;",t.TOC="&#xe810;",t.WRITE_UGC="&#xe811;",t.TRASH="&#xe812;",t.USER="&#xe813;",t.EXTLINK="&#xe814;",t.CALENDAR="&#xe815;",t.OFFLINE="&#xe816;",t.BOOK="&#xe817;",t.DOWNLOAD_PLAIN="&#xe818;",t.CHECK="&#xe819;",t.STAR_PLAIN="&#xe900;",t.TOPICS="&#xe901;",t.DISC="&#xe902;",t.CIRCLE="&#xe903;",t.SHARED="&#xe904;",t.SORT_UNSORTED="&#xe905;",t.SORT_UP="&#xe906;",t.SORT_DOWN="&#xe907;",t.WORKING="&#xe908;",t.CLOSE="&#xe909;",t.ZOOM_OUT="&#xe90a;",t.ZOOM_IN="&#xe90b;",t.ZOOM_REALSIZE="&#xe90c;",t.ZOOM_FULLSCREEN="&#xe90d;",t.ADMIN_RESTRICTED="&#xe90e;",t.ADMIN="&#xe90f;",t.ADMIN_KHUB="&#xe910;",t.ADMIN_THEME="&#xe911;",t.ADMIN_USERS="&#xe912;",t.WARNING="&#xe913;",t.CONTEXT="&#xe914;",t.SEARCH_HOME="&#xe915;",t.STEPS="&#xe916;",t.ICON_EXPAND="&#xe917;",t.ICON_COLLAPSE="&#xe918;",t.INFO="&#xe919;",t.MINUS_PLAIN="&#xe91a;",t.PLUS_PLAIN="&#xe91b;",t.FACET_HAS_DESCENDANT="&#xe91c;",t.TRIANGLE_BOTTOM="&#xe91d;",t.TRIANGLE_LEFT="&#xe91e;",t.TRIANGLE_RIGHT="&#xe91f;",t.TRIANGLE_TOP="&#xe920;",t.THIN_ARROW="&#xe921;",t.SIGN_IN="&#xe922;",t.LOGOUT="&#xe923;",t.TRANSLATE="&#xe924;",t.CLOSE_PLAIN="&#xe925;",t.CHECK_PLAIN="&#xe926;",t.ARTICLE="&#xe927;",t.COLUMNS="&#xe928;",t.ANALYTICS="&#xe929;",t.COLLECTIONS="&#xe92a;",t.ARROW_DOWN="&#xe92b;",t.ARROW_LEFT="&#xe92c;",t.ARROW_RIGHT="&#xe92d;",t.ARROW_UP="&#xe92e;",t.SEARCH_IN_PUBLICATION="&#xe92f;",t.COPY_TO_CLIPBOARD="&#xe930;",t.SHARED_PBK="&#xe931;",t.ATTACHMENTS="&#xe932;",t.STRIPE_ARROW_LEFT="&#xe933;",t.STRIPE_ARROW_RIGHT="&#xe934;",t.FILTERS="&#xe935;",t.DOT="&#xe936;",t.MINUS="&#xe937;",t.PLUS="&#xe938;",t.MAILS_AND_NOTIFICATIONS="&#xe939;",t.SAVE="&#xe93a;",t.LOCKER="&#xe93b;",t.ADMIN_INTEGRATION="&#xe93c;",t.SYNC="&#xe93d;",t.TAG="&#xe93e;",t.BOOK_PLAIN="&#xe93f;",t.UPLOAD="&#xe940;",t.ONLINE="&#xe941;",t.TAG_PLAIN="&#xe942;",t.ACCOUNT_SETTINGS="&#xe943;",t.PRINT="&#xe944;",t.DEFAULT_ROLES="&#xe945;",t.SHORTCUT_MENU="&#xe946;",t.RELATIVES_PLAIN="&#xe947;",t.RELATIVES="&#xe948;",t.PAUSE="&#xe949;",t.PLAY="&#xe94a;",t.ADMIN_PORTAL="&#xe94b;",t.STAR="&#xe94c;",t.THUMBS_DOWN="&#xe94d;",t.THUMBS_DOWN_PLAIN="&#xe94e;",t.THUMBS_UP="&#xe94f;",t.THUMBS_UP_PLAIN="&#xe950;",t.FEEDBACK_PLAIN="&#xe951;",t.RATE_PLAIN="&#xe952;",t.RATE="&#xe953;",t.OFFLINE_SETTINGS="&#xe954;",t.MY_COLLECTIONS="&#xe955;",t.THIN_ARROW_LEFT="&#xe956;",t.THIN_ARROW_RIGHT="&#xe957;",t.RESET="&#xe958;",t.MY_LIBRARY="&#xe959;",t.UNSTRUCTURED_DOC="&#xe95a;",t.CONTEXTUAL="&#xe95b;",t.THIN_ARROW_UP="&#xe95c;",t.ARROW_RIGHT_TO_LINE="&#xe95d;",t.DESKTOP="&#xe95e;",t.TABLET_LANDSCAPE="&#xe95f;",t.TABLET_PORTRAIT="&#xe960;",t.MOBILE_LANDSCAPE="&#xe961;",t.MOBILE_PORTRAIT="&#xe962;",t.DIAGRAM_SUNBURST="&#xe963;",t.DIAGRAM_SANKEY="&#xe964;",t.COMMENT_QUESTION="&#xe965;",t.COMMENT_QUESTION_PLAIN="&#xe966;",t.MESSAGE_BOT="&#xe967;",t.CHART_SIMPLE="&#xe968;",t.BARS_PROGRESS="&#xe969;",t.BOOK_OPEN_GEAR="&#xe96a;",t.BOOK_OPEN_GEAR_SLASH="&#xe96b;",t.LINE_CHART="&#xe96c;",t.STACKED_CHART="&#xe96d;",t.CHART_BAR_STACKED="&#xe96e;",t.CHART_BAR_GROUPED="&#xe96f;",t.EYE_SLASH="&#xe970;",t.X_MARK="&#xe971;",t.EXPAND_WIDE="&#xe972;",t.PIP="&#xe973;",t.PIP_WIDE="&#xe974;",t.LIFE_RING="&#xe975;",t.GLOBE="&#xe976;",t.PIGGY_BANK="&#xe977;",t.EXTLINK_LIGHT="&#xe978;",t.CLONE="&#xe979;",t.CLONE_LINK_SIMPLE="&#xe97a;",t.CHART_BAR_NORMALIZED="&#xe97b;",t.CONSUMER="&#xe97c;",t.OCTAGON_XMARK="&#xe97d;",t.HOURGLASS_HALF="&#xe97e;",t.CLOCK="&#xe97f;",t.CLOCK_THREE="&#xe97f;",t.CALENDAR_DAY="&#xe980;",t.COMPUTER_MOUSE_MAGNIFYING_GLASS="&#xe981;",t.WAND_MAGIC_SPARKLES="&#xe982;",t.PAPER_PLANE="&#xe983;",t.CIRCLE_STOP="&#xe984;",t.ARROW_ROTATE_RIGHT="&#xe985;",t.ARROWS_ROTATE="&#xe986;",t.ALIGN_RIGHT="&#xe987;",t.FORMAT_CLEAR="&#xe988;",t.ALIGN_CENTER="&#xe989;",t.ALIGN_LEFT="&#xe98a;",t.PALETTE="&#xe98b;",t.BOLD="&#xe98c;",t.ITALIC="&#xe98d;",t.UNDERLINE="&#xe98e;",t.STRIKETHROUGH="&#xe98f;",t.LINK_SIMPLE_SLASH="&#xe990;",t.LINK_SIMPLE="&#xe991;",t.ROUTE="&#xe992;",t.CIRCLE_USER_SLASH="&#xe993;",t.CIRCLE_USER_CHECK="&#xe994;",t.LIST_MAGNIFYING_GLASS="&#xe995;",t.MEDAL="&#xe996;",t.THUMBS_UP_THUMBS_DOWN_SOLID="&#xe997;",t.ARROW_TURN_DOWN_RIGHT="&#xe998;",t.FLASK="&#xe999;",t.LOCK_KEYHOLE_OPEN_SOLID="&#xe99a;",t.HOURGLASS_END="&#xe99b;",t.CIRCLE_QUESTION="&#xe99c;",t.GRIP_LINES_SOLID="&#xe99d;",t.TRANSLATE_SPARKLE_SOLID="&#xe99e;",t.CODE="&#xe99f;",t.ARROW_UP_RIGHT_AND_ARROW_DOWN_LEFT_FROM_CENTER="&#xe9a0;",t.PAPER_PLANE_SLASH="&#xe9a1;",t.COMPRESS="&#xe9a2;",t.EXPAND="&#xe9a3;",t.ARROW_ROTATE_LEFT="&#xe9a4;",t.EYE="&#xf06e;",t.SHARE="&#xe80f1;",t.MOBILE_SMALL="&#xe9a5;",t.SPARKLES="&#xe9a6;",t.HAND_SOLID="&#xe9a7;"})(jo||(jo={}));var w;(function(t){t.UNKNOWN="&#xe90a;",t.ABW="&#xe900;",t.AUDIO="&#xe901;",t.AVI="&#xe902;",t.CHM="&#xe904;",t.CODE="&#xe905;",t.CSV="&#xe903;",t.DITA="&#xe906;",t.EPUB="&#xe907;",t.EXCEL="&#xe908;",t.FLAC="&#xe909;",t.GIF="&#xe90b;",t.GZIP="&#xe90c;",t.HTML="&#xe90d;",t.IMAGE="&#xe90e;",t.JPEG="&#xe90f;",t.JSON="&#xe910;",t.M4A="&#xe911;",t.MOV="&#xe912;",t.MP3="&#xe913;",t.MP4="&#xe914;",t.OGG="&#xe915;",t.PDF="&#xe916;",t.PNG="&#xe917;",t.POWERPOINT="&#xe918;",t.RAR="&#xe91a;",t.STP="&#xe91b;",t.TEXT="&#xe91c;",t.VIDEO="&#xe91e;",t.WAV="&#xe91f;",t.WMA="&#xe920;",t.WORD="&#xe921;",t.XML="&#xe922;",t.YAML="&#xe919;",t.ZIP="&#xe923;"})(w||(w={}));var Zg=new Map([...["abw"].map(t=>[t,w.ABW]),...["3gp","act","aiff","aac","amr","au","awb","dct","dss","dvf","gsm","iklax","ivs","mmf","mpc","msv","opus","ra","rm","raw","sln","tta","vox","wv"].map(t=>[t,w.AUDIO]),...["avi"].map(t=>[t,w.AVI]),...["chm","xhs"].map(t=>[t,w.CHM]),...["java","py","php","php3","php4","php5","js","javascript","rb","rbw","c","cpp","cxx","h","hh","hpp","hxx","sh","bash","zsh","tcsh","ksh","csh","vb","scala","pl","prl","perl","groovy","ceylon","aspx","jsp","scpt","applescript","bas","bat","lua","jsp","mk","cmake","css","sass","less","m","mm","xcodeproj"].map(t=>[t,w.CODE]),...["csv"].map(t=>[t,w.CSV]),...["dita","ditamap","ditaval"].map(t=>[t,w.DITA]),...["epub"].map(t=>[t,w.EPUB]),...["xls","xlt","xlm","xlsx","xlsm","xltx","xltm","xlsb","xla","xlam","xll","xlw"].map(t=>[t,w.EXCEL]),...["flac"].map(t=>[t,w.FLAC]),...["gif"].map(t=>[t,w.GIF]),...["gzip","x-gzip","giz","gz","tgz"].map(t=>[t,w.GZIP]),...["html","htm","xhtml"].map(t=>[t,w.HTML]),...["ai","vml","xps","img","cpt","psd","psp","xcf","svg","svg+xml","bmp","bpg","ppm","pgm","pbm","pnm","rif","tif","tiff","webp","wmf","ico"].map(t=>[t,w.IMAGE]),...["jpeg","jpg","jpe"].map(t=>[t,w.JPEG]),...["json"].map(t=>[t,w.JSON]),...["m4a","m4p"].map(t=>[t,w.M4A]),...["mov","qt"].map(t=>[t,w.MOV]),...["mp3"].map(t=>[t,w.MP3]),...["mp4","m4v"].map(t=>[t,w.MP4]),...["ogg","oga"].map(t=>[t,w.OGG]),...["pdf","ps"].map(t=>[t,w.PDF]),...["png"].map(t=>[t,w.PNG]),...["ppt","pot","pps","pptx","pptm","potx","potm","ppam","ppsx","ppsm","sldx","sldm"].map(t=>[t,w.POWERPOINT]),...["rar"].map(t=>[t,w.RAR]),...["stp"].map(t=>[t,w.STP]),...["txt","rtf","md","mdown"].map(t=>[t,w.TEXT]),...["webm","mkv","flv","vob","ogv","ogg","drc","mng","wmv","yuv","rm","rmvb","asf","mpg","mp2","mpeg","mpe","mpv","m2v","svi","3gp","3g2","mxf","roq","nsv"].map(t=>[t,w.VIDEO]),...["wav"].map(t=>[t,w.WAV]),...["wma"].map(t=>[t,w.WMA]),...["doc","dot","docx","docm","dotx","dotm","docb"].map(t=>[t,w.WORD]),...["xml","xsl","rdf"].map(t=>[t,w.XML]),...["yaml","yml","x-yaml"].map(t=>[t,w.YAML]),...["zip"].map(t=>[t,w.ZIP])]);var qg={[w.ABW]:"#91ABC6",[w.AUDIO]:"#1795E3",[w.AVI]:"#E63324",[w.CHM]:"#71C3EB",[w.CODE]:"#71C3EB",[w.CSV]:"#1F7345",[w.DITA]:"#71C3EB",[w.EPUB]:"#85B926",[w.EXCEL]:"#1F7345",[w.FLAC]:"#1795E3",[w.GIF]:"#59B031",[w.GZIP]:"#F8AB36",[w.HTML]:"#71C3EB",[w.IMAGE]:"#59B031",[w.JPEG]:"#59B031",[w.JSON]:"#71C3EB",[w.M4A]:"#1795E3",[w.MOV]:"#E63324",[w.MP3]:"#1795E3",[w.MP4]:"#E63324",[w.OGG]:"#1795E3",[w.PDF]:"#E44948",[w.PNG]:"#59B031",[w.POWERPOINT]:"#B54A2B",[w.RAR]:"#F8AB36",[w.STP]:"#3764B1",[w.TEXT]:"#3162AB",[w.UNKNOWN]:"#999999",[w.VIDEO]:"#E63324",[w.WAV]:"#1795E3",[w.WMA]:"#1795E3",[w.WORD]:"#3162AB",[w.XML]:"#71C3EB",[w.YAML]:"#71C3EB",[w.ZIP]:"#F8AB36"};var St;(function(t){t.fluid_topics="fluid-topics",t.file_format="file-format",t.material="material"})(St||(St={}));var mo=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Be=class extends sl.FtLitElement{constructor(){super(...arguments),this.ariaHidden="true",this.resolvedIcon=yo.nothing}render(){let e=this.variant&&Object.values(St).includes(this.variant)?this.variant:St.fluid_topics,o=e!==St.material||!!this.value;return yo.html`
            <i class="ft-icon ft-icon--${e} ft-no-text-select" part="icon icon-${e}">
                ${(0,ll.unsafeHTML)(this.resolvedIcon)}
                <slot ?hidden=${o}></slot>
            </i>
        `}get textContent(){var e,o;return(o=(e=this.slottedContent)===null||e===void 0?void 0:e.assignedNodes().map(n=>n.textContent).join("").trim())!==null&&o!==void 0?o:""}update(e){super.update(e),["value","variant"].some(o=>e.has(o))&&this.resolveIcon()}resolveIcon(){var e,o;let n=this.value||this.textContent;switch(this.variant){case St.file_format:this.resolvedIcon=(e=w[n.replace("-","_").toUpperCase()])!==null&&e!==void 0?e:n;break;case St.material:this.resolvedIcon=this.value||yo.nothing;break;default:this.resolvedIcon=(o=jo[n.replace("-","_").toUpperCase()])!==null&&o!==void 0?o:n;break}}firstUpdated(e){super.firstUpdated(e),setTimeout(()=>this.resolveIcon())}};Be.elementDefinitions={};Be.styles=Ss;mo([(0,Kt.property)()],Be.prototype,"variant",void 0);mo([(0,Kt.property)()],Be.prototype,"value",void 0);mo([(0,Kt.property)({reflect:!0,attribute:"aria-hidden"})],Be.prototype,"ariaHidden",void 0);mo([(0,Kt.state)()],Be.prototype,"resolvedIcon",void 0);mo([(0,Kt.query)("slot")],Be.prototype,"slottedContent",void 0);(0,cl.customElement)("ft-icon")(Be);var ul=g(N());var dl=g(D()),pl=g(N());var hr=class extends pl.FtLitElement{render(){return dl.html`
            <div class="ft-loader">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        `}};hr.styles=xs;(0,ul.customElement)("ft-loader")(hr);var Zt=g(D()),da=g(pr()),pe=g(V()),Oe=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Y=class extends(0,qt.toFtFormComponent)(qt.FtLitElement,"button"){get buttonClasses(){return{}}get typographyVariant(){return""}constructor(){super(),this.href=void 0,this.target=void 0,this.role="button",this.type="button",this.disabled=!1,this.label="",this.icon=void 0,this.trailingIcon=!1,this.loading=!1,this.ariaLabel=null,this.tooltipPosition="bottom",this.hideTooltip=!1,this.forceTooltip=!1,this.addEventListener("click",e=>{var o;this.isDisabled()?(e.preventDefault(),e.stopPropagation(),e.stopImmediatePropagation()):this.type=="submit"&&((o=this.form)===null||o===void 0||o.requestSubmit())})}render(){var e,o,n;let a=Zt.html`
            <ft-ripple part="ripple" ?disabled=${this.isDisabled()}></ft-ripple>
            <ft-typography part="label"
                           variant=${this.typographyVariant}
                           element="span"
                           class="ft-button--label ${qt.isSafari?"ft-safari-ellipsis-fix":""}"
                           ?hidden=${!this.hasTextContent()}>
                <slot @slotchange=${this.onSlotchange}></slot>
            </ft-typography>
            ${this.resolveIcon()}
        `,i=this.href!=null&&this.href.trim().length>0?this.href:void 0;return this.addTooltipIfNeeded(i?Zt.html`
            <a href="${i}"
               target="${(e=this.target)!==null&&e!==void 0?e:"_self"}"
               part="button"
               class="${(0,da.classMap)(this.buttonClasses)}"
               aria-label="${(o=this.ariaLabel)!==null&&o!==void 0?o:this.getLabel()}"
               ?disabled=${this.isDisabled()}>
                ${a}
            </a>
        `:Zt.html`
            <button part="button"
                    class="${(0,da.classMap)(this.buttonClasses)}"
                    aria-label="${(n=this.ariaLabel)!==null&&n!==void 0?n:this.getLabel()}"
                    ?disabled=${this.isDisabled()}>
                ${a}
            </button>
        `)}addTooltipIfNeeded(e){return this.getLabel().trim().length>0&&(this.forceTooltip||!this.hasTextContent()&&!this.hideTooltip)?Zt.html`
                <ft-tooltip part="tooltip"
                            text="${this.getLabel()}"
                            position="${this.tooltipPosition}">
                    ${e}
                </ft-tooltip>
            `:e}resolveIcon(){return this.loading?Zt.html`
                <ft-loader part="loader icon"></ft-loader> `:this.icon?Zt.html`
                <ft-icon part="icon" .variant="${this.iconVariant}" .value="${this.icon}"></ft-icon>
            `:Zt.html`
                <slot part="icon" name="icon"></slot>
            `}focus(){var e;(e=this.button)===null||e===void 0||e.focus()}focusWithoutTooltip(){var e;this.setTooltipManual(!0),(e=this.button)===null||e===void 0||e.focus(),this.setTooltipManual(!1)}showTemporaryTooltip(e,o){var n;return(n=this.tooltip)===null||n===void 0?void 0:n.showTemporaryText(e,o)}setTooltipManual(e){this.tooltip&&(this.tooltip.manual=e)}click(){var e;(e=this.button)===null||e===void 0||e.click()}getLabel(){return this.label||this.textContent}get textContent(){return(0,qt.unslotText)(this.slottedContent).trim()}hasTextContent(){return this.textContent.length>0}onSlotchange(){this.requestUpdate()}isDisabled(){return this.disabled||this.loading}};Y.elementDefinitions={"ft-ripple":H,"ft-tooltip":te,"ft-typography":K,"ft-icon":Be,"ft-loader":hr};Oe([(0,pe.property)()],Y.prototype,"href",void 0);Oe([(0,pe.property)()],Y.prototype,"target",void 0);Oe([(0,pe.property)({type:String,reflect:!0})],Y.prototype,"role",void 0);Oe([(0,pe.property)()],Y.prototype,"type",void 0);Oe([(0,pe.property)({type:Boolean})],Y.prototype,"disabled",void 0);Oe([(0,pe.property)()],Y.prototype,"label",void 0);Oe([(0,pe.property)()],Y.prototype,"icon",void 0);Oe([(0,pe.property)()],Y.prototype,"iconVariant",void 0);Oe([(0,pe.property)({type:Boolean})],Y.prototype,"trailingIcon",void 0);Oe([(0,pe.property)({type:Boolean})],Y.prototype,"loading",void 0);Oe([(0,pe.property)({attribute:"aria-label"})],Y.prototype,"ariaLabel",void 0);Oe([(0,pe.property)()],Y.prototype,"tooltipPosition",void 0);Oe([(0,pe.property)({type:Boolean})],Y.prototype,"hideTooltip",void 0);Oe([(0,pe.property)({type:Boolean})],Y.prototype,"forceTooltip",void 0);Oe([(0,pe.query)(".ft-button")],Y.prototype,"button",void 0);Oe([(0,pe.query)(".ft-button--label slot")],Y.prototype,"slottedContent",void 0);Oe([(0,pe.query)("[part=tooltip]")],Y.prototype,"tooltip",void 0);var Ko=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},ae=class extends Y{constructor(){super(...arguments),this.primary=!1,this.outlined=!1,this.dense=!1,this.round=!1}get buttonClasses(){return{"ft-button":!0,"ft-button--primary":this.primary,"ft-button--outlined":this.outlined,"ft-button--dense":this.dense,"ft-button--round":this.round,"ft-button--trailing-icon":this.trailingIcon,"ft-button--loading":this.trailingIcon,"ft-no-text-select":!0}}get typographyVariant(){return"button"}};ae.styles=[fl.safariEllipsisFix,ws];Ko([(0,go.property)({type:Boolean})],ae.prototype,"primary",void 0);Ko([(0,go.property)({type:Boolean})],ae.prototype,"outlined",void 0);Ko([(0,go.property)({type:Boolean})],ae.prototype,"dense",void 0);Ko([(0,go.property)({type:Boolean})],ae.prototype,"round",void 0);var bo=g(V());var qo=g(N());var hl=g(D()),C=g(N());var yl=[hl.css`
        :host {
            display: inline-block;
            max-width: 100%;
            pointer-events: none;
        }

        /** Remove default button styles **/

        .ft-button {
            box-shadow: 0 0 0 transparent;
            border: 0 solid transparent;
            text-shadow: 0 0 0 transparent;
            text-decoration: none;
        }

        .ft-button:hover {
            box-shadow: 0 0 0 transparent;
            text-shadow: 0 0 0 transparent;
        }

        .ft-button:active {
            outline: none;
        }

        .ft-button:focus {
            outline: 0;
        }

        /** Base styles **/

        .ft-button {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            overflow: hidden;
            box-sizing: border-box;
            pointer-events: auto;
        }

        .ft-button:not([disabled]):hover {
            cursor: pointer;
        }

        .ft-button:focus {
            outline: none;
        }

        .ft-button:focus-visible {
            outline-color: ${f.focusFocusRingColor};
            outline-style: solid;
        }

        ft-icon {
            flex-shrink: 0;
            position: relative;
        }

        .ft-button:not(.ft-button--trailing-icon) ft-icon,
        .ft-button:not(.ft-button--trailing-icon) ft-loader {
            order: -1;
        }

        .ft-button--label {
            position: relative;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: block;
        }

        .ft-button--label[hidden] {
            display: none;
        }

        .ft-button.ft-button--icon-only {
            padding: unset;
            border-radius: 50%;
        }

        /** Brand Primary styles **/

        .ftds--family-brand.ft-button--primary {
            ${(0,C.setVariable)(q.color,f.primaryBrandIconColor)};

            ${(0,C.setVariable)(E.color,f.primaryBrandStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.primaryBrandHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.primaryBrandFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.primaryBrandActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.primaryBrandActiveStateLayerOpacity)};

            background-color: ${f.primaryBrandBackgroundColor};
            color: ${f.primaryBrandColor};
            border-style: none;
        }

        .ftds--family-brand.ft-button--primary[disabled] {
            opacity: ${f.primaryBrandDisabledComponentOpacity};
        }

        .ftds--family-brand.ft-button--primary ft-icon {
            color: ${f.primaryBrandIconColor};
        }

        /** Brand Secondary styles **/

        .ftds--family-brand.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondaryBrandIconColor)};

            ${(0,C.setVariable)(E.color,f.secondaryBrandStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondaryBrandHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondaryBrandFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondaryBrandActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondaryBrandActiveStateLayerOpacity)};

            background-color: ${f.secondaryBrandBackgroundColor};
            color: ${f.secondaryBrandColor};
            border-color: ${f.secondaryBrandBorderColor};
            border-style: solid;
        }

        .ftds--family-brand.ft-button--secondary[disabled] {
            opacity: ${f.secondaryBrandDisabledComponentOpacity};
        }

        .ftds--family-brand.ft-button--secondary ft-icon {
            color: ${f.secondaryBrandIconColor};
        }

        /** Brand Tertiary styles **/

        .ftds--family-brand.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiaryBrandIconColor)};

            ${(0,C.setVariable)(E.color,f.tertiaryBrandStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiaryBrandHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiaryBrandFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiaryBrandActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiaryBrandActiveStateLayerOpacity)};

            background-color: ${f.tertiaryBrandBackgroundColor};
            color: ${f.tertiaryBrandColor};
            border-style: none;
        }

        .ftds--family-brand.ft-button--tertiary[disabled] {
            opacity: ${f.tertiaryBrandDisabledComponentOpacity};
        }

        .ftds--family-brand.ft-button--tertiary ft-icon {
            color: ${f.tertiaryBrandIconColor};
        }

        /** Neutral Secondary styles **/

        .ftds--family-neutral.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondaryNeutralIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.secondaryNeutralStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondaryNeutralHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondaryNeutralFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondaryNeutralActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondaryNeutralActiveStateLayerOpacity)};

            background-color: ${f.secondaryNeutralBackgroundColor};
            color: ${f.secondaryNeutralColor};
            border-color: ${f.secondaryNeutralBorderColor};
            border-style: solid;
        }

        .ftds--family-neutral.ft-button--secondary[disabled] {
            opacity: ${f.secondaryNeutralDisabledComponentOpacity};
        }

        .ftds--family-neutral.ft-button--secondary ft-icon {
            color: ${f.secondaryNeutralIconColor};
        }

        /** Neutral Tertiary styles **/

        .ftds--family-neutral.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiaryNeutralIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.tertiaryNeutralStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiaryNeutralHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiaryNeutralFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiaryNeutralActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiaryNeutralActiveStateLayerOpacity)};

            background-color: ${f.tertiaryNeutralBackgroundColor};
            color: ${f.tertiaryNeutralColor};
            border-style: none;
        }

        .ftds--family-neutral.ft-button--tertiary[disabled] {
            opacity: ${f.tertiaryNeutralDisabledComponentOpacity};
        }

        .ftds--family-neutral.ft-button--tertiary ft-icon {
            color: ${f.tertiaryNeutralIconColor};
        }

        /** Info Secondary styles **/

        .ftds--family-info.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondaryInfoIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.secondaryInfoStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondaryInfoHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondaryInfoFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondaryInfoActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondaryInfoActiveStateLayerOpacity)};

            background-color: ${f.secondaryInfoBackgroundColor};
            color: ${f.secondaryInfoColor};
            border-color: ${f.secondaryInfoBorderColor};
            border-style: solid;
        }

        .ftds--family-info.ft-button--secondary[disabled] {
            opacity: ${f.secondaryInfoDisabledComponentOpacity};
        }

        .ftds--family-info.ft-button--secondary ft-icon {
            color: ${f.secondaryInfoIconColor};
        }

        /** Info Tertiary styles **/

        .ftds--family-info.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiaryInfoIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.tertiaryInfoStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiaryInfoHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiaryInfoFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiaryInfoActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiaryInfoActiveStateLayerOpacity)};

            background-color: ${f.tertiaryInfoBackgroundColor};
            color: ${f.tertiaryInfoColor};
            border-style: none;
        }

        .ftds--family-info.ft-button--tertiary[disabled] {
            opacity: ${f.tertiaryInfoDisabledComponentOpacity};
        }

        .ftds--family-info.ft-button--tertiary ft-icon {
            color: ${f.tertiaryInfoIconColor};
        }

        /** Success Secondary styles **/

        .ftds--family-success.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondarySuccessIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.secondarySuccessStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondarySuccessHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondarySuccessFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondarySuccessActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondarySuccessActiveStateLayerOpacity)};

            background-color: ${f.secondarySuccessBackgroundColor};
            color: ${f.secondarySuccessColor};
            border-color: ${f.secondarySuccessBorderColor};
            border-style: solid;
        }

        .ftds--family-success.ft-button--secondary[disabled] {
            opacity: ${f.secondarySuccessDisabledComponentOpacity};
        }

        .ftds--family-success.ft-button--secondary ft-icon {
            color: ${f.secondarySuccessIconColor};
        }

        /** Success Tertiary styles **/

        .ftds--family-success.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiarySuccessIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.tertiarySuccessStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiarySuccessHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiarySuccessFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiarySuccessActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiarySuccessActiveStateLayerOpacity)};

            background-color: ${f.tertiarySuccessBackgroundColor};
            color: ${f.tertiarySuccessColor};
            border-style: none;
        }

        .ftds--family-success.ft-button--tertiary[disabled] {
            opacity: ${f.tertiarySuccessDisabledComponentOpacity};
        }

        .ftds--family-success.ft-button--tertiary ft-icon {
            color: ${f.tertiarySuccessIconColor};
        }

        /** Warning Secondary styles **/

        .ftds--family-warning.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondaryWarningIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.secondaryWarningStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondaryWarningHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondaryWarningFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondaryWarningActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondaryWarningActiveStateLayerOpacity)};

            background-color: ${f.secondaryWarningBackgroundColor};
            color: ${f.secondaryWarningColor};
            border-color: ${f.secondaryWarningBorderColor};
            border-style: solid;
        }

        .ftds--family-warning.ft-button--secondary[disabled] {
            opacity: ${f.secondaryWarningDisabledComponentOpacity};
        }

        .ftds--family-warning.ft-button--secondary ft-icon {
            color: ${f.secondaryWarningIconColor};
        }

        /** Warning Tertiary styles **/

        .ftds--family-warning.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiaryWarningIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.tertiaryWarningStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiaryWarningHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiaryWarningFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiaryWarningActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiaryWarningActiveStateLayerOpacity)};

            background-color: ${f.tertiaryWarningBackgroundColor};
            color: ${f.tertiaryWarningColor};
            border-style: none;
        }

        .ftds--family-warning.ft-button--tertiary[disabled] {
            opacity: ${f.tertiaryWarningDisabledComponentOpacity};
        }

        .ftds--family-warning.ft-button--tertiary ft-icon {
            color: ${f.tertiaryWarningIconColor};
        }

        /** Error Secondary styles **/

        .ftds--family-error.ft-button--secondary {
            ${(0,C.setVariable)(q.color,f.secondaryErrorIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.secondaryErrorStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.secondaryErrorHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.secondaryErrorFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.secondaryErrorActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.secondaryErrorActiveStateLayerOpacity)};

            background-color: ${f.secondaryErrorBackgroundColor};
            color: ${f.secondaryErrorColor};
            border-color: ${f.secondaryErrorBorderColor};
            border-style: solid;
        }

        .ftds--family-error.ft-button--secondary[disabled] {
            opacity: ${f.secondaryErrorDisabledComponentOpacity};
        }

        .ftds--family-error.ft-button--secondary ft-icon {
            color: ${f.secondaryErrorIconColor};
        }

        /** Error Tertiary styles **/

        .ftds--family-error.ft-button--tertiary {
            ${(0,C.setVariable)(q.color,f.tertiaryErrorIconColor)};

            ${(0,C.setVariable)(E.backgroundColor,f.tertiaryErrorStateLayerColor)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceHover,f.tertiaryErrorHoverStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceFocused,f.tertiaryErrorFocusStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfaceSelected,f.tertiaryErrorActiveStateLayerOpacity)};
            ${(0,C.setVariable)(E.opacityContentOnSurfacePressed,f.tertiaryErrorActiveStateLayerOpacity)};

            background-color: ${f.tertiaryErrorBackgroundColor};
            color: ${f.tertiaryErrorColor};
            border-style: none;
        }

        .ftds--family-error.ft-button--tertiary[disabled] {
            opacity: ${f.tertiaryErrorDisabledComponentOpacity};
        }

        .ftds--family-error.ft-button--tertiary ft-icon {
            color: ${f.tertiaryErrorIconColor};
        }

        /** Large styles **/

        .ftds--size-large {
            ${(0,C.setVariable)($e.size,f.largeIconSize)};
            ${(0,C.setVariable)(q.size,f.largeIconSize)};

            height: ${f.largeHeight};
            padding: 0 ${f.largeHorizontalPadding};
            gap: ${f.largeGap};
            border-radius: ${f.largeBorderRadius};
            border-width: ${f.largeBorderWidth};
        }

        .ftds--size-large:focus-visible {
            outline-width: ${f.largeFocusOutlineWidth};
            outline-offset: ${f.largeFocusOutlineOffset};
        }

        .ftds--size-large.ft-button--icon-only {
            width: ${f.largeIconOnlyWidth};
        }

        /** Small styles **/

        .ftds--size-medium {
            ${(0,C.setVariable)($e.size,f.mediumIconSize)};
            ${(0,C.setVariable)(q.size,f.mediumIconSize)};

            height: ${f.mediumHeight};
            padding: 0 ${f.mediumHorizontalPadding};
            gap: ${f.mediumGap};
            border-radius: ${f.mediumBorderRadius};
            border-width: ${f.mediumBorderWidth};
        }

        .ftds--size-medium:focus-visible {
            outline-width: ${f.mediumFocusOutlineWidth};
            outline-offset: ${f.mediumFocusOutlineOffset};
        }

        .ftds--size-medium.ft-button--icon-only {
            width: ${f.mediumIconOnlyWidth};
        }


        /** Small styles **/

        .ftds--size-small {
            ${(0,C.setVariable)($e.size,f.smallIconSize)};
            ${(0,C.setVariable)(q.size,f.smallIconSize)};

            height: ${f.smallHeight};
            padding: 0 ${f.smallHorizontalPadding};
            gap: ${f.smallGap};
            border-radius: ${f.smallBorderRadius};
            border-width: ${f.smallBorderWidth};
        }

        .ftds--size-small:focus-visible {
            outline-width: ${f.smallFocusOutlineWidth};
            outline-offset: ${f.smallFocusOutlineOffset};
        }

        .ftds--size-small.ft-button--icon-only {
            width: ${f.smallIconOnlyWidth};
        }
    `,C.noTextSelect];var Zo=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},$t=class extends(0,qo.toFtdsBase)(Y){constructor(){super(...arguments),this.primary=!1,this.secondary=!1,this.tertiary=!1,this.round=!1,this.family=Bo.brand,this.iconVariant=St.fluid_topics}get buttonClasses(){return{"ft-button":!0,"ft-button--primary":this.primary,"ft-button--secondary":this.secondary,"ft-button--tertiary":this.tertiary||!this.primary&&!this.secondary,"ft-button--icon-only":!this.hasTextContent(),"ft-button--trailing-icon":this.trailingIcon,"ft-button--loading":this.trailingIcon,"ft-no-text-select":!0,"ft-button--no-icon":!this.icon,"ft-button--round":this.round,...this.getDesignSystemBaseClasses()}}get typographyVariant(){switch(this.size){case Ar.large:return Vt.body2medium;case Ar.medium:return Vt.caption1medium;case Ar.small:return Vt.caption2medium}}};$t.styles=[qo.safariEllipsisFix,yl];Zo([(0,bo.property)({type:Boolean})],$t.prototype,"primary",void 0);Zo([(0,bo.property)({type:Boolean})],$t.prototype,"secondary",void 0);Zo([(0,bo.property)({type:Boolean})],$t.prototype,"tertiary",void 0);Zo([(0,bo.property)({type:Boolean})],$t.prototype,"round",void 0);(0,pa.customElement)("ft-button")(ae);(0,pa.customElement)("ftds-button")($t);var je={buttonColor:Te.FtCssVariableFactory.external(B.color,"button"),buttonRippleColor:Te.FtCssVariableFactory.external(B.rippleColor,"button"),buttonBackgroundColor:Te.FtCssVariableFactory.external(B.backgroundColor,"button"),labelFontSize:Te.FtCssVariableFactory.external(R.fontSize,"Typography"),labelColor:Te.FtCssVariableFactory.external(Te.designSystemVariables.colorOnSurface,"Design System"),contentTextColor:Te.FtCssVariableFactory.external(Te.designSystemVariables.colorOnSurfaceHigh,"Design System"),contentTextColorHover:Te.FtCssVariableFactory.external(Te.designSystemVariables.colorPrimary,"Design System"),contentFontSize:Te.FtCssVariableFactory.extend("--fp-facet--content-size","font size of facet content",R.fontSize,"16px")},ml=ua.css`
    .fp-facet--deeplink .facets {
        display: flex;
        flex-direction: column;
        gap: 4px;
        padding: 0 10px;
    }

    .fp-facet--deeplink .buttons {
        width: fit-content;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
    }

    .fp-facet--deeplink .label, .fp-facet--buttons .label {
        display: block;
        padding: 0 10px;
        margin-bottom: 8px;
    }

    .fp-facet--buttons .label {
        margin-bottom: 0;
    }

    .fp-facet--deeplink .link {
        text-decoration: none;
    }

    .fp-facet--deeplink .link:hover {
        text-decoration: underline;
    }

    .fp-facet--deeplink .count::before, .fp-facet--buttons .button-count::before {
        content: "("
    }

    .fp-facet--deeplink .count::after, .fp-facet--buttons .button-count::after {
        content: ")"
    }

    .fp-facet--deeplink .buttons {
        display: flex;
    }

    .fp-facet--deeplink .-button {
        flex: 1;
    }

    .fp-facet--buttons {
        display: flex;
        flex-direction: column;
    }

    .fp-facet--buttons .facets {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
`,gl=ua.css`
    .fp-facet--deeplink .label, .fp-facet--deeplink .count, .fp-facet--buttons .label, .fp-facet--buttons .count {
        color: ${je.labelColor};
        font-size: ${je.labelFontSize};
        ${(0,Te.setVariable)(R.lineHeight,"22px")};
        ${(0,Te.setVariable)(R.fontWeight,"bold")};
    }

    .fp-facet--deeplink .link, .fp-facet--deeplink .count {
        color: ${je.contentTextColor};
        font-size: ${je.contentFontSize};
    }

    .fp-facet--deeplink .link:hover {
        color: ${je.contentTextColorHover};
    }
`;var Rc=g(N());var vn=g(D()),Sn=g(V()),On=g(N());var bl=g(D());var xl=bl.css`
`;var xn=g(N());var vc=g(N());var Cl=g(D()),Ke=g(V()),dt=g(N());var vl=g(D());var Sl=vl.css`
`;var Yo=g(N()),vp="ft-app-info",fa=class extends CustomEvent{constructor(e){super("authentication-change",{detail:e})}},Sp={session:(t,e)=>{(0,Yo.deepEqual)(t.session,e.payload)||(t.session=e.payload,setTimeout(()=>I.dispatchEvent(new fa(e.payload)),0))}},I=Yo.FtReduxStore.get({name:vp,reducers:Sp,initialState:{baseUrl:void 0,apiIntegrationIdentifier:void 0,uiLocale:document.documentElement.lang||"en-US",availableUiLocales:[],defaultLocales:void 0,searchInAllLanguagesAllowed:!1,metadataConfiguration:void 0,privacyPolicyConfiguration:void 0,editorMode:!1,noCustom:!1,noCustomComponent:!1,session:void 0,openExternalDocumentInNewTab:!1,navigatorOnline:!0,forcedOffline:!1}});var Ct=g(N());var ha=g(N());var yr=class t{static get(e){let{baseUrl:o,apiIntegrationIdentifier:n}=I.getState(),a=e??n;if(o&&a&&window.fluidtopics)return new window.fluidtopics.FluidTopicsApi(o,a,!0)}static await(e){return new Promise(o=>{let n=t.get(e);if(n)o(n);else{let a=I.subscribe(()=>{n=t.get(e),n&&(a(),o(n))})}})}};var Yt=class{constructor(e){this.overrideApi=e}get api(){var e;return(e=this.overrideApi)!==null&&e!==void 0?e:yr.get()}get awaitApi(){return this.overrideApi?Promise.resolve(this.overrideApi):yr.await()}};var Ot=class extends Yt{constructor(e=!0,o){var n;super(o);let a=this.constructor;a.commonCache=(n=a.commonCache)!==null&&n!==void 0?n:new ha.CacheRegistry,this.cache=e?a.commonCache:new ha.CacheRegistry}clearCache(){this.cache.clearAll()}};var Ol,Op=Symbol("clearAfterUnitTest"),Xo=class extends Ot{constructor(e){super(),this.messageContextProvider=e,this.defaultMessages={},this.listeners={},this.currentUiLocale="",this[Ol]=()=>{this.defaultMessages={},this.cache=new Ct.CacheRegistry,this.listeners={}},this.currentUiLocale=I.getState().uiLocale,I.subscribe(()=>this.clearWhenUiLocaleChanges())}clearWhenUiLocaleChanges(){let{uiLocale:e}=I.getState();this.currentUiLocale!==e&&(this.currentUiLocale=e,this.cache.clearAll(),this.notifyAll())}addContext(e){let o=e.name.toLowerCase();this.cache.setFinal(o,e),this.notify(o)}getAllContexts(){return this.cache.resolvedValues()}async prepareContext(e,o){var n;if(e=e.toLowerCase(),o&&Object.keys(o).length>0){let a={...(n=this.defaultMessages[e])!==null&&n!==void 0?n:{},...o};(0,Ct.deepEqual)(this.defaultMessages[e],a)||(this.defaultMessages[e]=a,await this.notify(e))}return this.fetchContext(e)}resolveContext(e){var o,n;return this.fetchContext(e),(n=(o=this.cache.getNow(e))===null||o===void 0?void 0:o.messages)!==null&&n!==void 0?n:{}}resolveRawMessage(e,o){let n=e.toLowerCase();return this.resolveContext(n)[o]}resolveMessage(e,o,...n){var a;let i=e.toLowerCase(),s=this.resolveContext(i);return new Ct.ParametrizedLabelResolver((a=this.defaultMessages[i])!==null&&a!==void 0?a:{},s).resolve(o,...n)}async fetchContext(e){let o=!this.cache.has(e),n;try{n=await this.cache.get(e,()=>this.messageContextProvider(this.currentUiLocale,e))}catch(a){!(a instanceof Ct.CanceledPromiseError)&&o&&console.error(a)}return o&&await this.notify(e),n}subscribe(e,o){var n;return e=e.toLowerCase(),this.listeners[e]=(n=this.listeners[e])!==null&&n!==void 0?n:new Set,this.listeners[e].add(o),()=>{var a;return(a=this.listeners[e])===null||a===void 0?void 0:a.delete(o)}}async notifyAll(){await Promise.all(Object.keys(this.listeners).map(e=>this.notify(e)))}async notify(e){this.listeners[e]!=null&&await Promise.all([...this.listeners[e].values()].map(o=>(0,Ct.delay)(0).then(()=>o()).catch(()=>null)))}};Ol=Op;window.FluidTopicsI18nService==null&&(window.FluidTopicsI18nService=new class extends Xo{constructor(){super(async(t,e)=>(await this.awaitApi).getFluidTopicsMessageContext(t,e))}});window.FluidTopicsCustomI18nService==null&&(window.FluidTopicsCustomI18nService=new class extends Xo{constructor(){super(async(t,e)=>(await this.awaitApi).getCustomMessageContext(t,e))}});var Ur=window.FluidTopicsI18nService,Qo=window.FluidTopicsCustomI18nService;var Le=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},re=class extends dt.FtLitElement{constructor(){super(...arguments),this.apiIntegrationIdentifier="ft-integration",this.uiLocale="en-US",this.editorMode=!1,this.noCustom=!1,this.openExternalDocumentInNewTab=!1,this.noCustomComponent=!1,this.withManualResources=!1,this.navigatorOnline=!1,this.forcedOffline=!1,this.apiProvider=()=>yr.get(),this.messageContexts=[],this.cache=new dt.CacheRegistry,this.cleanSessionDebouncer=new dt.Debouncer}render(){return Cl.html`
            <slot></slot>
        `}update(e){var o,n,a,i,s;super.update(e),e.has("baseUrl")&&(I.actions.baseUrl(this.baseUrl),window.fluidTopicsBaseUrl=this.baseUrl),e.has("apiIntegrationIdentifier")&&I.actions.apiIntegrationIdentifier(this.apiIntegrationIdentifier),e.has("uiLocale")&&I.actions.uiLocale(this.uiLocale),e.has("metadataConfiguration")&&I.actions.metadataConfiguration(this.metadataConfiguration),e.has("noCustom")&&I.actions.noCustom(this.noCustom),e.has("editorMode")&&I.actions.editorMode(this.editorMode),e.has("noCustomComponent")&&I.actions.noCustomComponent(this.noCustomComponent),e.has("session")&&I.actions.session(this.session),e.has("messageContexts")&&this.messageContexts!=null&&this.messageContexts.forEach(c=>Ur.addContext(c)),e.has("openExternalDocumentInNewTab")&&I.actions.openExternalDocumentInNewTab(this.openExternalDocumentInNewTab),e.has("navigatorOnline")&&I.actions.navigatorOnline(this.navigatorOnline),e.has("forcedOffline")&&I.actions.forcedOffline(this.forcedOffline),e.has("localesConfiguration")&&(I.actions.defaultLocales((o=this.localesConfiguration)===null||o===void 0?void 0:o.defaultLocales),I.actions.availableUiLocales((a=(n=this.localesConfiguration)===null||n===void 0?void 0:n.availableUiLocales)!==null&&a!==void 0?a:[]),I.actions.searchInAllLanguagesAllowed((s=(i=this.localesConfiguration)===null||i===void 0?void 0:i.allLanguagesAllowed)!==null&&s!==void 0?s:!1)),setTimeout(()=>this.updateIfNeeded())}async updateIfNeeded(){this.apiProvider()&&(this.withManualResources||(this.session==null&&this.updateSession(),this.metadataConfiguration==null&&this.updateMetadataConfiguration()),this.localesConfiguration==null&&this.updateLocalesConfiguration())}async updateSession(){this.session=await this.cache.get("session",async()=>{let e=await this.apiProvider().getCurrentSession();return e.idleTimeoutInMillis>0&&this.cleanSessionDebouncer.run(()=>{this.cache.clear("session"),this.session=void 0},e.idleTimeoutInMillis),e})}async updateMetadataConfiguration(){this.metadataConfiguration=await this.cache.get("metadataConfiguration",()=>this.apiProvider().getMetadataConfiguration())}async updateLocalesConfiguration(){this.localesConfiguration=await this.cache.get("localesConfiguration",()=>this.apiProvider().getLocalesConfiguration())}};re.elementDefinitions={};re.styles=Sl;Le([(0,Ke.property)()],re.prototype,"baseUrl",void 0);Le([(0,Ke.property)()],re.prototype,"apiIntegrationIdentifier",void 0);Le([(0,Ke.property)()],re.prototype,"uiLocale",void 0);Le([(0,dt.jsonProperty)(null)],re.prototype,"availableUiLocales",void 0);Le([(0,dt.jsonProperty)(null)],re.prototype,"metadataConfiguration",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"editorMode",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"noCustom",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"openExternalDocumentInNewTab",void 0);Le([(0,Ke.property)({converter:{fromAttribute(t){return t==="false"?!1:t==="true"||(t??!1)}}})],re.prototype,"noCustomComponent",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"withManualResources",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"navigatorOnline",void 0);Le([(0,Ke.property)({type:Boolean})],re.prototype,"forcedOffline",void 0);Le([(0,Ke.property)({type:Object})],re.prototype,"apiProvider",void 0);Le([(0,dt.jsonProperty)([])],re.prototype,"messageContexts",void 0);Le([(0,dt.jsonProperty)(void 0)],re.prototype,"session",void 0);Le([(0,Ke.state)()],re.prototype,"localesConfiguration",void 0);var cu=g(V());function Cp(t,e){if(t===e)return!0;if(t&&e&&typeof t=="object"&&typeof e=="object"){if(t.constructor!==e.constructor)return!1;var o,n,a;if(Array.isArray(t)){if(o=t.length,o!=e.length)return!1;for(n=o;n--!==0;)if(!Jo(t[n],e[n]))return!1;return!0}if(t instanceof Map&&e instanceof Map){if(t.size!==e.size)return!1;for(n of t.entries())if(!e.has(n[0]))return!1;for(n of t.entries())if(!Jo(n[1],e.get(n[0])))return!1;return!0}if(t instanceof Set&&e instanceof Set){if(t.size!==e.size)return!1;for(n of t.entries())if(!e.has(n[0]))return!1;return!0}if(t.constructor===RegExp)return t.source===e.source&&t.flags===e.flags;if(t.valueOf!==Object.prototype.valueOf)return t.valueOf()===e.valueOf();let i=s=>Object.keys(s).filter(c=>s[c]!=null);if(a=i(t),o=a.length,o!==i(e).length)return!1;for(n=o;n--!==0;)if(!Object.prototype.hasOwnProperty.call(e,a[n]))return!1;for(n=o;n--!==0;){let s=a[n];if(!Jo(t[s],e[s]))return!1}return!0}return t!==t&&e!==e||t==null&&e==null}function Jo(t,e){try{return Cp(t,e)}catch{return!1}}function en(t,e){return!Jo(t,e)}var Ep=g(V(),1);var tn=class{constructor(){this.queue=[]}add(e,o=!1){o&&this.clear(e.type),this.queue.push(e)}consume(e){let o=this.queue.find(n=>n.type===e);return o&&(this.queue=this.queue.filter(n=>n!==o)),o}clear(e){typeof e=="string"?this.queue=this.queue.filter(o=>o.type!==e):this.queue=this.queue.filter(o=>!e.test(o.type))}};var zr=g(V(),1);var El=g(V(),1);function wl(t,e){let o=()=>JSON.parse(JSON.stringify(t));return(0,El.property)({type:Object,converter:{fromAttribute:n=>{if(n==null)return o();try{return JSON.parse(n)}catch{return o()}},toAttribute:n=>JSON.stringify(n)},hasChanged:en,...e??{}})}var rn=class{constructor(e=0){this.timeout=e,this.callbacks=[]}run(e,o){return this.callbacks=[e],this.debounce(o)}queue(e,o){return this.callbacks.push(e),this.debounce(o)}cancel(){this.clearTimeout(),this.resolvePromise&&this.resolvePromise(!1),this.clearPromise()}debounce(e){return this.promise==null&&(this.promise=new Promise((o,n)=>{this.resolvePromise=o,this.rejectPromise=n})),this.clearTimeout(),this._debounce=window.setTimeout(()=>this.runCallbacks(),e??this.timeout),this.promise}async runCallbacks(){var e,o;let n=[...this.callbacks];this.callbacks=[];let a=(e=this.rejectPromise)!==null&&e!==void 0?e:()=>null,i=(o=this.resolvePromise)!==null&&o!==void 0?o:()=>null;this.clearPromise();for(let s of n)try{await s()}catch(c){a(c);return}i(!0)}clearTimeout(){this._debounce!=null&&window.clearTimeout(this._debounce)}clearPromise(){this.promise=void 0,this.resolvePromise=void 0,this.rejectPromise=void 0}};var Rl=g(D(),1);var on=globalThis,wp=on.ShadowRoot&&(on.ShadyCSS===void 0||on.ShadyCSS.nativeShadow)&&"adoptedStyleSheets"in Document.prototype&&"replace"in CSSStyleSheet.prototype,vx=Symbol();var Al=(t,e)=>{if(wp)t.adoptedStyleSheets=e.map(o=>o instanceof CSSStyleSheet?o:o.styleSheet);else for(let o of e){let n=document.createElement("style"),a=on.litNonce;a!==void 0&&n.setAttribute("nonce",a),n.textContent=o.cssText,t.appendChild(n)}};var nn=class extends Rl.LitElement{createRenderRoot(){let e=this.constructor;e.elementDefinitions&&!e.registry&&(e.registry=new CustomElementRegistry,Object.entries(e.elementDefinitions).forEach(([a,i])=>e.registry.define(a,i)));let o={...e.shadowRootOptions,customElements:e.registry},n=this.renderOptions.creationScope=this.attachShadow(o);return Al(n,e.elementStyles),n}};function Nl(t,e,...o){var n;let a=t.querySelector(e);for(let i of o)a=(n=a?.shadowRoot)===null||n===void 0?void 0:n.querySelector(i);return a}var xo=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Pl,Tl=Symbol("constructorPrototype"),Ll=Symbol("constructorName"),_l=Symbol("exportpartsDebouncer"),Il=Symbol("dynamicDependenciesLoaded"),Bt=class extends nn{constructor(){super(),this.useAdoptedStyleSheets=!0,this.adoptedCustomStyleSheet=new CSSStyleSheet,this[Pl]=new rn(5),this[Ll]=this.constructor.name,this[Tl]=this.constructor.prototype}adoptedCallback(){this.constructor.name!==this[Ll]&&Object.setPrototypeOf(this,this[Tl])}connectedCallback(){super.connectedCallback();try{this.shadowRoot&&!this.shadowRoot.adoptedStyleSheets.includes(this.adoptedCustomStyleSheet)&&(this.shadowRoot.adoptedStyleSheets=[...this.shadowRoot.adoptedStyleSheets,this.adoptedCustomStyleSheet]),this.useAdoptedStyleSheets=!0}catch(o){this.useAdoptedStyleSheets=!1,console.error("Cannot use adopted stylesheets",o)}let e=this.constructor;e[Il]||(e[Il]=!0,this.importDynamicDependencies())}importDynamicDependencies(){}updated(e){super.updated(e),this.updateComplete.then(()=>{this.contentAvailableCallback(e),this.applyCustomStylesheet(e),this.scheduleExportpartsUpdate()})}contentAvailableCallback(e){if(e.has("elementToFocus")&&this.elementToFocus!=null){let{element:o,selector:n,shadowPath:a}=this.elementToFocus;if(n!=null){let i=[...a??[],n];o=Nl(this.shadowRoot,...i)}o?.focus(),window.FluidTopicsA11yHints.isKeyboardNavigation||o?.blur(),this.elementToFocus=void 0}}applyCustomStylesheet(e){var o,n,a;if(((n=(o=this.shadowRoot)===null||o===void 0?void 0:o.querySelectorAll(".ft-lit-element--custom-stylesheet"))!==null&&n!==void 0?n:[]).forEach(i=>i.remove()),this.useAdoptedStyleSheets){if(e.has("customStylesheet"))try{this.adoptedCustomStyleSheet.replaceSync((a=this.customStylesheet)!==null&&a!==void 0?a:"")}catch(i){console.error(i,this.customStylesheet),this.useAdoptedStyleSheets=!1}}else if(this.customStylesheet){let i=document.createElement("style");i.classList.add("ft-lit-element--custom-stylesheet"),i.innerHTML=this.customStylesheet,this.shadowRoot.append(i)}}scheduleExportpartsUpdate(){var e,o,n;(!((e=this.exportpartsPrefix)===null||e===void 0)&&e.trim()||(n=(o=this.exportpartsPrefixes)===null||o===void 0?void 0:o.length)!==null&&n!==void 0&&n)&&this[_l].run(()=>{var a,i;!((a=this.exportpartsPrefix)===null||a===void 0)&&a.trim()?this.setExportpartsAttribute([this.exportpartsPrefix]):this.exportpartsPrefixes!=null&&((i=this.exportpartsPrefixes)===null||i===void 0?void 0:i.length)>0&&this.setExportpartsAttribute(this.exportpartsPrefixes)})}setExportpartsAttribute(e){var o,n,a,i,s,c;let p=b=>b!=null&&b.trim().length>0,u=e.filter(p).map(b=>b.trim());if(u.length===0){this.removeAttribute("exportparts");return}let m=new Set;for(let b of(n=(o=this.shadowRoot)===null||o===void 0?void 0:o.querySelectorAll("[part],[exportparts]"))!==null&&n!==void 0?n:[]){let S=(i=(a=b.getAttribute("part"))===null||a===void 0?void 0:a.split(" "))!==null&&i!==void 0?i:[],v=(c=(s=b.getAttribute("exportparts"))===null||s===void 0?void 0:s.split(",").map(O=>O.split(":")[1]))!==null&&c!==void 0?c:[];new Array(...S,...v).filter(p).map(O=>O.trim()).forEach(O=>m.add(O))}if(m.size===0){this.removeAttribute("exportparts");return}let y=[...m.values()].flatMap(b=>u.map(S=>`${b}:${S}--${b}`));this.setAttribute("exportparts",[...this.part,...y].join(", "))}};Pl=_l;xo([(0,zr.property)()],Bt.prototype,"exportpartsPrefix",void 0);xo([wl([])],Bt.prototype,"exportpartsPrefixes",void 0);xo([(0,zr.property)()],Bt.prototype,"customStylesheet",void 0);xo([(0,zr.property)()],Bt.prototype,"elementToFocus",void 0);xo([(0,zr.state)()],Bt.prototype,"useAdoptedStyleSheets",void 0);function vo(t){var e;return(e=t?.isFtReduxStore)!==null&&e!==void 0?e:!1}var kl,Dl,$l,So=Symbol("internalReduxEventsUnsubscribers"),Xt=Symbol("internalStoresUnsubscribers"),mr=Symbol("internalStores"),Oo=class extends Bt{constructor(){super(...arguments),this[kl]=new Map,this[Dl]=new Map,this[$l]=new Map}get reduxConstructor(){return this.constructor}update(e){super.update(e),[...this.reduxConstructor.reduxReactiveProperties].some(o=>e.has(o))&&this.updateFromStores()}getUnnamedStore(){if(this[mr].size>1)throw new Error("Cannot resolve unnamed store when multiple stores are configured.");return[...this[mr].values()][0]}getStore(e){return e==null?this.getUnnamedStore():this[mr].get(e)}addStore(e,o){var n;o=(n=o??(vo(e)?e.name:void 0))!==null&&n!==void 0?n:"default-store",this.unsubscribeFromStore(o),this[mr].set(o,e),this.subscribeToStore(o,e),this.updateFromStores()}removeStore(e){let o=typeof e=="string"?e:e.name;this.unsubscribeFromStore(o),this[mr].delete(o)}setupStores(){this.unsubscribeFromStores(),this[mr].forEach((e,o)=>this.subscribeToStore(o,e)),this.updateFromStores()}updateFromStores(){this.reduxConstructor.reduxProperties.forEach((e,o)=>{let n=this.constructor.getPropertyOptions(o);if(!n?.attribute||!this.hasAttribute(typeof n?.attribute=="string"?n.attribute:o)){let a=this.getStore(e.store);a&&(e.store?this[Xt].has(e.store):this[Xt].size>0)&&(this[o]=e.selector(a.getState(),this))}})}subscribeToStore(e,o){var n;this[Xt].set(e,o.subscribe(()=>this.updateFromStores())),this[So].set(e,[]),vo(o)&&o.eventBus&&((n=this.reduxConstructor.reduxEventListeners)===null||n===void 0||n.forEach((a,i)=>{if(typeof this[i]=="function"&&(!a.store||o.name===a.store)){let s=c=>this[i](c);o.addEventListener(a.eventName,s),this[So].get(e).push(()=>o.removeEventListener(a.eventName,s))}})),this.onStoreAvailable(e)}unsubscribeFromStores(){this[Xt].forEach((e,o)=>this.unsubscribeFromStore(o))}unsubscribeFromStore(e){var o;this[Xt].has(e)&&this[Xt].get(e)(),this[Xt].delete(e),(o=this[So].get(e))===null||o===void 0||o.forEach(n=>n()),this[So].delete(e)}onStoreAvailable(e){}connectedCallback(){super.connectedCallback(),this.setupStores()}disconnectedCallback(){super.disconnectedCallback(),this.unsubscribeFromStores()}};kl=Xt,Dl=mr,$l=So;Oo.reduxProperties=new Map;Oo.reduxReactiveProperties=new Set;Oo.reduxEventListeners=new Map;function at(t){for(var e=arguments.length,o=Array(e>1?e-1:0),n=1;n<e;n++)o[n-1]=arguments[n];if(0)var a,i;throw Error("[Immer] minified error nr: "+t+(o.length?" "+o.map(function(s){return"'"+s+"'"}).join(","):"")+". Find the full error at: https://bit.ly/3cXEKWf")}function Ft(t){return!!t&&!!t[X]}function pt(t){var e;return!!t&&(function(o){if(!o||typeof o!="object")return!1;var n=Object.getPrototypeOf(o);if(n===null)return!0;var a=Object.hasOwnProperty.call(n,"constructor")&&n.constructor;return a===Object||typeof a=="function"&&Function.toString.call(a)===_p}(t)||Array.isArray(t)||!!t[Wl]||!!(!((e=t.constructor)===null||e===void 0)&&e[Wl])||Ca(t)||Ea(t))}function gr(t,e,o){o===void 0&&(o=!1),Vr(t)===0?(o?Object.keys:Wr)(t).forEach(function(n){o&&typeof n=="symbol"||e(n,t[n],t)}):t.forEach(function(n,a){return e(a,n,t)})}function Vr(t){var e=t[X];return e?e.i>3?e.i-4:e.i:Array.isArray(t)?1:Ca(t)?2:Ea(t)?3:0}function Hr(t,e){return Vr(t)===2?t.has(e):Object.prototype.hasOwnProperty.call(t,e)}function Ap(t,e){return Vr(t)===2?t.get(e):t[e]}function Vl(t,e,o){var n=Vr(t);n===2?t.set(e,o):n===3?t.add(o):t[e]=o}function Gl(t,e){return t===e?t!==0||1/t==1/e:t!=t&&e!=e}function Ca(t){return Ip&&t instanceof Map}function Ea(t){return Pp&&t instanceof Set}function Qt(t){return t.o||t.t}function wa(t){if(Array.isArray(t))return Array.prototype.slice.call(t);var e=Zl(t);delete e[X];for(var o=Wr(e),n=0;n<o.length;n++){var a=o[n],i=e[a];i.writable===!1&&(i.writable=!0,i.configurable=!0),(i.get||i.set)&&(e[a]={configurable:!0,writable:!0,enumerable:i.enumerable,value:t[a]})}return Object.create(Object.getPrototypeOf(t),e)}function Aa(t,e){return e===void 0&&(e=!1),Ra(t)||Ft(t)||!pt(t)||(Vr(t)>1&&(t.set=t.add=t.clear=t.delete=Rp),Object.freeze(t),e&&gr(t,function(o,n){return Aa(n,!0)},!0)),t}function Rp(){at(2)}function Ra(t){return t==null||typeof t!="object"||Object.isFrozen(t)}function Et(t){var e=Oa[t];return e||at(18,t),e}function Np(t,e){Oa[t]||(Oa[t]=e)}function xa(){return Eo}function ya(t,e){e&&(Et("Patches"),t.u=[],t.s=[],t.v=e)}function an(t){va(t),t.p.forEach(Tp),t.p=null}function va(t){t===Eo&&(Eo=t.l)}function Bl(t){return Eo={p:[],l:Eo,h:t,m:!0,_:0}}function Tp(t){var e=t[X];e.i===0||e.i===1?e.j():e.g=!0}function ma(t,e){e._=e.p.length;var o=e.p[0],n=t!==void 0&&t!==o;return e.h.O||Et("ES5").S(e,t,n),n?(o[X].P&&(an(e),at(4)),pt(t)&&(t=sn(e,t),e.l||ln(e,t)),e.u&&Et("Patches").M(o[X].t,t,e.u,e.s)):t=sn(e,o,[]),an(e),e.u&&e.v(e.u,e.s),t!==Kl?t:void 0}function sn(t,e,o){if(Ra(e))return e;var n=e[X];if(!n)return gr(e,function(c,p){return Fl(t,n,e,c,p,o)},!0),e;if(n.A!==t)return e;if(!n.P)return ln(t,n.t,!0),n.t;if(!n.I){n.I=!0,n.A._--;var a=n.i===4||n.i===5?n.o=wa(n.k):n.o,i=a,s=!1;n.i===3&&(i=new Set(a),a.clear(),s=!0),gr(i,function(c,p){return Fl(t,n,a,c,p,o,s)}),ln(t,a,!1),o&&t.u&&Et("Patches").N(n,o,t.u,t.s)}return n.o}function Fl(t,e,o,n,a,i,s){if(Ft(a)){var c=sn(t,a,i&&e&&e.i!==3&&!Hr(e.R,n)?i.concat(n):void 0);if(Vl(o,n,c),!Ft(c))return;t.m=!1}else s&&o.add(a);if(pt(a)&&!Ra(a)){if(!t.h.D&&t._<1)return;sn(t,a),e&&e.A.l||ln(t,a)}}function ln(t,e,o){o===void 0&&(o=!1),!t.l&&t.h.D&&t.m&&Aa(e,o)}function ga(t,e){var o=t[X];return(o?Qt(o):t)[e]}function Ml(t,e){if(e in t)for(var o=Object.getPrototypeOf(t);o;){var n=Object.getOwnPropertyDescriptor(o,e);if(n)return n;o=Object.getPrototypeOf(o)}}function Jt(t){t.P||(t.P=!0,t.l&&Jt(t.l))}function ba(t){t.o||(t.o=wa(t.t))}function Sa(t,e,o){var n=Ca(e)?Et("MapSet").F(e,o):Ea(e)?Et("MapSet").T(e,o):t.O?function(a,i){var s=Array.isArray(a),c={i:s?1:0,A:i?i.A:xa(),P:!1,I:!1,R:{},l:i,t:a,k:null,o:null,j:null,C:!1},p=c,u=wo;s&&(p=[c],u=Co);var m=Proxy.revocable(p,u),y=m.revoke,b=m.proxy;return c.k=b,c.j=y,b}(e,o):Et("ES5").J(e,o);return(o?o.A:xa()).p.push(n),n}function Lp(t){return Ft(t)||at(22,t),function e(o){if(!pt(o))return o;var n,a=o[X],i=Vr(o);if(a){if(!a.P&&(a.i<4||!Et("ES5").K(a)))return a.t;a.I=!0,n=Ul(o,i),a.I=!1}else n=Ul(o,i);return gr(n,function(s,c){a&&Ap(a.t,s)===c||Vl(n,s,e(c))}),i===3?new Set(n):n}(t)}function Ul(t,e){switch(e){case 2:return new Map(t);case 3:return Array.from(t)}return wa(t)}function jl(){function t(s,c){var p=i[s];return p?p.enumerable=c:i[s]=p={configurable:!0,enumerable:c,get:function(){var u=this[X];return wo.get(u,s)},set:function(u){var m=this[X];wo.set(m,s,u)}},p}function e(s){for(var c=s.length-1;c>=0;c--){var p=s[c][X];if(!p.P)switch(p.i){case 5:n(p)&&Jt(p);break;case 4:o(p)&&Jt(p)}}}function o(s){for(var c=s.t,p=s.k,u=Wr(p),m=u.length-1;m>=0;m--){var y=u[m];if(y!==X){var b=c[y];if(b===void 0&&!Hr(c,y))return!0;var S=p[y],v=S&&S[X];if(v?v.t!==b:!Gl(S,b))return!0}}var O=!!c[X];return u.length!==Wr(c).length+(O?0:1)}function n(s){var c=s.k;if(c.length!==s.t.length)return!0;var p=Object.getOwnPropertyDescriptor(c,c.length-1);if(p&&!p.get)return!0;for(var u=0;u<c.length;u++)if(!c.hasOwnProperty(u))return!0;return!1}function a(s){s.g&&at(3,JSON.stringify(Qt(s)))}var i={};Np("ES5",{J:function(s,c){var p=Array.isArray(s),u=function(y,b){if(y){for(var S=Array(b.length),v=0;v<b.length;v++)Object.defineProperty(S,""+v,t(v,!0));return S}var O=Zl(b);delete O[X];for(var P=Wr(O),T=0;T<P.length;T++){var L=P[T];O[L]=t(L,y||!!O[L].enumerable)}return Object.create(Object.getPrototypeOf(b),O)}(p,s),m={i:p?5:4,A:c?c.A:xa(),P:!1,I:!1,R:{},l:c,t:s,k:u,o:null,g:!1,C:!1};return Object.defineProperty(u,X,{value:m,writable:!0}),u},S:function(s,c,p){p?Ft(c)&&c[X].A===s&&e(s.p):(s.u&&function u(m){if(m&&typeof m=="object"){var y=m[X];if(y){var b=y.t,S=y.k,v=y.R,O=y.i;if(O===4)gr(S,function(F){F!==X&&(b[F]!==void 0||Hr(b,F)?v[F]||u(S[F]):(v[F]=!0,Jt(y)))}),gr(b,function(F){S[F]!==void 0||Hr(S,F)||(v[F]=!1,Jt(y))});else if(O===5){if(n(y)&&(Jt(y),v.length=!0),S.length<b.length)for(var P=S.length;P<b.length;P++)v[P]=!1;else for(var T=b.length;T<S.length;T++)v[T]=!0;for(var L=Math.min(S.length,b.length),k=0;k<L;k++)S.hasOwnProperty(k)||(v[k]=!0),v[k]===void 0&&u(S[k])}}}}(s.p[0]),e(s.p))},K:function(s){return s.i===4?o(s):n(s)}})}var zl,Eo,Na=typeof Symbol<"u"&&typeof Symbol("x")=="symbol",Ip=typeof Map<"u",Pp=typeof Set<"u",Hl=typeof Proxy<"u"&&Proxy.revocable!==void 0&&typeof Reflect<"u",Kl=Na?Symbol.for("immer-nothing"):((zl={})["immer-nothing"]=!0,zl),Wl=Na?Symbol.for("immer-draftable"):"__$immer_draftable",X=Na?Symbol.for("immer-state"):"__$immer_state";var _p=""+Object.prototype.constructor,Wr=typeof Reflect<"u"&&Reflect.ownKeys?Reflect.ownKeys:Object.getOwnPropertySymbols!==void 0?function(t){return Object.getOwnPropertyNames(t).concat(Object.getOwnPropertySymbols(t))}:Object.getOwnPropertyNames,Zl=Object.getOwnPropertyDescriptors||function(t){var e={};return Wr(t).forEach(function(o){e[o]=Object.getOwnPropertyDescriptor(t,o)}),e},Oa={},wo={get:function(t,e){if(e===X)return t;var o=Qt(t);if(!Hr(o,e))return function(a,i,s){var c,p=Ml(i,s);return p?"value"in p?p.value:(c=p.get)===null||c===void 0?void 0:c.call(a.k):void 0}(t,o,e);var n=o[e];return t.I||!pt(n)?n:n===ga(t.t,e)?(ba(t),t.o[e]=Sa(t.A.h,n,t)):n},has:function(t,e){return e in Qt(t)},ownKeys:function(t){return Reflect.ownKeys(Qt(t))},set:function(t,e,o){var n=Ml(Qt(t),e);if(n?.set)return n.set.call(t.k,o),!0;if(!t.P){var a=ga(Qt(t),e),i=a?.[X];if(i&&i.t===o)return t.o[e]=o,t.R[e]=!1,!0;if(Gl(o,a)&&(o!==void 0||Hr(t.t,e)))return!0;ba(t),Jt(t)}return t.o[e]===o&&(o!==void 0||e in t.o)||Number.isNaN(o)&&Number.isNaN(t.o[e])||(t.o[e]=o,t.R[e]=!0),!0},deleteProperty:function(t,e){return ga(t.t,e)!==void 0||e in t.t?(t.R[e]=!1,ba(t),Jt(t)):delete t.R[e],t.o&&delete t.o[e],!0},getOwnPropertyDescriptor:function(t,e){var o=Qt(t),n=Reflect.getOwnPropertyDescriptor(o,e);return n&&{writable:!0,configurable:t.i!==1||e!=="length",enumerable:n.enumerable,value:o[e]}},defineProperty:function(){at(11)},getPrototypeOf:function(t){return Object.getPrototypeOf(t.t)},setPrototypeOf:function(){at(12)}},Co={};gr(wo,function(t,e){Co[t]=function(){return arguments[0]=arguments[0][0],e.apply(this,arguments)}}),Co.deleteProperty=function(t,e){return Co.set.call(this,t,e,void 0)},Co.set=function(t,e,o){return wo.set.call(this,t[0],e,o,t[0])};var kp=function(){function t(o){var n=this;this.O=Hl,this.D=!0,this.produce=function(a,i,s){if(typeof a=="function"&&typeof i!="function"){var c=i;i=a;var p=n;return function(O){var P=this;O===void 0&&(O=c);for(var T=arguments.length,L=Array(T>1?T-1:0),k=1;k<T;k++)L[k-1]=arguments[k];return p.produce(O,function(F){var M;return(M=i).call.apply(M,[P,F].concat(L))})}}var u;if(typeof i!="function"&&at(6),s!==void 0&&typeof s!="function"&&at(7),pt(a)){var m=Bl(n),y=Sa(n,a,void 0),b=!0;try{u=i(y),b=!1}finally{b?an(m):va(m)}return typeof Promise<"u"&&u instanceof Promise?u.then(function(O){return ya(m,s),ma(O,m)},function(O){throw an(m),O}):(ya(m,s),ma(u,m))}if(!a||typeof a!="object"){if((u=i(a))===void 0&&(u=a),u===Kl&&(u=void 0),n.D&&Aa(u,!0),s){var S=[],v=[];Et("Patches").M(a,u,S,v),s(S,v)}return u}at(21,a)},this.produceWithPatches=function(a,i){if(typeof a=="function")return function(u){for(var m=arguments.length,y=Array(m>1?m-1:0),b=1;b<m;b++)y[b-1]=arguments[b];return n.produceWithPatches(u,function(S){return a.apply(void 0,[S].concat(y))})};var s,c,p=n.produce(a,i,function(u,m){s=u,c=m});return typeof Promise<"u"&&p instanceof Promise?p.then(function(u){return[u,s,c]}):[p,s,c]},typeof o?.useProxies=="boolean"&&this.setUseProxies(o.useProxies),typeof o?.autoFreeze=="boolean"&&this.setAutoFreeze(o.autoFreeze)}var e=t.prototype;return e.createDraft=function(o){pt(o)||at(8),Ft(o)&&(o=Lp(o));var n=Bl(this),a=Sa(this,o,void 0);return a[X].C=!0,va(n),a},e.finishDraft=function(o,n){var a=o&&o[X],i=a.A;return ya(i,n),ma(void 0,i)},e.setAutoFreeze=function(o){this.D=o},e.setUseProxies=function(o){o&&!Hl&&at(20),this.O=o},e.applyPatches=function(o,n){var a;for(a=n.length-1;a>=0;a--){var i=n[a];if(i.path.length===0&&i.op==="replace"){o=i.value;break}}a>-1&&(n=n.slice(a+1));var s=Et("Patches").$;return Ft(o)?s(o,n):this.produce(o,function(c){return s(c,n)})},t}(),et=new kp,Dp=et.produce,kx=et.produceWithPatches.bind(et),Dx=et.setAutoFreeze.bind(et),$x=et.setUseProxies.bind(et),Bx=et.applyPatches.bind(et),Fx=et.createDraft.bind(et),Mx=et.finishDraft.bind(et),cn=Dp;function br(t){"@babel/helpers - typeof";return br=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(e){return typeof e}:function(e){return e&&typeof Symbol=="function"&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},br(t)}function ql(t,e){if(br(t)!="object"||!t)return t;var o=t[Symbol.toPrimitive];if(o!==void 0){var n=o.call(t,e||"default");if(br(n)!="object")return n;throw new TypeError("@@toPrimitive must return a primitive value.")}return(e==="string"?String:Number)(t)}function Yl(t){var e=ql(t,"string");return br(e)=="symbol"?e:e+""}function Xl(t,e,o){return(e=Yl(e))in t?Object.defineProperty(t,e,{value:o,enumerable:!0,configurable:!0,writable:!0}):t[e]=o,t}function Ql(t,e){var o=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter(function(a){return Object.getOwnPropertyDescriptor(t,a).enumerable})),o.push.apply(o,n)}return o}function Ta(t){for(var e=1;e<arguments.length;e++){var o=arguments[e]!=null?arguments[e]:{};e%2?Ql(Object(o),!0).forEach(function(n){Xl(t,n,o[n])}):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(o)):Ql(Object(o)).forEach(function(n){Object.defineProperty(t,n,Object.getOwnPropertyDescriptor(o,n))})}return t}function Ie(t){return"Minified Redux error #"+t+"; visit https://redux.js.org/Errors?code="+t+" for the full message or use the non-minified dev environment for full errors. "}var Jl=function(){return typeof Symbol=="function"&&Symbol.observable||"@@observable"}(),La=function(){return Math.random().toString(36).substring(7).split("").join(".")},dn={INIT:"@@redux/INIT"+La(),REPLACE:"@@redux/REPLACE"+La(),PROBE_UNKNOWN_ACTION:function(){return"@@redux/PROBE_UNKNOWN_ACTION"+La()}};function $p(t){if(typeof t!="object"||t===null)return!1;for(var e=t;Object.getPrototypeOf(e)!==null;)e=Object.getPrototypeOf(e);return Object.getPrototypeOf(t)===e}function Ia(t,e,o){var n;if(typeof e=="function"&&typeof o=="function"||typeof o=="function"&&typeof arguments[3]=="function")throw new Error(Ie(0));if(typeof e=="function"&&typeof o>"u"&&(o=e,e=void 0),typeof o<"u"){if(typeof o!="function")throw new Error(Ie(1));return o(Ia)(t,e)}if(typeof t!="function")throw new Error(Ie(2));var a=t,i=e,s=[],c=s,p=!1;function u(){c===s&&(c=s.slice())}function m(){if(p)throw new Error(Ie(3));return i}function y(O){if(typeof O!="function")throw new Error(Ie(4));if(p)throw new Error(Ie(5));var P=!0;return u(),c.push(O),function(){if(P){if(p)throw new Error(Ie(6));P=!1,u();var L=c.indexOf(O);c.splice(L,1),s=null}}}function b(O){if(!$p(O))throw new Error(Ie(7));if(typeof O.type>"u")throw new Error(Ie(8));if(p)throw new Error(Ie(9));try{p=!0,i=a(i,O)}finally{p=!1}for(var P=s=c,T=0;T<P.length;T++){var L=P[T];L()}return O}function S(O){if(typeof O!="function")throw new Error(Ie(10));a=O,b({type:dn.REPLACE})}function v(){var O,P=y;return O={subscribe:function(L){if(typeof L!="object"||L===null)throw new Error(Ie(11));function k(){L.next&&L.next(m())}k();var F=P(k);return{unsubscribe:F}}},O[Jl]=function(){return this},O}return b({type:dn.INIT}),n={dispatch:b,subscribe:y,getState:m,replaceReducer:S},n[Jl]=v,n}function Bp(t){Object.keys(t).forEach(function(e){var o=t[e],n=o(void 0,{type:dn.INIT});if(typeof n>"u")throw new Error(Ie(12));if(typeof o(void 0,{type:dn.PROBE_UNKNOWN_ACTION()})>"u")throw new Error(Ie(13))})}function ec(t){for(var e=Object.keys(t),o={},n=0;n<e.length;n++){var a=e[n];typeof t[a]=="function"&&(o[a]=t[a])}var i=Object.keys(o),s,c;try{Bp(o)}catch(p){c=p}return function(u,m){if(u===void 0&&(u={}),c)throw c;if(0)var y;for(var b=!1,S={},v=0;v<i.length;v++){var O=i[v],P=o[O],T=u[O],L=P(T,m);if(typeof L>"u"){var k=m&&m.type;throw new Error(Ie(14))}S[O]=L,b=b||L!==T}return b=b||i.length!==Object.keys(u).length,b?S:u}}function Gr(){for(var t=arguments.length,e=new Array(t),o=0;o<t;o++)e[o]=arguments[o];return e.length===0?function(n){return n}:e.length===1?e[0]:e.reduce(function(n,a){return function(){return n(a.apply(void 0,arguments))}})}function tc(){for(var t=arguments.length,e=new Array(t),o=0;o<t;o++)e[o]=arguments[o];return function(n){return function(){var a=n.apply(void 0,arguments),i=function(){throw new Error(Ie(15))},s={getState:a.getState,dispatch:function(){return i.apply(void 0,arguments)}},c=e.map(function(p){return p(s)});return i=Gr.apply(void 0,c)(a.dispatch),Ta(Ta({},a),{},{dispatch:i})}}}function rc(t){var e=function(n){var a=n.dispatch,i=n.getState;return function(s){return function(c){return typeof c=="function"?c(a,i,t):s(c)}}};return e}var oc=rc();oc.withExtraArgument=rc;var Pa=oc;var lc=function(){var t=function(e,o){return t=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(n,a){n.__proto__=a}||function(n,a){for(var i in a)Object.prototype.hasOwnProperty.call(a,i)&&(n[i]=a[i])},t(e,o)};return function(e,o){if(typeof o!="function"&&o!==null)throw new TypeError("Class extends value "+String(o)+" is not a constructor or null");t(e,o);function n(){this.constructor=e}e.prototype=o===null?Object.create(o):(n.prototype=o.prototype,new n)}}(),Fp=function(t,e){var o={label:0,sent:function(){if(i[0]&1)throw i[1];return i[1]},trys:[],ops:[]},n,a,i,s;return s={next:c(0),throw:c(1),return:c(2)},typeof Symbol=="function"&&(s[Symbol.iterator]=function(){return this}),s;function c(u){return function(m){return p([u,m])}}function p(u){if(n)throw new TypeError("Generator is already executing.");for(;o;)try{if(n=1,a&&(i=u[0]&2?a.return:u[0]?a.throw||((i=a.return)&&i.call(a),0):a.next)&&!(i=i.call(a,u[1])).done)return i;switch(a=0,i&&(u=[u[0]&2,i.value]),u[0]){case 0:case 1:i=u;break;case 4:return o.label++,{value:u[1],done:!1};case 5:o.label++,a=u[1],u=[0];continue;case 7:u=o.ops.pop(),o.trys.pop();continue;default:if(i=o.trys,!(i=i.length>0&&i[i.length-1])&&(u[0]===6||u[0]===2)){o=0;continue}if(u[0]===3&&(!i||u[1]>i[0]&&u[1]<i[3])){o.label=u[1];break}if(u[0]===6&&o.label<i[1]){o.label=i[1],i=u;break}if(i&&o.label<i[2]){o.label=i[2],o.ops.push(u);break}i[2]&&o.ops.pop(),o.trys.pop();continue}u=e.call(t,o)}catch(m){u=[6,m],a=0}finally{n=i=0}if(u[0]&5)throw u[1];return{value:u[0]?u[1]:void 0,done:!0}}},jr=function(t,e){for(var o=0,n=e.length,a=t.length;o<n;o++,a++)t[a]=e[o];return t},Mp=Object.defineProperty,Up=Object.defineProperties,zp=Object.getOwnPropertyDescriptors,nc=Object.getOwnPropertySymbols,Hp=Object.prototype.hasOwnProperty,Wp=Object.prototype.propertyIsEnumerable,ac=function(t,e,o){return e in t?Mp(t,e,{enumerable:!0,configurable:!0,writable:!0,value:o}):t[e]=o},er=function(t,e){for(var o in e||(e={}))Hp.call(e,o)&&ac(t,o,e[o]);if(nc)for(var n=0,a=nc(e);n<a.length;n++){var o=a[n];Wp.call(e,o)&&ac(t,o,e[o])}return t},_a=function(t,e){return Up(t,zp(e))},Vp=function(t,e,o){return new Promise(function(n,a){var i=function(p){try{c(o.next(p))}catch(u){a(u)}},s=function(p){try{c(o.throw(p))}catch(u){a(u)}},c=function(p){return p.done?n(p.value):Promise.resolve(p.value).then(i,s)};c((o=o.apply(t,e)).next())})};var Gp=typeof window<"u"&&window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__?window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__:function(){if(arguments.length!==0)return typeof arguments[0]=="object"?Gr:Gr.apply(null,arguments)},ov=typeof window<"u"&&window.__REDUX_DEVTOOLS_EXTENSION__?window.__REDUX_DEVTOOLS_EXTENSION__:function(){return function(t){return t}};function jp(t){if(typeof t!="object"||t===null)return!1;var e=Object.getPrototypeOf(t);if(e===null)return!0;for(var o=e;Object.getPrototypeOf(o)!==null;)o=Object.getPrototypeOf(o);return e===o}var Kp=function(t){lc(e,t);function e(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];var a=t.apply(this,o)||this;return Object.setPrototypeOf(a,e.prototype),a}return Object.defineProperty(e,Symbol.species,{get:function(){return e},enumerable:!1,configurable:!0}),e.prototype.concat=function(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];return t.prototype.concat.apply(this,o)},e.prototype.prepend=function(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];return o.length===1&&Array.isArray(o[0])?new(e.bind.apply(e,jr([void 0],o[0].concat(this)))):new(e.bind.apply(e,jr([void 0],o.concat(this))))},e}(Array),Zp=function(t){lc(e,t);function e(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];var a=t.apply(this,o)||this;return Object.setPrototypeOf(a,e.prototype),a}return Object.defineProperty(e,Symbol.species,{get:function(){return e},enumerable:!1,configurable:!0}),e.prototype.concat=function(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];return t.prototype.concat.apply(this,o)},e.prototype.prepend=function(){for(var o=[],n=0;n<arguments.length;n++)o[n]=arguments[n];return o.length===1&&Array.isArray(o[0])?new(e.bind.apply(e,jr([void 0],o[0].concat(this)))):new(e.bind.apply(e,jr([void 0],o.concat(this))))},e}(Array);function $a(t){return pt(t)?cn(t,function(){}):t}function qp(t){return typeof t=="boolean"}function Yp(){return function(e){return Xp(e)}}function Xp(t){t===void 0&&(t={});var e=t.thunk,o=e===void 0?!0:e,n=t.immutableCheck,a=n===void 0?!0:n,i=t.serializableCheck,s=i===void 0?!0:i,c=new Kp;if(o&&(qp(o)?c.push(Pa):c.push(Pa.withExtraArgument(o.extraArgument))),0){if(a)var p;if(s)var u}return c}var ka=!0;function cc(t){var e=Yp(),o=t||{},n=o.reducer,a=n===void 0?void 0:n,i=o.middleware,s=i===void 0?e():i,c=o.devTools,p=c===void 0?!0:c,u=o.preloadedState,m=u===void 0?void 0:u,y=o.enhancers,b=y===void 0?void 0:y,S;if(typeof a=="function")S=a;else if(jp(a))S=ec(a);else throw new Error('"reducer" is a required argument, and must be a function or an object of functions that can be passed to combineReducers');var v=s;if(typeof v=="function"&&(v=v(e),!ka&&!Array.isArray(v)))throw new Error("when using a middleware builder function, an array of middleware must be returned");if(!ka&&v.some(function(F){return typeof F!="function"}))throw new Error("each middleware provided to configureStore must be a function");var O=tc.apply(void 0,v),P=Gr;p&&(P=Gp(er({trace:!ka},typeof p=="object"&&p)));var T=new Zp(O),L=T;Array.isArray(b)?L=jr([O],b):typeof b=="function"&&(L=b(T));var k=P.apply(void 0,L);return Ia(S,m,k)}function tr(t,e){function o(){for(var n=[],a=0;a<arguments.length;a++)n[a]=arguments[a];if(e){var i=e.apply(void 0,n);if(!i)throw new Error("prepareAction did not return an object");return er(er({type:t,payload:i.payload},"meta"in i&&{meta:i.meta}),"error"in i&&{error:i.error})}return{type:t,payload:n[0]}}return o.toString=function(){return""+t},o.type=t,o.match=function(n){return n.type===t},o}function dc(t){var e={},o=[],n,a={addCase:function(i,s){var c=typeof i=="string"?i:i.type;if(c in e)throw new Error("addCase cannot be called with two reducers for the same action type");return e[c]=s,a},addMatcher:function(i,s){return o.push({matcher:i,reducer:s}),a},addDefaultCase:function(i){return n=i,a}};return t(a),[e,o,n]}function Qp(t){return typeof t=="function"}function Jp(t,e,o,n){o===void 0&&(o=[]);var a=typeof e=="function"?dc(e):[e,o,n],i=a[0],s=a[1],c=a[2],p;if(Qp(t))p=function(){return $a(t())};else{var u=$a(t);p=function(){return u}}function m(y,b){y===void 0&&(y=p());var S=jr([i[b.type]],s.filter(function(v){var O=v.matcher;return O(b)}).map(function(v){var O=v.reducer;return O}));return S.filter(function(v){return!!v}).length===0&&(S=[c]),S.reduce(function(v,O){if(O)if(Ft(v)){var P=v,T=O(P,b);return T===void 0?v:T}else{if(pt(v))return cn(v,function(L){return O(L,b)});var T=O(v,b);if(T===void 0){if(v===null)return v;throw Error("A case reducer on a non-draftable value must not return undefined")}return T}return v},y)}return m.getInitialState=p,m}function eu(t,e){return t+"/"+e}function pc(t){var e=t.name;if(!e)throw new Error("`name` is a required option for createSlice");typeof process<"u";var o=typeof t.initialState=="function"?t.initialState:$a(t.initialState),n=t.reducers||{},a=Object.keys(n),i={},s={},c={};a.forEach(function(m){var y=n[m],b=eu(e,m),S,v;"reducer"in y?(S=y.reducer,v=y.prepare):S=y,i[m]=S,s[b]=S,c[m]=v?tr(b,v):tr(b)});function p(){var m=typeof t.extraReducers=="function"?dc(t.extraReducers):[t.extraReducers],y=m[0],b=y===void 0?{}:y,S=m[1],v=S===void 0?[]:S,O=m[2],P=O===void 0?void 0:O,T=er(er({},b),s);return Jp(o,function(L){for(var k in T)L.addCase(k,T[k]);for(var F=0,M=v;F<M.length;F++){var He=M[F];L.addMatcher(He.matcher,He.reducer)}P&&L.addDefaultCase(P)})}var u;return{name:e,reducer:function(m,y){return u||(u=p()),u(m,y)},actions:c,caseReducers:i,getInitialState:function(){return u||(u=p()),u.getInitialState()}}}var tu="ModuleSymbhasOwnPr-0123456789ABCDEFGHNRVfgctiUvz_KqYTJkLxpZXIjQW",ru=function(t){t===void 0&&(t=21);for(var e="",o=t;o--;)e+=tu[Math.random()*64|0];return e},ou=["name","message","stack","code"],Da=function(){function t(e,o){this.payload=e,this.meta=o}return t}(),ic=function(){function t(e,o){this.payload=e,this.meta=o}return t}(),nu=function(t){if(typeof t=="object"&&t!==null){for(var e={},o=0,n=ou;o<n.length;o++){var a=n[o];typeof t[a]=="string"&&(e[a]=t[a])}return e}return{message:String(t)}},sv=function(){function t(e,o,n){var a=tr(e+"/fulfilled",function(m,y,b,S){return{payload:m,meta:_a(er({},S||{}),{arg:b,requestId:y,requestStatus:"fulfilled"})}}),i=tr(e+"/pending",function(m,y,b){return{payload:void 0,meta:_a(er({},b||{}),{arg:y,requestId:m,requestStatus:"pending"})}}),s=tr(e+"/rejected",function(m,y,b,S,v){return{payload:S,error:(n&&n.serializeError||nu)(m||"Rejected"),meta:_a(er({},v||{}),{arg:b,requestId:y,rejectedWithValue:!!S,requestStatus:"rejected",aborted:m?.name==="AbortError",condition:m?.name==="ConditionError"})}}),c=!1,p=typeof AbortController<"u"?AbortController:function(){function m(){this.signal={aborted:!1,addEventListener:function(){},dispatchEvent:function(){return!1},onabort:function(){},removeEventListener:function(){},reason:void 0,throwIfAborted:function(){}}}return m.prototype.abort=function(){},m}();function u(m){return function(y,b,S){var v=n?.idGenerator?n.idGenerator(m):ru(),O=new p,P,T=!1;function L(F){P=F,O.abort()}var k=function(){return Vp(this,null,function(){var F,M,He,mt,De,gt,xe;return Fp(this,function(h){switch(h.label){case 0:return h.trys.push([0,4,,5]),mt=(F=n?.condition)==null?void 0:F.call(n,m,{getState:b,extra:S}),iu(mt)?[4,mt]:[3,2];case 1:mt=h.sent(),h.label=2;case 2:if(mt===!1||O.signal.aborted)throw{name:"ConditionError",message:"Aborted due to condition callback returning false."};return T=!0,De=new Promise(function(x,_){return O.signal.addEventListener("abort",function(){return _({name:"AbortError",message:P||"Aborted"})})}),y(i(v,m,(M=n?.getPendingMeta)==null?void 0:M.call(n,{requestId:v,arg:m},{getState:b,extra:S}))),[4,Promise.race([De,Promise.resolve(o(m,{dispatch:y,getState:b,extra:S,requestId:v,signal:O.signal,abort:L,rejectWithValue:function(x,_){return new Da(x,_)},fulfillWithValue:function(x,_){return new ic(x,_)}})).then(function(x){if(x instanceof Da)throw x;return x instanceof ic?a(x.payload,v,m,x.meta):a(x,v,m)})])];case 3:return He=h.sent(),[3,5];case 4:return gt=h.sent(),He=gt instanceof Da?s(null,v,m,gt.payload,gt.meta):s(gt,v,m),[3,5];case 5:return xe=n&&!n.dispatchConditionRejection&&s.match(He)&&He.meta.condition,xe||y(He),[2,He]}})})}();return Object.assign(k,{abort:L,requestId:v,arg:m,unwrap:function(){return k.then(au)}})}}return Object.assign(u,{pending:i,rejected:s,fulfilled:a,typePrefix:e})}return t.withTypes=function(){return t},t}();function au(t){if(t.meta&&t.meta.rejectedWithValue)throw t.payload;if(t.error)throw t.error;return t.payload}function iu(t){return t!==null&&typeof t=="object"&&typeof t.then=="function"}var uc="listener",fc="completed",hc="cancelled",lv="task-"+hc,cv="task-"+fc,dv=uc+"-"+hc,pv=uc+"-"+fc;var Ba="listenerMiddleware";var uv=tr(Ba+"/add"),fv=tr(Ba+"/removeAll"),hv=tr(Ba+"/remove");var sc,yv=typeof queueMicrotask=="function"?queueMicrotask.bind(typeof window<"u"?window:typeof global<"u"?global:globalThis):function(t){return(sc||(sc=Promise.resolve())).then(t).catch(function(e){return setTimeout(function(){throw e},0)})},su=function(t){return function(e){setTimeout(e,t)}},mv=typeof window<"u"&&window.requestAnimationFrame?window.requestAnimationFrame:su(10);jl();function lu(t,e){return class extends t{constructor(){super(...arguments),this.eventBus=e??document.createElement("span")}addEventListener(o,n,a){this.eventBus.addEventListener(o,n,a)}dispatchEvent(o){return this.eventBus.dispatchEvent(o)}removeEventListener(o,n,a){this.eventBus.removeEventListener(o,n,a)}}}var pn=class extends lu(Object){};window.ftReduxStores||(window.ftReduxStores={});var yc=class t extends pn{static get(e){var o;let n=typeof e=="string"?e:e.name,a=typeof e=="string"?void 0:e,i=window.ftReduxStores[n];if(vo(i))return i;if(a==null)return;let s=pc({...a,reducers:(o=a.reducers)!==null&&o!==void 0?o:{}}),c=cc({reducer:(p,u)=>u.type==="CLEAR_FT_REDUX_STORE"?s.getInitialState():typeof u.type=="string"&&u.type.startsWith("DEFAULT_VALUE_SETTER__")?{...p,...u.overwrites}:s.reducer(p,u)});return window.ftReduxStores[a.name]=new t(s,c,a.eventBus)}constructor(e,o,n){super(),this.reduxSlice=e,this.reduxStore=o,this.isFtReduxStore=!0,this.commands=new tn;let a=i=>i!=null?JSON.parse(JSON.stringify(i)):i;this.actions=new Proxy(this.reduxSlice.actions,{get:(i,s,c)=>{let p=s,u=i[p];return u?(...m)=>{let y=u(...m.map(a));return this.reduxStore.dispatch(y),y}:m=>{this.setState({[p]:a(m)})}}}),this.eventBus=n??this.eventBus}clear(){this.reduxStore.dispatch({type:"CLEAR_FT_REDUX_STORE"})}setState(e){this.reduxStore.dispatch({type:"DEFAULT_VALUE_SETTER__"+Object.keys(e).join("_"),overwrites:e})}get dispatch(){throw new Error("Don't use this method, actions are automatically dispatched when called.")}[Symbol.observable](){return this.reduxStore[Symbol.observable]()}getState(){return this.reduxStore.getState()}replaceReducer(e){throw new Error("Not implemented yet.")}subscribe(e){return this.reduxStore.subscribe(e)}get name(){return this.reduxSlice.name}get reducer(){return this.reduxSlice.reducer}get caseReducers(){return this.reduxSlice.caseReducers}getInitialState(){return this.reduxSlice.getInitialState()}};var yn=g(N());var un=class extends Ot{async listMySearches(){let e=I.getState().session;return e?.sessionAuthenticated?this.cache.get("my-searches",async()=>(await this.awaitApi).listMySearches(e.profile.userId),5*60*1e3):[]}};var fn=class extends Ot{async listMyBookmarks(){let e=I.getState().session;return e?.sessionAuthenticated?this.cache.get("my-bookmarks",async()=>(await this.awaitApi).listMyBookmarks(e.profile.userId),5*60*1e3):[]}};var du="ft-user-assets",hn=yn.FtReduxStore.get({name:du,initialState:{savedSearches:void 0,bookmarks:void 0}}),Fa=class{constructor(){this.currentSession=I.getState().session,this.bookmarksAreUsed=!1,this.bookmarksService=new fn,this.savedSearchesService=new un,I.subscribe(()=>this.reloadWhenUserSessionChanges())}reloadWhenUserSessionChanges(){var e;let{session:o}=I.getState();(0,yn.deepEqual)((e=this.currentSession)===null||e===void 0?void 0:e.profile,o?.profile)||(this.currentSession=o,this.clearMySearches(),this.reloadBookmarks())}clear(){this.clearMySearches(),this.clearMyBookmarks()}clearMySearches(){this.savedSearchesService.clearCache(),hn.actions.savedSearches(void 0)}clearMyBookmarks(){this.bookmarksService.clearCache(),hn.actions.bookmarks(void 0)}async reloadMySearches(){this.savedSearchesService.clearCache();let e=await this.savedSearchesService.listMySearches();hn.actions.savedSearches(e)}async reloadBookmarks(){this.bookmarksService.clearCache(),await this.updateBookmarksIfUsed()}async registerBookmarkComponent(){this.bookmarksAreUsed=!0,await this.updateBookmarksIfUsed()}async updateBookmarksIfUsed(){var e;if(this.bookmarksAreUsed){let o=!((e=this.currentSession)===null||e===void 0)&&e.sessionAuthenticated?await this.bookmarksService.listMyBookmarks():void 0;hn.actions.bookmarks(o)}}},mc=new Fa;var Ma=class{addCommand(e,o=!1){I.commands.add(e,o)}consumeCommand(e){return I.commands.consume(e)}};window.FluidTopicsAppInfoStoreService=new Ma;var gc=g(N()),Ua=class{highlightHtml(e,o,n){(0,gc.highlightHtml)(e,o,n)}};window.FluidTopicsHighlightHtmlService=new Ua;var bc=g(N());var za=class{isDate(e){var o,n,a,i;return(i=(a=((n=(o=I.getState().metadataConfiguration)===null||o===void 0?void 0:o.descriptors)!==null&&n!==void 0?n:[]).find(c=>c.key===e))===null||a===void 0?void 0:a.date)!==null&&i!==void 0?i:!1}format(e,o){var n,a,i;return bc.DateFormatter.format(e,(n=o?.locale)!==null&&n!==void 0?n:I.getState().uiLocale,(a=o?.longFormat)!==null&&a!==void 0?a:!1,(i=o?.withTime)!==null&&i!==void 0?i:!1)}};window.FluidTopicsDateService=new za;var xc=g(N());var Ao=class{static get(e,o){var n,a,i,s;let c=I.getState(),{lang:p,region:u}=(a=(n=c.defaultLocales)===null||n===void 0?void 0:n.defaultContentLocale)!==null&&a!==void 0?a:{lang:"en",region:"US"};return new xc.SearchPlaceConverter(c.baseUrl,(s=(i=window.FluidTopicsClientConfiguration)===null||i===void 0?void 0:i.predefinedSorts)!==null&&s!==void 0?s:{},e??20,c.searchInAllLanguagesAllowed,o??`${p}-${u}`)}};var mn=class extends Yt{async sendDocumentStartDisplayEvent(e){return(await this.awaitApi).sendEvents([e]).catch(o=>{console.info("Failed to send document.start_display event"),console.debug(o)})}async sendTopicStartDisplayEvent(e){return(await this.awaitApi).sendEvents([e]).catch(o=>{console.info("Failed to send topic.start_display event"),console.debug(o)})}async sendKhubSearchEvent(e){return(await this.awaitApi).sendEvents([e]).catch(o=>{console.info("Failed to send khub.search event"),console.debug(o)})}async sendDocumentSearchEvent(e){return(await this.awaitApi).sendEvents([e]).catch(o=>{console.info("Failed to send document.search event"),console.debug(o)})}async sendSearchPageSelectEvent(e){return(await this.awaitApi).sendEvents([e]).catch(o=>{console.info("Failed to send search_page.select event"),console.debug(o)})}};var Ha=class{urlToSearchRequest(e){return Ao.get().parse(e)}searchRequestToUrl(e){return Ao.get().serialize(e)}};window.FluidTopicsUrlService=new Ha;(0,vc.customElement)("ft-app-context")(re);var wc=g(V());var pu=g(N());function Sc(t){return t.match(/^[\w-]+\.[\w-]+$/)}var uu=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Oc=Symbol("i18nAttributes"),Cc=Symbol("i18nListAttributes"),Ac=Symbol("i18nProperties"),gn=Symbol("i18nContexts"),Ro=Symbol("i18nUnsubs");function Kr(t){var e,o;class n extends t{constructor(){super(...arguments),this.useCustomMessageContexts=!1,this[e]=new Map,this[o]=new Map}getI18nService(i){return i??this.useCustomMessageContexts?Qo:Ur}i18n(i){var s;this.hasI18nContext(i.context)||this.addI18nContext(i.context,void 0,i.custom);let c=(s=i.args)!==null&&s!==void 0?s:i.argsProvider?i.argsProvider(this):[];return this.getI18nService(i.custom).resolveMessage(i.context,i.key,...c)}customI18n(i,s){if(Sc(i)){let[c,p]=i.split(".");return this.i18n({custom:!0,context:c,key:p,...s})||i}return i}firstUpdated(i){super.firstUpdated(i),this.updateI18nAttributes(()=>!0),this.updateI18nProperties(()=>!0)}update(i){super.update(i),this.updateI18nAttributes((s,c,p)=>i.has(c)||typeof s.argsProvider=="function"),this.updateI18nProperties(s=>typeof s.argsProvider=="function")}onI18nUpdate(i){this.updateI18nAttributes((s,c,p)=>{var u;return((u=p?.context)===null||u===void 0?void 0:u.toLowerCase())===i}),this.updateI18nProperties(s=>s.context.toLowerCase()===i),this.requestUpdate()}updateI18nAttributes(i){var s,c;let p=this,u=(m,y,b)=>b?.context&&b.key&&i(m,y,b)?{...b,message:this.i18n({context:b.context,key:b.key,...m})}:b;(s=this[Oc])===null||s===void 0||s.forEach((m,y)=>p[y]=u(m,y,p[y])),(c=this[Cc])===null||c===void 0||c.forEach((m,y)=>{var b;return p[y]=(b=p[y])===null||b===void 0?void 0:b.map(S=>u(m,y,S))})}updateI18nProperties(i){var s;(s=this[Ac])===null||s===void 0||s.forEach((c,p)=>{i(c,p)&&(this[p]=this.i18n(c))})}addI18nMessages(i,s,c){console.warn('Deprecated usage of method "addI18nMessages", use "addI18nContext" instead.'),this.addI18nContext(i,s,c)}addI18nContext(i,s,c){let p=(typeof i=="string"?i:i.name).toLowerCase();c=typeof i=="string"?c:i.custom,this[gn].set(p,{isCustomContext:c}),this[Ro].has(p)||this[Ro].set(p,this.getI18nService(c).subscribe(p,()=>this.onI18nUpdate(p))),this.getI18nService(c).prepareContext(p,s)}hasI18nContext(i){return this[gn].has(i.toLowerCase())}connectedCallback(){super.connectedCallback(),this[gn].forEach((i,s)=>this.addI18nContext(s,void 0,i.isCustomContext))}disconnectedCallback(){super.disconnectedCallback(),this[Ro].forEach(i=>i()),this[Ro].clear()}}return e=gn,o=Ro,uu([(0,wc.property)({type:Boolean})],n.prototype,"useCustomMessageContexts",void 0),n}var Ec=class extends Kr(xn.FtLitElement){},bn=class extends Kr(xn.FtLitElementRedux){};var No=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},ut=class extends bn{constructor(){super(),this.editorMode=!1,this.addStore(I)}render(){return!this.key||!this.context?this.editorMode?"Select a context and a label key.":vn.nothing:vn.html`
            <span class="ft-i18n">
                ${this.i18n({context:this.context,key:this.key,args:Array.isArray(this.args)?this.args:[]})}
            </span>
        `}update(e){var o;super.update(e),["context","key","defaultMessage"].some(n=>e.has(n))&&this.context&&this.key&&this.addI18nContext(this.context,{[this.key]:(o=this.defaultMessage)!==null&&o!==void 0?o:""})}};ut.elementDefinitions={};ut.styles=xl;No([(0,On.redux)()],ut.prototype,"editorMode",void 0);No([(0,Sn.property)()],ut.prototype,"context",void 0);No([(0,Sn.property)()],ut.prototype,"key",void 0);No([(0,On.jsonProperty)([])],ut.prototype,"args",void 0);No([(0,Sn.property)()],ut.prototype,"defaultMessage",void 0);var Cn=class t{static build(e){return new t(e)}static buildCustom(e){return new t(e,!0)}static fromGwt(e){return new t(e)}get service(){return this.custom?Qo:Ur}constructor(e,o=!1){this.name=e,this.custom=o,this.properties=new Proxy({},{get:(n,a)=>{let i=a;return s=>({context:this.name,key:i,custom:this.custom,args:typeof s=="function"?void 0:s,argsProvider:typeof s=="function"?s:void 0})}}),this.messages=new Proxy({},{get:(n,a)=>(...i)=>this.service.resolveMessage(this.name,a,...i)}),this.rawMessages=new Proxy({},{get:(n,a)=>this.service.resolveRawMessage(this.name,a)})}};(0,Rc.customElement)("ft-i18n")(ut);var Xc=g(N()),Qc=g(V());var tt=g(N());var En=g(N()),fu={setRequest:(t,e)=>{t.request=e.payload},setRequestQuery:(t,e)=>{t.request.query=e.payload},setRequestContentLocale:(t,e)=>{t.request.contentLocale=e.payload},setPageSize:(t,e)=>{var o;let n=+((o=e.payload)!==null&&o!==void 0?o:20);t.request.paging.perPage=isNaN(n)?20:(0,En.minmax)(1,n,1e3)},setPageNumber:(t,e)=>{t.request.paging.page=isNaN(e.payload)?1:Math.max(1,e.payload)},setRequestSort:(t,e)=>{t.request.sort=e.payload},setRequestFilters:(t,e)=>{t.request.metadataFilters=e.payload},setRequestFacets:(t,e)=>{t.request.facets=e.payload},setRequestVirtualField:(t,e)=>{t.request.virtualField=e.payload},setRequestScope:(t,e)=>{t.request.scope=e.payload},setOtherQueryParams:(t,e)=>{t.request.otherQueryParams=e.payload},setRequestClusterSortCriterion:(t,e)=>{var o;t.request.clusterSortCriterions=(o=e.payload)!==null&&o!==void 0?o:[]}},Nc=t=>En.FtReduxStore.get({name:"ft-search-"+t,initialState:{request:{query:"",clusterSortCriterions:[],metadataFilters:[],facets:[],sort:[],paging:{page:1,perPage:20}},liveQuery:"",paging:void 0,facets:void 0,spellcheck:void 0,locales:[],results:void 0,suggestResults:void 0},reducers:fu});var hu=g(Lc(),1);var Ic;(function(t){t.black="black",t.green="green",t.blue="blue",t.purple="purple",t.red="red",t.orange="orange",t.yellow="yellow"})(Ic||(Ic={}));var Pc;(function(t){t.OFFICIAL="OFFICIAL",t.PERSONAL="PERSONAL",t.SHARED="SHARED"})(Pc||(Pc={}));var qr;(function(t){t.STRUCTURED_DOCUMENT="STRUCTURED_DOCUMENT",t.UNSTRUCTURED_DOCUMENT="UNSTRUCTURED_DOCUMENT",t.SHARED_PERSONAL_BOOK="SHARED_PERSONAL_BOOK",t.PERSONAL_BOOK="PERSONAL_BOOK",t.MAP_ATTACHMENT="MAP_ATTACHMENT",t.RESOURCE="RESOURCE"})(qr||(qr={}));var _c;(function(t){t.LAST_WEEK="LAST_WEEK",t.LAST_MONTH="LAST_MONTH",t.LAST_QUARTER="LAST_QUARTER",t.LAST_YEAR="LAST_YEAR"})(_c||(_c={}));var kc;(function(t){t.VALUE="VALUE",t.DATE="DATE",t.RANGE="RANGE"})(kc||(kc={}));var Yr;(function(t){t.BOOKMARK__CREATE="BOOKMARK__CREATE",t.BOOKMARK__DELETE="BOOKMARK__DELETE",t.CASE_DEFLECTION__START="CASE_DEFLECTION__START",t.CASE_DEFLECTION__OPEN_TICKET="CASE_DEFLECTION__OPEN_TICKET",t.CASE_DEFLECTION__RATE="CASE_DEFLECTION__RATE",t.COLLECTION__CREATE="COLLECTION__CREATE",t.COLLECTION__UPDATE="COLLECTION__UPDATE",t.COLLECTION__DELETE="COLLECTION__DELETE",t.DOCUMENT__DISPLAY="DOCUMENT__DISPLAY",t.DOCUMENT__DOWNLOAD="DOCUMENT__DOWNLOAD",t.DOCUMENT__PRINT="DOCUMENT__PRINT",t.DOCUMENT__PROCESS="DOCUMENT__PROCESS",t.DOCUMENT__RATE="DOCUMENT__RATE",t.DOCUMENT__SEARCH="DOCUMENT__SEARCH",t.DOCUMENT__START_DISPLAY="DOCUMENT__START_DISPLAY",t.DOCUMENT__UNRATE="DOCUMENT__UNRATE",t.FEEDBACK__SEND="FEEDBACK__SEND",t.GEN_AI__COMPLETED_QUERY="GEN_AI__COMPLETED_QUERY",t.GEN_AI__RATE="GEN_AI__RATE",t.GENAI_CASE_DEFLECTION__START="GENAI_CASE_DEFLECTION__START",t.GENAI_CASE_DEFLECTION__OPEN_TICKET="GENAI_CASE_DEFLECTION__OPEN_TICKET",t.KHUB__PROCESS="KHUB__PROCESS",t.KHUB__SEARCH="KHUB__SEARCH",t.LABELS__DOWNLOAD="LABELS__DOWNLOAD",t.LINK__SHARE="LINK__SHARE",t.PAGE__DISPLAY="PAGE__DISPLAY",t.PERSONAL_BOOK__CREATE="PERSONAL_BOOK__CREATE",t.PERSONAL_BOOK__DELETE="PERSONAL_BOOK__DELETE",t.PERSONAL_BOOK__UPDATE="PERSONAL_BOOK__UPDATE",t.PERSONAL_TOPIC__CREATE="PERSONAL_TOPIC__CREATE",t.PERSONAL_TOPIC__UPDATE="PERSONAL_TOPIC__UPDATE",t.PERSONAL_TOPIC__DELETE="PERSONAL_TOPIC__DELETE",t.SAVED_SEARCH__CREATE="SAVED_SEARCH__CREATE",t.SAVED_SEARCH__DELETE="SAVED_SEARCH__DELETE",t.SAVED_SEARCH__UPDATE="SAVED_SEARCH__UPDATE",t.SEARCH_PAGE__SELECT="SEARCH_PAGE__SELECT",t.TOPIC__DISPLAY="TOPIC__DISPLAY",t.TOPIC__RATE="TOPIC__RATE",t.TOPIC__START_DISPLAY="TOPIC__START_DISPLAY",t.TOPIC__UNRATE="TOPIC__UNRATE",t.USER__LOGIN="USER__LOGIN",t.USER__LOGOUT="USER__LOGOUT",t.HEARTBEAT="HEARTBEAT"})(Yr||(Yr={}));var Dc;(function(t){t.THIRD_PARTY="THIRD_PARTY",t.OFF_THE_GRID="OFF_THE_GRID",t.CONTENT_PACKAGER="CONTENT_PACKAGER",t.PAGES="PAGES",t.DESIGNED_READER="DESIGNED_READER"})(Dc||(Dc={}));var $c;(function(t){t.HOMEPAGE="HOMEPAGE",t.CUSTOM="CUSTOM",t.HEADER="HEADER",t.READER="READER",t.TOPIC_TEMPLATE="TOPIC_TEMPLATE",t.SEARCH="SEARCH",t.SEARCH_RESULT="SEARCH_RESULT"})($c||($c={}));var Bc;(function(t){t.CLASSIC="CLASSIC",t.CUSTOM="CUSTOM",t.DESIGNER="DESIGNER"})(Bc||(Bc={}));var Fc;(function(t){t.AND="AND",t.OR="OR",t.MONOVALUED="MONOVALUED"})(Fc||(Fc={}));var Mc;(function(t){t.NONE="NONE",t.ALPHABET="ALPHABET",t.VERSION="VERSION"})(Mc||(Mc={}));var Uc;(function(t){t.STARS="STARS",t.LIKE="LIKE",t.DICHOTOMOUS="DICHOTOMOUS",t.NO_RATING="NO_RATING"})(Uc||(Uc={}));var zc;(function(t){t.LAST_WEEK="LAST_WEEK",t.LAST_MONTH="LAST_MONTH",t.LAST_QUARTER="LAST_QUARTER",t.LAST_YEAR="LAST_YEAR",t.CUSTOM="CUSTOM"})(zc||(zc={}));var Hc;(function(t){t.ASC="ASC",t.DESC="DESC"})(Hc||(Hc={}));var Wc;(function(t){t.ALPHA="ALPHA",t.NATURAL="NATURAL"})(Wc||(Wc={}));var Xr;(function(t){t.EVERYWHERE="EVERYWHERE",t.TITLE_ONLY="TITLE_ONLY",t.NONE="NONE"})(Xr||(Xr={}));var Vc;(function(t){t.ARTICLE="ARTICLE",t.BOOK="BOOK",t.SHARED_BOOK="SHARED_BOOK"})(Vc||(Vc={}));var Gc;(function(t){t.FLUIDTOPICS="FLUIDTOPICS",t.EXTERNAL="EXTERNAL"})(Gc||(Gc={}));var jc;(function(t){t.MAP="MAP",t.DOCUMENT="DOCUMENT",t.TOPIC="TOPIC",t.PERSONAL_BOOK="PERSONAL_BOOK",t.SHARED_BOOK="SHARED_BOOK"})(jc||(jc={}));var Kc;(function(t){t.LAST_WEEK="LAST_WEEK",t.LAST_MONTH="LAST_MONTH",t.LAST_QUARTER="LAST_QUARTER",t.LAST_YEAR="LAST_YEAR"})(Kc||(Kc={}));var xr;(function(t){t.MAP="MAP",t.DOCUMENT="DOCUMENT",t.TOPIC="TOPIC"})(xr||(xr={}));var Qr;(function(t){t.DEFAULT="DEFAULT",t.DOCUMENTS="DOCUMENTS",t.ALL_TOPICS="ALL_TOPICS",t.TOPICS_AND_UNSTRUCTURED_DOCUMENTS="TOPICS_AND_UNSTRUCTURED_DOCUMENTS"})(Qr||(Qr={}));var Ce;(function(t){t.PERSONAL_BOOK_USER="PERSONAL_BOOK_USER",t.PERSONAL_BOOK_SHARE_USER="PERSONAL_BOOK_SHARE_USER",t.HTML_EXPORT_USER="HTML_EXPORT_USER",t.PDF_EXPORT_USER="PDF_EXPORT_USER",t.SAVED_SEARCH_USER="SAVED_SEARCH_USER",t.COLLECTION_USER="COLLECTION_USER",t.OFFLINE_USER="OFFLINE_USER",t.ANALYTICS_USER="ANALYTICS_USER",t.BETA_USER="BETA_USER",t.DEBUG_USER="DEBUG_USER",t.PRINT_USER="PRINT_USER",t.RATING_USER="RATING_USER",t.FEEDBACK_USER="FEEDBACK_USER",t.GENERATIVE_AI_USER="GENERATIVE_AI_USER",t.GENERATIVE_AI_EXPORT_USER="GENERATIVE_AI_EXPORT_USER",t.CONTENT_PUBLISHER="CONTENT_PUBLISHER",t.KHUB_ADMIN="KHUB_ADMIN",t.USERS_ADMIN="USERS_ADMIN",t.PORTAL_ADMIN="PORTAL_ADMIN",t.ADMIN="ADMIN"})(Ce||(Ce={}));var Zc;(function(t){t.VALID="VALID",t.INVALID="INVALID"})(Zc||(Zc={}));var qc;(function(t){t.TEXT="TEXT",t.HTML="HTML"})(qc||(qc={}));var rS={[Ce.PERSONAL_BOOK_SHARE_USER]:[Ce.PERSONAL_BOOK_USER],[Ce.HTML_EXPORT_USER]:[Ce.PERSONAL_BOOK_USER],[Ce.PDF_EXPORT_USER]:[Ce.PERSONAL_BOOK_USER],[Ce.KHUB_ADMIN]:[Ce.CONTENT_PUBLISHER],[Ce.ADMIN]:[Ce.KHUB_ADMIN,Ce.USERS_ADMIN,Ce.PORTAL_ADMIN],[Ce.GENERATIVE_AI_EXPORT_USER]:[Ce.GENERATIVE_AI_USER]};var Rn=class extends Ot{constructor(e){super(!0,e),this.sortObjectFields=(o,n)=>typeof n!="object"||n==null||Array.isArray(n)?n:Object.fromEntries(Object.entries(n).sort(([a],[i])=>a.localeCompare(i)))}async launchSearch(e){let o={...e,metadataFilters:this.sortFilters(e.metadataFilters),facets:[...e.facets].sort((n,a)=>n.id.localeCompare(a.id))};return this.cache.get("search-"+this.hash(o),async()=>(await this.awaitApi).search(e),2*60*1e3)}async launchSuggest(e){let o={...e,metadataFilters:this.sortFilters(e.metadataFilters)};return this.cache.get("suggest-"+this.hash(o),async()=>(await this.awaitApi).getSuggestions(e),2*60*1e3)}async getAvailableSearchLocales(){return this.cache.get("available-locales",async()=>(await this.awaitApi).getAvailableSearchLocales())}sortFilters(e){return e.map(o=>o.valueFilter==null?o:{...o,valueFilter:{...o.valueFilter,values:[...o.valueFilter.values].sort((n,a)=>n.localeCompare(a))}}).sort((o,n)=>o.key.localeCompare(n.key))}hash(e){return String(Array.from(JSON.stringify(e,this.sortObjectFields)).reduce((o,n)=>0|31*o+n.charCodeAt(0),0))}};var yu=t=>t.request.virtualField===Xr.TITLE_ONLY&&t.request.scope===Qr.DOCUMENTS,Jr=class t extends Event{constructor(){super(t.eventName)}};Jr.eventName="search-context-clear-all-filters";var To=class t{static build(e,o){return new t(Nc(e.trim()||"context"),o)}constructor(e,o){this.store=e,this.ignoreEmptyQuery=!1,this.openExternalDocumentInNewTab=!1,this.localesDebouncer=new tt.Debouncer(10),this.searchDebouncer=new tt.Debouncer(100),this.launchSearch=n=>this.searchDebouncer.run(()=>this.fetchSearchData(n??this.buildSearchRequest(this.store.getState()))),this.buildSearchRequest=n=>({...n.request,facets:this.facetIds.map(a=>({id:a}))}),this.suggestDebouncer=new tt.Debouncer(300),this.launchSuggest=n=>this.suggestDebouncer.run(()=>this.fetchSuggestData(n??this.buildSuggestRequest(this.store.getState()))),this.buildSuggestRequest=n=>({input:n.liveQuery,metadataFilters:n.request.metadataFilters,sort:n.request.sort,contentLocale:n.request.contentLocale,scope:n.request.scope}),this.service=o??new Rn,this.service.cache.addEventListener("clear-cache",n=>{n.detail.clearedKeys.includes("available-locales")&&this.updateLocales()}),this.searchWatcher=(0,tt.watch)(e,this.buildSearchRequest,this.launchSearch),this.suggestWatcher=(0,tt.watch)(e,this.buildSuggestRequest,this.launchSuggest)}async initService(){return this.updateLocales(),this.launchSearch()}setQuery(e){this.store.actions.setRequestQuery(e),this.store.actions.liveQuery(e),this.store.actions.setPageNumber(1)}setContentLocale(e){var o;let n=(o=this.store.getState().locales)!==null&&o!==void 0?o:[],a=this.store.getState().request.contentLocale;if(e!=a){if(n.length>0){let i=s=>n.some(c=>c.lang==s);i(e)||(e=i(a)?a:n[0].lang)}this.store.actions.setRequestContentLocale(e),this.store.actions.setPageNumber(1),this.store.actions.setRequestFilters([])}return e}forceContentLocale(e){this.store.actions.setRequestContentLocale(e)}setPageSize(e){this.store.actions.setPageSize(e)}setPageNumber(e){this.store.actions.setPageNumber(e)}setSort(e){this.store.actions.setRequestSort(e),this.store.actions.setPageNumber(1)}setFilters(e){let o=e.filter(n=>!n.valueFilter||n.valueFilter.values.length>0);this.store.actions.setRequestFilters(o),this.store.actions.setPageNumber(1)}setClusterSortCriterion(e){this.store.actions.setRequestClusterSortCriterion(e)}setSearchInDocumentTitlesOnly(e){e?(this.store.actions.setRequestVirtualField(Xr.TITLE_ONLY),this.store.actions.setRequestScope(Qr.DOCUMENTS)):(this.store.actions.setRequestVirtualField(Xr.EVERYWHERE),this.store.actions.setRequestScope(Qr.DEFAULT))}setVirtualField(e){this.store.actions.setRequestVirtualField(e)}get searchInDocumentTitlesOnly(){return yu(this.store.getState())}clearAllFilters(){this.setFilters([]),this.store.dispatchEvent(new Jr)}addFacet(e){this.facetIds=[...this.facetIds,e]}replaceFacet(e,o){let n=this.facetIds.filter(a=>a!=e);o&&n.push(o),this.facetIds=n}get facetIds(){var e;let o=this.store.getState().request;return[...new Set([...o.facets.map(n=>n.id),...((e=o.metadataFilters)!==null&&e!==void 0?e:[]).map(n=>n.key)])]}set facetIds(e){let n=[...new Set(e)].map(a=>({id:a}));this.store.actions.setRequestFacets(n)}setFilter(e,o){this.setValueFilter(e,o)}setValueFilter(e,o){let n=this.store.getState().request.metadataFilters,a={key:e,valueFilter:{values:o,negative:!1}},i=[...n.filter(s=>!s.valueFilter),...n.filter(s=>s.valueFilter&&s.key!==a.key),a];this.setFilters(i)}setDateFilter(e,o){let n=this.store.getState().request.metadataFilters,a={key:e,dateFilter:{type:o}},i=[...n.filter(s=>!s.dateFilter),...n.filter(s=>s.dateFilter&&s.key!==a.key),a];this.setFilters(i)}removeDateFilter(e){let o=this.store.getState().request.metadataFilters,n=[...o.filter(a=>!a.dateFilter),...o.filter(a=>a.dateFilter&&a.key!==e)];this.setFilters(n)}setRangeFilter(e,o,n){let a=this.store.getState().request.metadataFilters,i={key:e,rangeFilter:{from:o,to:n}},s=[...a.filter(c=>!c.rangeFilter),...a.filter(c=>c.rangeFilter&&c.key!==i.key),i];this.setFilters(s)}removeRangeFilter(e){let o=this.store.getState().request.metadataFilters,n=[...o.filter(a=>!a.rangeFilter),...o.filter(a=>a.rangeFilter&&a.key!==e)];this.setFilters(n)}setLiveQuery(e){this.store.actions.liveQuery(e)}setRequest(e){this.store.actions.setRequest({...e,facets:this.store.getState().request.facets}),this.store.actions.liveQuery(e.query),this.store.actions.setPageNumber(1)}setScope(e){this.store.actions.setRequestScope(e)}setOtherQueryParams(e){this.store.actions.setOtherQueryParams(e)}setIgnoreEmptyQuery(e){this.ignoreEmptyQuery=e}setOpenExternalDocumentInNewTab(e){this.openExternalDocumentInNewTab=e}updateLocales(){return this.localesDebouncer.run(async()=>this.store.actions.locales((await this.service.getAvailableSearchLocales()).contentLocales))}async fetchSearchData(e){var o,n,a,i;try{if((o=this.cancelableSearch)===null||o===void 0||o.cancel(),this.store.actions.paging(void 0),this.ignoreEmptyQuery&&e.query.length==0)this.store.actions.results(void 0),this.store.actions.facets(void 0),this.store.actions.spellcheck(void 0);else{this.cancelableSearch=(0,tt.cancelable)(this.service.launchSearch(e));let s=await this.cancelableSearch;if(s.paging.currentPage<=1)this.store.actions.results(s.results),this.store.actions.facets(s.facets),this.store.actions.spellcheck(s.spellcheck);else{let c=((n=this.store.getState().results)!==null&&n!==void 0?n:[]).concat(s.results);this.store.actions.results(c),this.store.commands.clear(/^focus-result-/),this.store.commands.add({type:`focus-result-${(s.paging.currentPage-1)*((a=e.paging.perPage)!==null&&a!==void 0?a:20)+1}`})}this.store.actions.paging(s.paging)}}catch(s){s instanceof tt.CanceledPromiseError||(console.error(s),(i=this.errorHandler)===null||i===void 0||i.call(this,s))}}async fetchSuggestData(e){var o;try{(o=this.cancelableSuggest)===null||o===void 0||o.cancel(),this.cancelableSuggest=(0,tt.cancelable)(this.service.launchSuggest(e));let n=await this.cancelableSuggest;this.store.actions.suggestResults(n.suggestions)}catch(n){!(n instanceof tt.CanceledPromiseError)&&this.errorHandler&&this.errorHandler(n)}}clear(){this.store.clear()}clearResults(){this.store.actions.paging(void 0),this.store.actions.results(void 0),this.store.actions.facets(void 0),this.store.actions.spellcheck(void 0)}};var mu=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Va=class extends Event{constructor(){super("register-ft-search-component",{bubbles:!0,composed:!0})}},Yc=Symbol("registerInterval"),Wa=Symbol("registerAttempts"),gu=40;function bu(t){class e extends t{setSearchStateManager(n){this.clearStateManager(),this.stateManager=n,this.addStore(n.store,"search")}clearStateManager(){this.stateManager&&(this.removeStore(this.stateManager.store),this.stateManager=void 0)}connectedCallback(){super.connectedCallback(),this[Wa]=0,this[Yc]=window.setInterval(()=>this.tryToRegisterToContext(),50)}tryToRegisterToContext(){this.stateManager!=null||this[Wa]>gu?window.clearInterval(this[Yc]):(this[Wa]++,this.dispatchEvent(new Va))}disconnectedCallback(){super.disconnectedCallback(),this.clearStateManager()}}return mu([(0,Qc.state)()],e.prototype,"stateManager",void 0),e}var eo=class extends bu(Xc.FtLitElementRedux){};var Md=g(N());var Cr=g(D()),Io=g(N()),Tt=g(V());var Ld=g(D()),Re=g(N());var qa=g(N());var Sr=g(D()),j=g(V()),Pe=g(N());var rt=g(D()),me=g(V()),gd=g(Ga()),Tn=g(N());var ad=g(N());var rd=g(D()),wt=g(V()),od=g(N()),nd=g(pr());var Ee=g(N()),ed=g(D());var he={textColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-text-color","",Ee.designSystemVariables.colorOnSurfaceHigh),fontSize:Ee.FtCssVariableFactory.extend("--ft-checkbox-font-size","",R.fontSize),activeColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-active-color","",Ee.designSystemVariables.colorPrimary),checkColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-check-color","",Ee.designSystemVariables.colorOnPrimary),borderColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-border-color","",Ee.designSystemVariables.colorOnSurfaceMedium),disabledColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-disabled-color","",Ee.designSystemVariables.colorOnSurfaceDisabled),errorColor:Ee.FtCssVariableFactory.extend("--ft-checkbox-error-color","",Ee.designSystemVariables.colorError)},td=ed.css`
    * {
        box-sizing: border-box;
    }

    .ft-checkbox {
        box-sizing: border-box;
        color: ${he.textColor};
        font-size: ${he.fontSize};

        display: inline-flex;
        align-items: center;
        gap: 4px;
    }

    .ft-checkbox--disabled {
        color: ${he.disabledColor};
    }

    input {
        opacity: 0;
        position: absolute;
        width: 40px;
        height: 40px;
        margin: 0;
    }

    .ft-checkbox--box-container {
        position: relative;
        width: 40px;
        height: 40px;

        display: flex;
        justify-content: center;
        align-items: center;
        flex-shrink: 0;
    }

    .ft-checkbox--box {
        display: flex;
        border: 2px solid ${he.borderColor};
        border-radius: 2px;

        width: 18px;
        height: 18px;

        color: ${he.checkColor};
    }


    .ft-checkbox--checked .ft-checkbox--box,
    .ft-checkbox--indeterminate .ft-checkbox--box {
        border-color: ${he.activeColor};
        background-color: ${he.activeColor};
    }

    .ft-checkbox--disabled .ft-checkbox--box {
        border-color: ${he.disabledColor};
        background-color: transparent;
        color: ${he.disabledColor};
    }

    .ft-checkbox--checkmark {
        transition: opacity 180ms cubic-bezier(0, 0, 0.2, 1) 0ms, transform 180ms cubic-bezier(0, 0, 0.2, 1) 0ms;
        opacity: 0;
    }

    .ft-checkbox--checkmark-path {
        stroke-dashoffset: 0;
        stroke: currentcolor;
        stroke-width: 3px;
        stroke-dasharray: 30;
    }

    .ft-checkbox--checked .ft-checkbox--checkmark,
    .ft-checkbox--indeterminate .ft-checkbox--checkmark {
        opacity: 1;
    }

    .ft-checkbox.ft-checkbox--error {
        color: ${he.errorColor};
        ${(0,Ee.setVariable)(E.color,he.errorColor)};

        .ft-checkbox--box {
            border-color: ${he.errorColor};
        }

        &.ft-checkbox--checked, &.ft-checkbox--indeterminate {
            .ft-checkbox--box {
                background-color: ${he.errorColor};
            }
        }
    }
`;var or=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},ye=class extends od.FtLitElement{constructor(){super(...arguments),this.name="",this.checked=!1,this.indeterminate=!1,this.disabled=!1,this.error=!1}render(){let e={"ft-checkbox":!0,"ft-checkbox--error":this.error,"ft-checkbox--checked":this.checked,"ft-checkbox--indeterminate":this.indeterminate,"ft-checkbox--disabled":this.disabled};return rd.html`
            <label class="${(0,nd.classMap)(e)}" for="checkbox-input" part="checkbox-label">
                <div class="ft-checkbox--box-container" part="checkbox-box-container">
                    <ft-ripple part="checkbox-ripple"
                               ?disabled=${this.disabled}
                               ?primary=${this.checked||this.indeterminate}
                               unbounded>
                    </ft-ripple>
                    <div class="ft-checkbox--box" part="checkbox-box">
                        <svg class="ft-checkbox--checkmark" viewBox="0 0 24 24" part="checkbox-check">
                            <path class="ft-checkbox--checkmark-path" fill="none"
                                  d=${this.indeterminate&&!this.checked?"M2,12 22,12":"M1.73,12.91 8.1,19.28 22.79,4.59"}></path>
                        </svg>
                    </div>
                    <input type="checkbox"
                           id="checkbox-input"
                           name="${this.name}"
                           .checked=${this.checked}
                           .disabled=${this.disabled}
                           @change=${this.onChange}
                           aria-checked=${this.indeterminate?"mixed":this.checked?"true":"false"}
                    >
                </div>
                <ft-typography variant="body2" part="checkbox-body">
                    <slot></slot>
                </ft-typography>
            </label>
        `}onChange(e){e.stopPropagation(),this.checked=e.target.checked,this.indeterminate=!1,this.dispatchEvent(new CustomEvent("change",{detail:this.checked}))}contentAvailableCallback(e){var o;super.contentAvailableCallback(e),(o=this.ripple)===null||o===void 0||o.setupFor(this.container)}click(){this.input.click()}focus(){this.input.focus(),setTimeout(()=>{var e;(e=this.ripple)===null||e===void 0||e.forceFocusUpdate()},0)}};ye.elementDefinitions={"ft-ripple":H,"ft-typography":K};ye.styles=td;or([(0,wt.property)()],ye.prototype,"name",void 0);or([(0,wt.property)({type:Boolean,reflect:!0})],ye.prototype,"checked",void 0);or([(0,wt.property)({type:Boolean})],ye.prototype,"indeterminate",void 0);or([(0,wt.property)({type:Boolean})],ye.prototype,"disabled",void 0);or([(0,wt.property)({type:Boolean})],ye.prototype,"error",void 0);or([(0,wt.query)(".ft-checkbox")],ye.prototype,"container",void 0);or([(0,wt.query)("ft-ripple")],ye.prototype,"ripple",void 0);or([(0,wt.query)("input")],ye.prototype,"input",void 0);(0,ad.customElement)("ft-checkbox")(ye);var ja=g(N());var ld=g(D()),ft=g(V()),cd=g(N()),dd=g(pr());var id=g(D()),Ze=g(N());var nr={textColor:Ze.FtCssVariableFactory.extend("--ft-radio-text-color","",Ze.designSystemVariables.colorOnSurfaceHigh),fontSize:Ze.FtCssVariableFactory.extend("--ft-radio-font-size","",R.fontSize),colorPrimary:Ze.FtCssVariableFactory.external(Ze.designSystemVariables.colorPrimary,"Design system"),colorOnPrimary:Ze.FtCssVariableFactory.external(Ze.designSystemVariables.colorOnPrimary,"Design system"),borderColor:Ze.FtCssVariableFactory.extend("--ft-radio-border-color","",Ze.designSystemVariables.colorOnSurfaceMedium),colorOnSurfaceDisabled:Ze.FtCssVariableFactory.external(Ze.designSystemVariables.colorOnSurfaceDisabled,"Design system")},sd=id.css`
    * {
        box-sizing: border-box;
    }

    .ft-radio {
        box-sizing: border-box;
        color: ${nr.textColor};
        font-size: ${nr.fontSize};

        display: inline-flex;
        align-items: center;
        gap: 4px;
    }

    .ft-radio--disabled {
        color: ${nr.colorOnSurfaceDisabled};
    }

    input {
        opacity: 0;
        position: absolute;
        width: 40px;
        height: 40px;
        margin: 0;
    }

    .ft-radio--box-container {
        position: relative;
        width: 40px;
        height: 40px;

        display: flex;
        justify-content: center;
        align-items: center;
        flex-shrink: 0;
    }

    .ft-radio--box {
        border: 2px solid ${nr.borderColor};
        border-radius: 50%;

        display: flex;
        justify-content: center;
        align-items: center;

        width: 20px;
        height: 20px;
    }

    .ft-radio--box:after {
        content: " ";
        background-color: ${nr.colorPrimary};

        border-radius: 50%;

        width: 12px;
        height: 12px;

        transform: scale(0);
        transition: transform 100ms ease;
    }

    .ft-radio--checked .ft-radio--box {
        border-color: ${nr.colorPrimary};
    }


    .ft-radio--checked .ft-radio--box:after {
        transform: scale(1);
    }

    .ft-radio--disabled .ft-radio--box {
        border-color: ${nr.colorOnSurfaceDisabled};
        background-color: transparent;
    }

    .ft-radio--disabled .ft-radio--box:after {
        background-color: ${nr.colorOnSurfaceDisabled};
    }

    .ft-radio:has(:focus-visible) {
        outline: 2px solid ${Ze.designSystemVariables.colorPrimary};
        outline-offset: -2px;
    }

    .ft-radio ft-typography {
        padding-right: 2px;
    }
`;var Mt=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Nn=class extends CustomEvent{constructor(e,o){super("change",{detail:{value:e,checked:o},bubbles:!0,composed:!0})}},we=class extends cd.FtLitElement{constructor(){super(...arguments),this.value="",this.name="",this.checked=!1,this.ariaChecked="false",this.disabled=!1,this.role="radio"}render(){let e={"ft-radio":!0,"ft-radio--checked":this.checked,"ft-radio--disabled":this.disabled};return ld.html`
            <div class="${(0,dd.classMap)(e)}">
                <div class="ft-radio--box-container">
                    <ft-ripple
                        ?disabled=${this.disabled}
                        ?primary=${this.checked}
                        unbounded>
                    </ft-ripple>
                    <div class="ft-radio--box">
                    </div>
                    <input id="radio-button"
                           type="radio"
                           name="${this.name}"
                           value="${this.value}"
                           .checked=${this.checked}
                           .disabled=${this.disabled}
                           @change=${this.onChange}
                    >
                </div>
                <label for="radio-button" @click=${o=>{var n;o.stopPropagation(),o.preventDefault(),(n=this.input)===null||n===void 0||n.click()}}>
                    <ft-typography variant="body2">
                        <slot></slot>
                    </ft-typography>
                </label>
            </div>
        `}update(e){super.update(e),e.has("checked")&&(this.ariaChecked=this.checked?"true":"false")}onChange(e){e.stopPropagation(),this.checked=e.target.checked,this.dispatchEvent(new Nn(this.value,this.checked))}contentAvailableCallback(e){var o;super.contentAvailableCallback(e),(o=this.ripple)===null||o===void 0||o.setupFor(this.container)}select(){this.checked=!0,this.dispatchEvent(new Nn(this.value,this.checked))}setInputTabIndex(e){this.input&&(this.input.tabIndex=e)}focus(){var e;(e=this.input)===null||e===void 0||e.focus(),setTimeout(()=>{var o;(o=this.ripple)===null||o===void 0||o.forceFocusUpdate()},0)}};we.elementDefinitions={"ft-ripple":H,"ft-typography":K};we.styles=sd;Mt([(0,ft.property)()],we.prototype,"value",void 0);Mt([(0,ft.property)()],we.prototype,"name",void 0);Mt([(0,ft.property)({type:Boolean,reflect:!0})],we.prototype,"checked",void 0);Mt([(0,ft.property)({attribute:"aria-checked",reflect:!0})],we.prototype,"ariaChecked",void 0);Mt([(0,ft.property)({type:Boolean})],we.prototype,"disabled",void 0);Mt([(0,ft.property)({reflect:!0,attribute:"role"})],we.prototype,"role",void 0);Mt([(0,ft.query)(".ft-radio")],we.prototype,"container",void 0);Mt([(0,ft.query)("ft-ripple")],we.prototype,"ripple",void 0);Mt([(0,ft.query)("input")],we.prototype,"input",void 0);var fd=g(N()),Ut=g(V()),hd=g(D());var pd=g(D());var ud=pd.css`
    :host {
        display: block;
    }

    :host(:focus-visible) {
        outline: none;
    }
`;var to=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},it=class extends fd.FtLitElement{constructor(){super(...arguments),this.name="",this.role="radiogroup",this.tabIndex=0,this.ariaLabelledBy="",this.currentSelectedIndex=0,this.onFocus=()=>{this.tabIndex==0&&(this.tabIndex=-1,setTimeout(()=>this.focusCurrentChecked(),100))},this.onFocusOut=e=>{!this.contains(e.relatedTarget)&&(this.tabIndex=0)}}get radioButtons(){var e,o;return(o=(e=this.assignedElements)===null||e===void 0?void 0:e.flatMap(n=>n.matches("ft-radio")?[n]:[...n.querySelectorAll("ft-radio")]))!==null&&o!==void 0?o:[]}render(){return hd.html`
            <slot @slotchange=${this.onSlotChange}
                  @change=${this.onChange}
                  @keydown=${this.onKeyDown}
            ></slot>
        `}connectedCallback(){super.connectedCallback(),this.addEventListener("focus",this.onFocus),this.addEventListener("focusout",this.onFocusOut)}disconnectedCallback(){super.disconnectedCallback(),this.removeEventListener("focus",this.onFocus),this.removeEventListener("focusout",this.onFocusOut)}onSlotChange(){this.radioButtons.forEach(e=>e.name=this.name)}contentAvailableCallback(e){super.contentAvailableCallback(e),this.radioButtons.forEach(o=>o.setInputTabIndex(-1)),this.resolveCurrentSelectedIndex()}onChange(e){e.stopPropagation(),this.radioButtons.forEach(o=>o.checked=e.detail.value===o.value),this.dispatchEvent(new CustomEvent("change",{detail:e.detail.value})),this.resolveCurrentSelectedIndex()}onKeyDown(e){let o=!1;switch(e.key){case"ArrowUp":case"ArrowLeft":{o=!0;let n=this.currentSelectedIndex-1;this.radioButtons[n<0?this.radioButtons.length-1:n].select(),this.radioButtons[n<0?this.radioButtons.length-1:n].focus();break}case"ArrowDown":case"ArrowRight":{o=!0;let n=this.currentSelectedIndex+1;this.radioButtons[n>this.radioButtons.length-1?0:n].select(),this.radioButtons[n>this.radioButtons.length-1?0:n].focus();break}case"Enter":this.radioButtons[this.currentSelectedIndex].select()}o&&(e.stopPropagation(),e.preventDefault())}resolveCurrentSelectedIndex(){let e=this.radioButtons.findIndex(o=>o.checked);e==-1?(this.currentSelectedIndex=0,this.radioButtons[0].select()):this.currentSelectedIndex=e}focusCurrentChecked(){this.radioButtons[this.currentSelectedIndex].focus()}};it.elementDefinitions={};it.styles=ud;to([(0,Ut.property)()],it.prototype,"name",void 0);to([(0,Ut.property)({reflect:!0,attribute:"role"})],it.prototype,"role",void 0);to([(0,Ut.property)({reflect:!0})],it.prototype,"tabIndex",void 0);to([(0,Ut.property)({reflect:!0,attribute:"aria-labelledby"})],it.prototype,"ariaLabelledBy",void 0);to([(0,Ut.queryAssignedElements)()],it.prototype,"assignedElements",void 0);to([(0,Ut.state)()],it.prototype,"currentSelectedIndex",void 0);(0,ja.customElement)("ft-radio")(we);(0,ja.customElement)("ft-radio-group")(it);var yd=g(D()),G=g(N());var Lo={buttonMoreColor:G.FtCssVariableFactory.extend("--ft-filter-level-button-more-color","",G.designSystemVariables.colorOnSurface),borderRadiusM:G.FtCssVariableFactory.external(G.designSystemVariables.borderRadiusM,"Design system"),colorOutline:G.FtCssVariableFactory.external(G.designSystemVariables.colorOutline,"Design system"),colorOnSurface:G.FtCssVariableFactory.external(G.designSystemVariables.colorOnSurface,"Design system"),colorOnSurfaceMedium:G.FtCssVariableFactory.external(G.designSystemVariables.colorOnSurfaceMedium,"Design system"),colorOnSurfaceDisabled:G.FtCssVariableFactory.external(G.designSystemVariables.colorOnSurfaceDisabled,"Design system"),colorPrimary:G.FtCssVariableFactory.external(G.designSystemVariables.colorPrimary,"Design system"),colorOnPrimary:G.FtCssVariableFactory.external(G.designSystemVariables.colorOnPrimary,"Design system"),fontFamily:G.FtCssVariableFactory.external(Qe.fontFamily,"Body2 typography"),fontSize:G.FtCssVariableFactory.external(Qe.fontSize,"Body2 typography"),fontWeight:G.FtCssVariableFactory.external(Qe.fontWeight,"Body2 typography"),letterSpacing:G.FtCssVariableFactory.external(Qe.letterSpacing,"Body2 typography"),lineHeight:G.FtCssVariableFactory.external(Qe.lineHeight,"Body2 typography"),textTransform:G.FtCssVariableFactory.external(Qe.textTransform,"Body2 typography")},md=yd.css`
    .ft-filter-level--container {
        display: flex;
        flex-direction: column;
    }

    .ft-filter-level--container > * {
        padding: 0 10px;
    }

    .ft-filter-level--go-back {
        flex-shrink: 0;
        text-decoration: none;
        position: relative;
        border-radius: ${Lo.borderRadiusM};
        overflow: hidden;
        display: flex;
        align-items: center;
        padding: 4px 4px;
        gap: 4px;
        cursor: pointer;
        color: ${Lo.colorOnSurface};
    }

    .ft-filter-level--go-back:focus {
        outline: none;
    }

    .ft-filter-level--go-back ft-icon {
        flex-shrink: 0;
    }

    .ft-filter-level--go-back ft-typography {
        display: block;
        flex-grow: 1;
        flex-shrink: 0;
    }

    .ft-filter-level--option {
        display: flex;
        align-items: center;
        max-width: 100%;
    }

    .ft-filter-level--option ft-button {
        margin-right: -10px;
        flex-shrink: 0;
    }

    ft-button {
        ${(0,G.setVariable)(B.color,Lo.colorOnSurface)};
    }

    ft-button.ft-filter-level--display-more {
        ${(0,G.setVariable)(B.color,Lo.buttonMoreColor)};
    }

    ft-radio, ft-checkbox {
        flex-shrink: 1;
        flex-grow: 1;
        display: flex;
        max-width: calc(100% + 10px);
        margin-left: -10px;
        word-break: break-word;
    }

    .ft-filter-level--no-values {
        margin: 10px 0;
        color: ${Lo.colorOnSurfaceMedium};
    }
`;var Fe=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},ie=class extends Tn.FtLitElement{constructor(){super(...arguments),this.filterId="",this.options=[],this.multivalued=!1,this.disabled=!1,this.hideSelectedOptions=!1,this.displayCount=!1,this.preventNavigation=!1,this.filter="",this.moreValuesButtonLabel="More",this.displayedValuesLimit=0,this.displayedPages=1}get hasHiddenValues(){let e=this.limit;return e!=null&&e<this.options.length}get limit(){return this.displayedValuesLimit>0?this.displayedPages*this.displayedValuesLimit:void 0}get height(){var e,o;return(o=(e=this.container)===null||e===void 0?void 0:e.scrollHeight)!==null&&o!==void 0?o:0}focusOnBackButton(){this.elementToFocus={selector:".ft-filter-level--go-back"}}focusOnExpandButton(e){this.elementToFocus={selector:`.ft-filter-level--option ft-button[part="controls navigate-hierarchy"][data-value="${e}"]`}}focusOnFirstOption(){this.elementToFocus={selector:'.ft-filter-level--option [part~="option"]'}}render(){let e=[...this.options];this.hideSelectedOptions&&(e=e.filter(n=>!n.selected)),this.filter&&(e=e.filter(n=>n.label.toLowerCase().includes(this.filter.toLowerCase())));let o=e.slice(0,this.limit);return rt.html`
            <div class="ft-filter-level--container ${this.disabled?"ft-filter--disabled":""}">
                ${this.parent==null?null:rt.html`
                        <div tabindex="0"
                             part="controls go-back"
                             class="ft-filter-level--go-back"
                             aria-label="Back to ${this.parent.label}"
                             role="button"
                             ?disabled=${this.disabled}
                             @keyup=${this.goBackOnKeyPress}
                             @click=${this.goBackOnClick}>
                            <ft-ripple></ft-ripple>
                            <ft-icon>thin_arrow_left</ft-icon>
                            <ft-typography variant="body2">${this.parent.label}</ft-typography>
                        </div>
                    `}
                ${this.options.length===0&&this.noValuesLabel?rt.html`
                        <ft-typography class="ft-filter-level--no-values" element="span" variant="body2">
                            ${this.noValuesLabel}
                        </ft-typography>
                    `:rt.nothing}
                ${(0,gd.repeat)(o,n=>n.value,n=>{var a;return rt.html`
                            <div class="ft-filter-level--option" part="options" tabindex="-1">
                                ${this.multivalued?this.buildMultiValuedOption(n):this.buildMonoValuedOption(n)}
                                ${this.preventNavigation||n.selected||((a=n.subOptions)!==null&&a!==void 0?a:[]).length===0?rt.nothing:rt.html`
                                        <ft-button icon="thin_arrow_right"
                                                   part="controls navigate-hierarchy"
                                                   aria-label="Expand node"
                                                   data-value="${n.value}"
                                                   ?disabled=${this.disabled}
                                                   hideTooltip
                                                   @click=${()=>this.displayLevel(n)}></ft-button>
                                    `}
                            </div>
                        `})}
                ${o.length<e.length?rt.html`
                        <ft-button
                            class="ft-filter-level--display-more"
                            icon="thin_arrow"
                            dense trailingIcon
                            part="controls display-more"
                            @click=${this.displayMore}>
                            ${this.moreValuesButtonLabel}
                        </ft-button>
                    `:rt.nothing}
            </div>
        `}goBackOnKeyPress(e){(e.key==="Enter"||e.key===" ")&&this.dispatchEvent(new CustomEvent("go-back",{detail:this.parent}))}goBackOnClick(e){e.stopPropagation(),e.preventDefault(),this.dispatchEvent(new CustomEvent("go-back",{detail:this.parent}))}displayMore(){var e;let o=(e=this.limit)!==null&&e!==void 0?e:0,n=this.parent!=null;this.displayedPages++,this.elementToFocus={selector:`.ft-filter-level--option:nth-child(${o+(n?2:1)}) [part~="option"]`}}buildMultiValuedOption(e){var o;return rt.html`
            <ft-checkbox name="${this.filterId}"
                         part="multivalued-option option"
                         data-value="${e.value}"
                         .checked=${e.selected}
                         .disabled=${this.disabled}
                         .indeterminate=${(0,Tn.flatDeep)((o=e.subOptions)!==null&&o!==void 0?o:[],n=>{var a;return(a=n.subOptions)!==null&&a!==void 0?a:[]}).some(n=>n.selected)}
                         @change=${n=>this.optionsChanged(n,e)}>
                ${e.renderOption?e.renderOption:e.label}${this.displayCount?` (${e.count})`:""}
            </ft-checkbox>
        `}buildMonoValuedOption(e){return rt.html`
            <ft-radio name="${this.filterId+Math.round(Math.random()*1e6)}"
                      part="monovalued-option option"
                      data-value="${e.value}"
                      value="${e.value}"
                      .checked=${e.selected}
                      .disabled=${this.disabled}
                      @keydown=${o=>this.onRadioKeyDown(o,e)}
                      @change=${o=>this.optionsChanged(o,e)}>
                ${e.renderOption?e.renderOption:e.label}${this.displayCount?` (${e.count})`:""}
            </ft-radio>
        `}onRadioKeyDown(e,o){e.stopPropagation(),(e.key===" "||e.key==="Enter")&&(e.preventDefault(),this.optionsChanged(e,o))}optionsChanged(e,o){e.stopPropagation(),this.dispatchEvent(new CustomEvent("change",{detail:o}))}displayLevel(e){this.dispatchEvent(new CustomEvent("display-level",{detail:e}))}};ie.elementDefinitions={"ft-button":ae,"ft-ripple":H,"ft-typography":K,"ft-checkbox":ye,"ft-icon":Be,"ft-radio":we};ie.styles=md;Fe([(0,me.property)({type:String})],ie.prototype,"filterId",void 0);Fe([(0,me.property)({type:Object})],ie.prototype,"parent",void 0);Fe([(0,me.property)({type:Array})],ie.prototype,"options",void 0);Fe([(0,me.property)({type:Boolean})],ie.prototype,"multivalued",void 0);Fe([(0,me.property)({type:Boolean})],ie.prototype,"disabled",void 0);Fe([(0,me.property)({type:Boolean})],ie.prototype,"hideSelectedOptions",void 0);Fe([(0,me.property)({type:Boolean})],ie.prototype,"displayCount",void 0);Fe([(0,me.property)({type:Boolean})],ie.prototype,"preventNavigation",void 0);Fe([(0,me.property)({type:String})],ie.prototype,"filter",void 0);Fe([(0,me.property)({type:String})],ie.prototype,"moreValuesButtonLabel",void 0);Fe([(0,me.property)({type:String})],ie.prototype,"noValuesLabel",void 0);Fe([(0,me.property)({type:Number})],ie.prototype,"displayedValuesLimit",void 0);Fe([(0,me.query)(".ft-filter-level--container")],ie.prototype,"container",void 0);Fe([(0,me.state)()],ie.prototype,"radios",void 0);Fe([(0,me.state)()],ie.prototype,"displayedPages",void 0);var Od=g(N());var vd=g(D()),ot=g(V()),vr=g(N());var Sd=g(pr());var bd=g(D()),ht=g(N());var ar={buttonsColor:ht.FtCssVariableFactory.extend("--ft-snap-scroll-buttons-color","",ht.designSystemVariables.colorPrimary),buttonsZIndex:ht.FtCssVariableFactory.create("--ft-snap-scroll-buttons-z-index","","NUMBER","1"),gap:ht.FtCssVariableFactory.create("--ft-snap-scroll-gap","","SIZE","0"),colorSurface:ht.FtCssVariableFactory.external(ht.designSystemVariables.colorSurface,"Design system")},xd=bd.css`
    .ft-snap-scroll {
        box-sizing: border-box;
        position: relative;
        display: flex;

        --ft-snap-scroll-transparent-color: transparent;
    }

    .ft-snap-scroll.ft-snap-scroll--safari-fix {
        /* Safari handles "transparent" as rgba(0,0,0,0) so it's ugly in linear-gradiant with default --ft-color-surface */
        /* this value should be overridden with --ft-color-surface with alpha set to 0 when needed */
        --ft-snap-scroll-transparent-color: rgba(255, 255, 255, 0);
    }

    .ft-snap-scroll,
    .ft-snap-scroll--content {
        overflow: hidden;
    }

    .ft-snap-scroll--limit-size,
    .ft-snap-scroll--limit-size .ft-snap-scroll--content {
        width: 100%;
        height: 100%;
    }

    .ft-snap-scroll--content {
        flex-grow: 1;
        flex-shrink: 1;
        box-sizing: border-box;
        scroll-snap-align: start;
        display: flex;
        flex-wrap: nowrap;
        align-items: flex-start;
        justify-content: flex-start;
        gap: ${ar.gap};
    }

    .ft-snap-scroll--hide-scrollbar .ft-snap-scroll--content::-webkit-scrollbar {
        display: none;
    }

    .ft-snap-scroll--hide-scrollbar .ft-snap-scroll--content {
        -ms-overflow-style: none;
        scrollbar-width: none;
    }

    .ft-snap-scroll--content::slotted(*) {
        flex-shrink: 0;
        flex-grow: 1;
        max-height: 100%;
        max-width: 100%;
    }

    .ft-snap-scroll--horizontal,
    .ft-snap-scroll--horizontal .ft-snap-scroll--content {
        width: 100%;
    }

    .ft-snap-scroll--vertical,
    .ft-snap-scroll--vertical .ft-snap-scroll--content {
        height: 100%;
    }

    .ft-snap-scroll--horizontal .ft-snap-scroll--content {
        flex-direction: row;
        overflow-x: auto;
    }

    .ft-snap-scroll--vertical .ft-snap-scroll--content {
        flex-direction: column;
        overflow-y: auto;
    }

    .ft-snap-scroll--previous,
    .ft-snap-scroll--next {
        position: absolute;
        display: flex;
        z-index: ${ar.buttonsZIndex};
        opacity: 1;
        transition: background-color .5s ease-in-out, opacity .5s ease-in-out, z-index .5s ease-in-out;
        ${(0,ht.setVariable)(B.backgroundColor,"transparent")};
        ${(0,ht.setVariable)(B.color,ar.buttonsColor)};
    }

    .ft-snap-scroll--previous[hidden],
    .ft-snap-scroll--next[hidden] {
        z-index: -1;
        opacity: 0;
    }

    .ft-snap-scroll--horizontal .ft-snap-scroll--previous {
        top: 0;
        left: -1px;
        bottom: 0;
        background: linear-gradient(to right, ${ar.colorSurface} 50%, var(--ft-snap-scroll-transparent-color));
    }

    .ft-snap-scroll--vertical .ft-snap-scroll--previous {
        top: -1px;
        left: 0;
        right: 0;
        background: linear-gradient(to bottom, ${ar.colorSurface} 50%, var(--ft-snap-scroll-transparent-color));
    }

    .ft-snap-scroll--horizontal .ft-snap-scroll--next {
        top: 0;
        right: -1px;
        bottom: 0;
        background: linear-gradient(to left, ${ar.colorSurface} 50%, var(--ft-snap-scroll-transparent-color));
    }

    .ft-snap-scroll--vertical .ft-snap-scroll--next {
        left: 0;
        right: 0;
        bottom: -1px;
        background: linear-gradient(to top, ${ar.colorSurface} 50%, var(--ft-snap-scroll-transparent-color));
    }

    .ft-snap-scroll--horizontal .ft-snap-scroll--previous:hover,
    .ft-snap-scroll--horizontal .ft-snap-scroll--next:hover,
    .ft-snap-scroll--vertical .ft-snap-scroll--previous:hover,
    .ft-snap-scroll--vertical .ft-snap-scroll--next:hover {
        background-color: ${ar.colorSurface};
    }
`;var At=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Ka=class extends CustomEvent{constructor(e,o){super("current-element-change",{detail:{index:e,element:o}})}},ge=class extends vr.FtLitElement{constructor(){super(...arguments),this.horizontal=!1,this.hideScrollbar=!1,this.controls=!1,this.limitSize=!1,this.elements=[],this.currentElement=0,this.withScroll=!1,this.startReached=!0,this.endReached=!0,this.offsetAttribute="offsetTop",this.scrollAttribute="scrollTop",this.sizeAttribute="clientHeight",this.scrollSizeAttribute="scrollHeight",this.updateScrollCallback=()=>this.onScroll(),this.resizeObserver=new ResizeObserver(()=>this.scheduleUpdateScroll()),this.scrollDebouncer=new vr.Debouncer(200),this.updateScrollDebouncer=new vr.Debouncer(100)}scrollToIndex(e){this.scrollToElement(this.elements[e])}scrollIndexIntoView(e){let o=this.elements[e];if(o){let n=this.contentSlot[this.scrollAttribute]+this.contentSlot[this.sizeAttribute]-this.nextSize,a=this.contentSlot[this.scrollAttribute]+this.prevSize;(o[this.offsetAttribute]<a||o[this.offsetAttribute]+o[this.sizeAttribute]>n)&&this.scrollToElement(o)}}previous(){this.scrollToElement(this.elements[Math.max(0,this.closestIndexFromStart()-1)])}next(){this.scrollToElement(this.elements[Math.min(this.closestIndexFromStart()+1,this.elements.length-1)])}render(){let e=(0,Sd.classMap)({"ft-snap-scroll":!0,"ft-snap-scroll--horizontal":this.horizontal,"ft-snap-scroll--vertical":!this.horizontal,"ft-snap-scroll--hide-scrollbar":this.hideScrollbar,"ft-snap-scroll--limit-size":this.limitSize,"ft-snap-scroll--safari-fix":vr.isSafari}),o=this.controls&&this.withScroll;return vd.html`
            <div part="container" class="${e}">
                <ft-button
                    class="ft-snap-scroll--previous"
                    part="controls"
                    primary
                    icon="${this.horizontal?"THIN_ARROW_LEFT":"THIN_ARROW_UP"}"
                    ?hidden=${!o||this.startReached}
                    ?disabled=${!o||this.startReached}
                    @click=${this.previous}
                ></ft-button>
                <slot class="ft-snap-scroll--content"
                      part="content"
                      @slotchange=${this.onSlotChange}></slot>
                <ft-button
                    class="ft-snap-scroll--next"
                    part="controls"
                    primary
                    icon="${this.horizontal?"THIN_ARROW_RIGHT":"THIN_ARROW"}"
                    ?hidden=${!o||this.endReached}
                    ?disabled=${!o||this.endReached}
                    @click=${this.next}
                ></ft-button>
            </div>
        `}update(e){super.update(e),e.has("horizontal")&&(this.horizontal?(this.offsetAttribute="offsetLeft",this.scrollAttribute="scrollLeft",this.sizeAttribute="clientWidth",this.scrollSizeAttribute="scrollWidth"):(this.offsetAttribute="offsetTop",this.scrollAttribute="scrollTop",this.sizeAttribute="clientHeight",this.scrollSizeAttribute="scrollHeight")),e.has("currentElement")&&this.dispatchEvent(new Ka(this.currentElement,this.elements[this.currentElement]))}contentAvailableCallback(e){var o;super.contentAvailableCallback(e),this.contentSlot&&this.listenedContainer!==this.contentSlot&&(this.resizeObserver.observe(this.contentSlot),this.listenedContainer&&this.listenedContainer.removeEventListener("scroll",this.updateScrollCallback),this.listenedContainer=this.contentSlot,(o=this.listenedContainer)===null||o===void 0||o.addEventListener("scroll",this.updateScrollCallback))}onScroll(){this.scrollDebouncer.run(()=>this.snap()),this.scheduleUpdateScroll()}snap(){let e=this.closestElementFromStart();if(e!=null){let o=this.getDistanceFromStart(e);Math.abs(this.contentSlot[this.scrollAttribute]+this.contentSlot[this.sizeAttribute]-this.contentSlot[this.scrollSizeAttribute])<o&&(e=this.lastElement),this.scrollToElement(e)}}scrollToElement(e){var o,n;e&&(this.horizontal?(o=this.contentSlot)===null||o===void 0||o.scrollTo({left:this.getOffset(e)-this.controlsSize,behavior:"smooth"}):(n=this.contentSlot)===null||n===void 0||n.scrollTo({top:this.getOffset(e)-this.controlsSize,behavior:"smooth"}),this.currentElement=this.elements.indexOf(e))}onSlotChange(){var e,o;this.elements=(o=(e=this.contentSlot)===null||e===void 0?void 0:e.assignedElements().map(n=>n))!==null&&o!==void 0?o:[],this.scheduleUpdateScroll()}closestElementFromStart(){return this.elements[this.closestIndexFromStart()]}closestIndexFromStart(){let e=-1;for(let o=0;o<this.elements.length;o++)(e<0||this.getDistanceFromStart(this.elements[o])<this.getDistanceFromStart(this.elements[e]))&&(e=o);return e}scheduleUpdateScroll(){this.updateScrollDebouncer.run(()=>this.updateScroll())}updateScroll(){this.contentSlot!=null?(this.withScroll=this.contentSlot[this.scrollSizeAttribute]>this.contentSlot[this.sizeAttribute],this.startReached=this.contentSlot[this.scrollAttribute]===0,this.endReached=this.contentSlot[this.scrollAttribute]+this.contentSlot[this.sizeAttribute]+1>=this.contentSlot[this.scrollSizeAttribute]):(this.withScroll=!1,this.startReached=!0,this.endReached=!0)}get lastElement(){return this.elements[this.elements.length-1]}get firstElementOffset(){let e=this.elements[0];return e?e[this.offsetAttribute]:0}get controlsSize(){return this.controls?36:0}get nextSize(){return this.endReached?0:this.controlsSize}get prevSize(){return this.startReached?0:this.controlsSize}getOffset(e){return e[this.offsetAttribute]-this.firstElementOffset}getDistanceFromStart(e){let o=e===this.elements[0]?0:this.controlsSize;return Math.abs(this.getOffset(e)-this.contentSlot[this.scrollAttribute]-o)}};ge.elementDefinitions={"ft-button":ae};ge.styles=xd;At([(0,ot.property)({type:Boolean})],ge.prototype,"horizontal",void 0);At([(0,ot.property)({type:Boolean})],ge.prototype,"hideScrollbar",void 0);At([(0,ot.property)({type:Boolean})],ge.prototype,"controls",void 0);At([(0,ot.property)({type:Boolean})],ge.prototype,"limitSize",void 0);At([(0,ot.state)()],ge.prototype,"elements",void 0);At([(0,ot.state)()],ge.prototype,"currentElement",void 0);At([(0,ot.state)()],ge.prototype,"withScroll",void 0);At([(0,ot.state)()],ge.prototype,"startReached",void 0);At([(0,ot.state)()],ge.prototype,"endReached",void 0);At([(0,ot.query)(".ft-snap-scroll--content")],ge.prototype,"contentSlot",void 0);(0,Od.customElement)("ft-snap-scroll")(ge);var Cd=g(D()),Z=g(N());var Me={colorOutline:Z.FtCssVariableFactory.external(Z.designSystemVariables.colorOutline,"Design system"),colorOnSurface:Z.FtCssVariableFactory.external(Z.designSystemVariables.colorOnSurface,"Design system"),colorOnSurfaceMedium:Z.FtCssVariableFactory.external(Z.designSystemVariables.colorOnSurfaceMedium,"Design system"),colorPrimary:Z.FtCssVariableFactory.external(Z.designSystemVariables.colorPrimary,"Design system"),colorSurface:Z.FtCssVariableFactory.external(Z.designSystemVariables.colorSurface,"Design system"),transitionDuration:Z.FtCssVariableFactory.external(Z.designSystemVariables.transitionDuration,"Design system"),transitionTimingFunction:Z.FtCssVariableFactory.external(Z.designSystemVariables.transitionTimingFunction,"Design system"),labelColor:Z.FtCssVariableFactory.extend("--ft-filter-label-color","",Z.designSystemVariables.colorOnSurface),labelFontSize:Z.FtCssVariableFactory.extend("--ft-filter-label-font-size","",R.fontSize,"16px")},Ed=[Mo,Z.noTextInputDefaultClearButton,Cd.css`
        :host {
            display: flex;
            max-height: 100%;
            max-width: 100%;
        }

        .ft-filter--container {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            max-height: 100%;
            max-width: 100%;
        }

        .ft-filter--header {
            display: flex;
            flex-wrap: wrap;
            gap: 4px;
            flex-shrink: 0;
            padding: 0 10px;
            margin-bottom: 8px;
            align-items: center;
        }

        .ft-filter--header ft-button {
            flex-shrink: 0;
            margin-left: auto;
            ${(0,Z.setVariable)(B.iconSize,"18px")};
        }

        .filter-label {
            display: contents;
        }

        .ft-filter--label {
            display: block;
            flex-shrink: 1;
            flex-grow: 1;
            word-break: break-word;
            color: ${Me.labelColor};
            font-size: ${Me.labelFontSize};
            ${(0,Z.setVariable)(R.lineHeight,"22px")};
            ${(0,Z.setVariable)(R.fontWeight,"bold")};
        }

        .ft-filter--filter {
            flex-shrink: 0;
            display: flex;
            margin: 0;
            margin-bottom: 8px;
            padding: 0 10px;
            overflow: hidden;
            height: 32px;
            transition: height ${Me.transitionDuration} ${Me.transitionTimingFunction},
            margin ${Me.transitionDuration} ${Me.transitionTimingFunction};
            transition-delay: 500ms;
        }

        .ft-filter--filter[hidden] {
            height: 0;
            margin-bottom: 0;
        }

        input {
            display: block;
            width: 100%;
            border-radius: 4px;
            border: 1px solid ${Me.colorOutline};
            padding: 4px;
            background-color: ${Me.colorSurface};
            color: ${Me.colorOnSurface};
            outline-color: ${Me.colorPrimary};
        }

        input::placeholder {
            color: ${Me.colorOnSurfaceMedium};
        }

        input:placeholder-shown {
            text-overflow: ellipsis;
        }

        .ft-filter--values {
            flex-grow: 1;
            flex-shrink: 1;
            max-width: 100%;
            overflow-x: hidden;
            overflow-y: auto;
        }

        .ft-filter--separator {
            border-top: 1px solid ${Me.colorOutline};
            margin: 4px 10px;
        }

        .ft-filter--levels-container {
            position: relative;
            overflow: hidden;
        }

        .ft-filter--levels {
            position: relative;
            overflow: hidden;
        }

        ft-filter-level {
            width: 100%;
        }

        .ft-filter--level-left {
            height: 0;
        }

        slot:not([name]) {
            display: none;
        }
    `];var Q=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Za=class extends CustomEvent{constructor(e){super("change",{detail:e})}},z=class extends Pe.FtLitElement{constructor(){super(...arguments),this.id="",this.label="",this.filterPlaceHolder="Filter {0}",this.clearButtonLabel="Clear",this.moreValuesButtonLabel="More",this.noValuesLabel="No values available",this.options=[],this.multivalued=!1,this.disabled=!1,this.raiseSelectedOptions=!1,this.displayCount=!1,this.displayedValuesLimit=0,this.hideClearButton=!1,this.lastLevelHasHiddenvalues=!1,this.withScroll=!1,this.filter="",this.displayedLevels=[],this.scrollResizeObserver=new ResizeObserver(()=>this.updateScroll()),this.levelsScrollDebouncer=new Pe.Debouncer(300),this.changeDebouncer=new Pe.Debouncer(10),this.lastDispatchedValues=[]}get flatOptions(){return(0,Pe.flatDeep)(this.options,e=>{var o;return(o=e.subOptions)!==null&&o!==void 0?o:[]})}get childrenFilteredFlatOptions(){return(0,Pe.flatDeep)(this.options,e=>{var o;return e.selected?[]:(o=e.subOptions)!==null&&o!==void 0?o:[]})}get selectedValues(){return this.childrenFilteredFlatOptions.filter(e=>e.selected).map(e=>e.value)}render(){let e=this.flatOptions.some(a=>a.selected),o=this.withScroll||this.filter||this.lastLevelHasHiddenvalues,n=this.filterPlaceHolder.replace("{0}",this.label);return Sr.html`
            <div class="ft-filter--container ${this.disabled?"ft-filter--disabled":""}"
                 part="container">
                ${!this.label&&!e?null:Sr.html`

                    <div class="ft-filter--header" part="header">
                        <div class="filter-label" id="id-group-${this.id}">
                            <ft-typography class="ft-filter--label" variant="overline" part="label">
                                ${this.label}
                            </ft-typography>
                            <slot name="label"></slot>
                        </div>
                        ${e&&!this.hideClearButton?Sr.html`
                            <ft-button icon="close" dense @click=${()=>{this.clear(),this.focusOnFirstOption()}} part="clear-button">
                                ${this.clearButtonLabel}
                            </ft-button>
                        `:null}
                    </div>
                `}
                <div class="ft-filter--filter" ?hidden=${!o}>
                    <input type="search"
                           part="input"
                           class="ft-typography--caption"
                           ?disabled=${!o}
                           placeholder="${n}"
                           size="${o?n.length:0}"
                           @search=${this.onFilterChange}
                           @keyup=${this.onFilterChange}>
                </div>
                <div class="ft-filter--values" role="group" aria-labelledby="id-group-${this.id}">
                    ${this.renderLevels()}
                </div>
                <slot class="ft-filter--slot"
                      @slotchange=${this.updateOptionsFromSlot}
                      @option-change=${this.optionsChanged}></slot>
            </div>
        `}update(e){if(super.update(e),e.has("options")){let o=new Set(this.flatOptions.map(n=>n.value));this.displayedLevels=this.displayedLevels.filter(n=>o.has(n)),this.lastDispatchedValues=this.selectedValues}}contentAvailableCallback(e){var o,n,a,i,s,c;super.contentAvailableCallback(e),this.valuesContainer&&this.scrollResizeObserver.observe(this.valuesContainer),this.container&&this.scrollResizeObserver.observe(this.container),e.has("options")&&(this.updateScroll(),(o=this.levelsContainer)===null||o===void 0||o.scrollToIndex(this.displayedLevels.length)),e.has("slideIn")&&this.slideIn&&((n=this.levelsContainer)===null||n===void 0||n.next(),setTimeout(()=>{this.slideIn=void 0},300)),e.has("slideOut")&&this.slideOut&&((a=this.levelsContainer)===null||a===void 0||a.previous(),setTimeout(()=>{this.displayedLevels.pop(),this.slideOut=void 0},300)),this.lastLevelHasHiddenvalues=(c=(s=(i=this.shadowRoot)===null||i===void 0?void 0:i.querySelector(".ft-filter--levels ft-filter-level:last-child"))===null||s===void 0?void 0:s.hasHiddenValues)!==null&&c!==void 0?c:!1}renderLevels(){let e=this.flatOptions,o=e.filter(i=>i.selected),n=this.slideIn||this.slideOut?this.displayedLevels.length-2:this.displayedLevels.length-1,a=n<0?"ft-filter--level-center":"ft-filter--level-left";return Sr.html`
            ${this.raiseSelectedOptions&&o.length>0?Sr.html`
                    <ft-filter-level
                        filterId="${this.id}"
                        ?multivalued=${this.multivalued}
                        ?disabled=${this.disabled}
                        ?displayCount="${this.displayCount}"
                        preventNavigation
                        .options=${o}
                        @change=${this.onChange}
                        part="values selected-values"
                        .exportpartsPrefixes=${["values","selected-values"]}
                    ></ft-filter-level>
                    <div class="ft-filter--separator">
                `:null}
            <ft-snap-scroll horizontal hideScrollbar
                            class="ft-filter--levels"
                            @current-element-change=${i=>this.levelsScrollDebouncer.run(()=>{for(;i.detail.index<this.displayedLevels.length;)this.displayedLevels.pop();this.requestUpdate()})}>
                ${this.renderLevel(a,this.options)}
                ${this.displayedLevels.map(i=>e.find(s=>s.value===i)).map((i,s)=>{var c;let p=i?.value===this.slideIn||i?.value===this.slideOut?"ft-filter--level-right":s===n?"ft-filter--level-center":"ft-filter--level-left";return this.renderLevel(p,(c=i?.subOptions)!==null&&c!==void 0?c:[],i)})}
            </ft-snap-scroll>
        `}renderLevel(e,o,n){return Sr.html`
            <ft-filter-level
                class="${e}"
                filterId="${this.id}"
                .filter="${this.filter}"
                moreValuesButtonLabel="${this.moreValuesButtonLabel}"
                ?multivalued=${this.multivalued}
                ?disabled=${this.disabled||e!=="ft-filter--level-center"}
                ?hideSelectedOptions=${this.raiseSelectedOptions}
                ?displayCount="${this.displayCount}"
                .parent=${n}
                .options=${o}
                .displayedValuesLimit=${this.displayedValuesLimit}
                @change=${this.onChange}
                @go-back=${this.goBack}
                @display-level=${this.onDisplayLevel}
                part="values available-values"
                .exportpartsPrefixes=${["values","available-values"]}
                noValuesLabel="${this.noValuesLabel}"
            ></ft-filter-level>
        `}goBack(e){this.slideOut=e.detail.value,(0,Pe.waitUntil)(()=>this.slideOut===void 0).then(()=>{var o;let n=(o=this.levelsContainer)===null||o===void 0?void 0:o.querySelector(".ft-filter--level-center");n?.focusOnExpandButton(e.detail.value)})}onDisplayLevel(e){this.displayedLevels.push(e.detail.value),this.slideIn=e.detail.value,(0,Pe.waitUntil)(()=>this.slideIn===void 0).then(()=>{var o;let n=(o=this.levelsContainer)===null||o===void 0?void 0:o.querySelector(".ft-filter--level-center");n?.focusOnBackButton()})}focusOnFirstOption(){(0,Pe.waitUntil)(()=>this.slideOut===void 0).then(()=>{var e;let o=(e=this.levelsContainer)===null||e===void 0?void 0:e.querySelector(".ft-filter--level-center");o?.focusOnFirstOption()})}clear(){if(this.flatOptions.forEach(e=>e.selected=!1),this.displayedLevels.length>0){let e=this.displayedLevels[this.displayedLevels.length-1];this.displayedLevels=[e],this.slideOut=e}this.optionsChanged()}onChange(e){var o;e.stopPropagation();let n=this.flatOptions.find(i=>i.value===e.detail.value);n.selected=!n.selected;let a=i=>{var s;i!==n&&(i.selected=!1),(s=i.subOptions)===null||s===void 0||s.forEach(a)};this.multivalued?(o=n.subOptions)===null||o===void 0||o.forEach(a):this.options.forEach(a),this.optionsChanged()}optionsChanged(){this.changeDebouncer.run(()=>{var e;this.sendEventIfValuesChanged(),this.requestUpdate(),(e=this.levels)===null||e===void 0||e.forEach(o=>o.requestUpdate())})}sendEventIfValuesChanged(){let e=this.selectedValues;(0,Pe.deepEqual)(this.lastDispatchedValues,e)||(this.dispatchEvent(new Za(e)),this.lastDispatchedValues=e)}updateOptionsFromSlot(e){e.stopPropagation(),this.options=this.slotElement.assignedElements().map(o=>o),this.optionsChanged()}onFilterChange(){var e,o;this.filter=(o=(e=this.filterInput)===null||e===void 0?void 0:e.value)!==null&&o!==void 0?o:""}updateScroll(){this.valuesContainer&&(this.withScroll=this.valuesContainer.scrollHeight>this.valuesContainer.clientHeight)}};z.elementDefinitions={"ft-button":ae,"ft-filter-level":ie,"ft-snap-scroll":ge,"ft-typography":K};z.styles=Ed;Q([(0,j.property)({type:String})],z.prototype,"id",void 0);Q([(0,j.property)({type:String})],z.prototype,"label",void 0);Q([(0,j.property)({type:String})],z.prototype,"filterPlaceHolder",void 0);Q([(0,j.property)({type:String})],z.prototype,"clearButtonLabel",void 0);Q([(0,j.property)({type:String})],z.prototype,"moreValuesButtonLabel",void 0);Q([(0,j.property)({type:String})],z.prototype,"noValuesLabel",void 0);Q([(0,Pe.jsonProperty)([])],z.prototype,"options",void 0);Q([(0,j.property)({type:Boolean})],z.prototype,"multivalued",void 0);Q([(0,j.property)({type:Boolean})],z.prototype,"disabled",void 0);Q([(0,j.property)({type:Boolean})],z.prototype,"raiseSelectedOptions",void 0);Q([(0,j.property)({type:Boolean})],z.prototype,"displayCount",void 0);Q([(0,j.property)({type:Number})],z.prototype,"displayedValuesLimit",void 0);Q([(0,j.property)({type:Boolean})],z.prototype,"hideClearButton",void 0);Q([(0,j.query)(".ft-filter--slot")],z.prototype,"slotElement",void 0);Q([(0,j.query)(".ft-filter--container")],z.prototype,"container",void 0);Q([(0,j.query)(".ft-filter--values")],z.prototype,"valuesContainer",void 0);Q([(0,j.query)(".ft-filter--levels")],z.prototype,"levelsContainer",void 0);Q([(0,j.state)()],z.prototype,"lastLevelHasHiddenvalues",void 0);Q([(0,j.query)(".ft-filter--filter input")],z.prototype,"filterInput",void 0);Q([(0,j.queryAll)(".ft-filter--levels ft-filter-level")],z.prototype,"levels",void 0);Q([(0,j.state)()],z.prototype,"withScroll",void 0);Q([(0,j.state)()],z.prototype,"filter",void 0);Q([(0,j.state)()],z.prototype,"slideIn",void 0);Q([(0,j.state)()],z.prototype,"slideOut",void 0);var Ln=g(N()),Or=g(V()),wd=g(D()),ro=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},yt=class extends Ln.FtLitElement{constructor(){super(...arguments),this.label="",this.value=null,this.selected=!1,this.subOptions=[]}render(){return wd.html`
            <slot class="ft-filter-option--slot" @slotchange=${this.updateSubOptionsFromSlot}></slot>
        `}updateSubOptionsFromSlot(e){e.stopPropagation(),this.subOptions=this.slotElement.assignedElements().map(o=>o)}update(e){super.update(e),this.dispatchEvent(new CustomEvent("option-change",{detail:this,bubbles:!0}))}};yt.elementDefinitions={};ro([(0,Or.property)({type:String})],yt.prototype,"label",void 0);ro([(0,Or.property)({type:Object,converter:t=>t})],yt.prototype,"value",void 0);ro([(0,Or.property)({type:Boolean,reflect:!0})],yt.prototype,"selected",void 0);ro([(0,Or.property)({type:Object})],yt.prototype,"subOptions",void 0);ro([(0,Ln.jsonProperty)({})],yt.prototype,"renderOption",void 0);ro([(0,Or.query)(".ft-filter-option--slot")],yt.prototype,"slotElement",void 0);(0,qa.customElement)("ft-filter")(z);(0,qa.customElement)("ft-filter-option")(yt);var Td=g(N());var _e=g(D()),Nd=g(pr()),zt=g(N());var Ad=g(D()),J=g(N());var Ue={expandButtonColor:J.FtCssVariableFactory.extend("--ft-tree-selector-expand-button-color","Color of the expand button",J.designSystemVariables.colorOnSurfaceMedium),expandButtonBackgroundColor:J.FtCssVariableFactory.create("--ft-tree-selector-expand-button-background-color","Background color of the expand button","COLOR","transparent"),treeLinesColor:J.FtCssVariableFactory.extend("--ft-tree-selector-line-color","Color of the tree lines",J.designSystemVariables.colorOutline),levelPadding:J.FtCssVariableFactory.create("--ft-tree-selector-level-padding","","SIZE","16px"),labelColor:J.FtCssVariableFactory.extend("--ft-tree-selector-label-color","",J.designSystemVariables.colorOnSurface),labelFontSize:J.FtCssVariableFactory.extend("--ft-tree-selector-label-font-size","",R.fontSize,"16px"),buttonColor:J.FtCssVariableFactory.extend("--ft-search-facet-button-color","",J.designSystemVariables.colorPrimary),checkboxColor:J.FtCssVariableFactory.extend("--ft-search-facet-checkbox-color","",J.designSystemVariables.colorPrimary)},Rd=Ad.css`

    [part="header"] {
        display: flex;
        align-items: center;
        gap: 12px;
        padding: 0 10px;
        flex-wrap: wrap;
    }

    [part="clear-button"] {
        flex-shrink: 0;
        margin-left: auto;
        ${(0,J.setVariable)(B.iconSize,"18px")};
    }

    [part="expand-button"] {
        flex-shrink: 0;
        ${(0,J.setVariable)(B.iconSize,"18px")};
    }

    [part="label"] {
        ${(0,J.setVariable)(R.lineHeight,"22px")};
        ${(0,J.setVariable)(R.fontWeight,"bold")};
        color: ${Ue.labelColor};
        font-size: ${Ue.labelFontSize};
        word-break: break-word;
    }

    .ft-tree-selector {
        overflow: auto;
    }

    [part="checkbox"] {
        word-break: break-word;
    }

    [part="children"] {
        position: relative;
    }

    [part="level"] > [part="children"] {
        padding-left: 14px; /* Align vertical line with the tip of the expand arrow */
    }

    [part="children"] [part="children"] {
        padding-left: calc(14px + ${Ue.levelPadding})
    }

    [part="children"] > [part="level"] > [part="actions"] {
        padding-left: ${Ue.levelPadding}
    }

    .with-expandable [part="expand"] {
        width: 28px;
    }

    [part="expand"] {
        ${(0,J.setVariable)(B.iconSize,"24px")};
        ${(0,J.setVariable)(B.horizontalPadding,"4px")};
        display: block;
        ${(0,J.setVariable)(B.color,Ue.expandButtonColor)};
        ${(0,J.setVariable)(B.backgroundColor,Ue.expandButtonBackgroundColor)};
        flex-shrink: 0;
    }

    [part="actions"] {
        display: flex;
        align-items: center;
        position: relative;
    }

    [part="level"] {
        position: relative;
    }

    [part="children"] > [part="level"] > [part="actions"]:before,
    [part="children"] > [part="level"]:after,
    [part="children"] > [part="level"]:last-child > [part="actions"]:after {
        position: absolute;
        content: "";
        left: 0;
    }


    /* Vertical lines */

    /* For all level except the last one, the vertical line is on the left of all the "[part="level"]" container to auto-scale with the content*/
    [part="children"] > [part="level"]:after {
        border-left: 1px solid ${Ue.treeLinesColor};
        height: 100%;
        top: 0;
    }

    [part="children"] > [part="level"]:last-child:after {
        border: none;
    }

    /* For the last level of a tree, the line should stop at the middle of the parent node. So we need to move it to "actions". Moving it allow the label
    to be longer than one line and the tree line to remain aline */
    [part="children"] > [part="level"]:last-child > [part="actions"]:after {
        border-left: 1px solid ${Ue.treeLinesColor};
        height: 50%;
        bottom: 50%;
    }


    /* Horizontal lines */

    /*The actions support the horizontal line, this allow the label to be longer than one line and the tree lien to remain aline */
    [part="children"] > [part="level"] > [part="actions"]:before {
        border-top: 1px solid ${Ue.treeLinesColor};
        width: calc(${Ue.levelPadding} - 2px);
        height: 100%;
        top: 50%;
    }

    [part="children"] > [part="level"].leaf > [part="actions"]:before {
        border-top: 1px solid ${Ue.treeLinesColor};
        width: calc(${Ue.levelPadding} + 26px);
        height: 100%;
        top: 50%
    }


`;var Ya=g(Ga()),Ae=g(V());var qe=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Xa=class extends CustomEvent{constructor(e){super("treenode-change",{detail:e,bubbles:!0,composed:!0})}},Qa=class extends CustomEvent{constructor(){super("treenode-clear-all",{bubbles:!0,composed:!0})}},oe=class extends zt.FtLitElement{constructor(){super(...arguments),this.userOpenedNodes=new Set,this.userClosedNodes=new Set,this.currentExpandButtonFocusedIndex=0,this.label="",this.expandLabel="Expand",this.collapseLabel="Collapse",this.expandParametrizedLabel="Expand {0}",this.collapseParametrizedLabel="Collapse {0}",this.expandAllLabel="Expand all",this.collapseAllLabel="Collapse all",this.clearLabel="Clear"}update(e){super.update(e),this.data&&this.isTreeSelectorCollapsed==null&&(this.isTreeSelectorCollapsed=this.data.rootNodes.every(o=>!this.isNodeExpanded(o)))}render(){var e;let o=this.data.rootNodes.some(n=>n.children.length>0);return _e.html`
            <div class="ft-tree-selector ${o?"with-expandable":""}">
                <div part="header">
                    ${this.label.length>0?_e.html`
                        <ft-typography variant="overline" part="label">
                            ${this.label}
                        </ft-typography>
                    `:_e.nothing}
                    ${o?_e.html`
                        <ft-button dense
                                   tooltipposition="bottom"
                                   part="expand-button"
                                   icon=${this.isTreeSelectorCollapsed?"ICON_EXPAND":"ICON_COLLAPSE"}
                                   label="${this.isTreeSelectorCollapsed?this.expandAllLabel:this.collapseAllLabel}"
                                   aria-expanded="${this.isTreeSelectorCollapsed}"
                                   @click="${()=>this.toggleExpandAll()}">
                        </ft-button>
                    `:_e.nothing}

                    ${!((e=this.data)===null||e===void 0)&&e.rootNodes.some(n=>n.selected||n.indeterminate)?_e.html`
                           <ft-button icon="close" dense @click=${()=>this.clear()} part="clear-button">
                               ${this.clearLabel}
                           </ft-button>
                       `:_e.nothing}
                </div>
                ${(0,Ya.repeat)(this.data.rootNodes,n=>n.value,n=>this.renderNode(n))}
            </div>
            </div>
        `}clear(){(0,zt.flatDeep)(this.data.rootNodes,e=>e.children).forEach(e=>{e.selected=!1,e.indeterminate=!1}),this.requestUpdate(),this.dispatchEvent(new Qa)}renderNode(e){let o=this.isNodeExpanded(e),n={expanded:o,collapsed:o,"with-expandable":this.hasExpandableChildren(e)};return _e.html`
            <div part="level" class="${e.children.length!=0?"expandable":"leaf"}"
                 data-value="${e.value}">
                <div part="actions">
                    ${this.renderOpenCloseButton(e)}
                    <ft-checkbox part="checkbox"
                                 name="${e.label}"
                                 ?checked="${e.selected}"
                                 ?indeterminate="${e.indeterminate}"
                                 @change=${a=>this.toggleNode(e,a)}>
                        ${e.label}
                    </ft-checkbox>
                </div>
                ${e.children.length!=0&&this.isNodeExpanded(e)?_e.html`
                        <div part="children" class=${(0,Nd.classMap)(n)} id=${this.getAriaControlId(e)}>
                            ${o?_e.html`${(0,Ya.repeat)(e.children,a=>a.value,a=>this.renderNode(a))}`:_e.nothing}
                        </div>`:_e.nothing}
            </div>
        `}toggleNode(e,o){return e.selected=o.detail,e.indeterminate=!1,this.requestUpdate(),this.dispatchEvent(new Xa({value:e.value,selected:o.detail}))}renderOpenCloseButton(e){if(e.children.length===0)return _e.html`
                <div part="expand"></div>
            `;let o=this.isNodeExpanded(e);return _e.html`
            <ft-button dense part="expand" tooltipposition="bottom"
                       icon=${o?"TRIANGLE_BOTTOM":"TRIANGLE_RIGHT"}
                       label="${o?this.collapseLabel:this.expandLabel}"
                       aria-label="${zt.ParametrizedLabelResolver.replaceParameters(o?this.collapseParametrizedLabel:this.expandParametrizedLabel,e.label)}"
                       aria-expanded="${o}"
                       aria-control=${this.getAriaControlId(e)}
                       @keydown="${n=>this.onKeydown(n,e)}"
                       @click="${()=>this.userChangeNodeExpandStatus(!o,e.value)}">
            </ft-button>
        `}userChangeNodeExpandStatus(e,o){e?this.userClosedNodes.has(o)?this.userClosedNodes.delete(o):this.userOpenedNodes.add(o):this.userOpenedNodes.has(o)?this.userOpenedNodes.delete(o):this.userClosedNodes.add(o),this.requestUpdate()}onKeydown(e,o){let n=!1;switch(e.key){case"ArrowDown":this.focusNextButton(e.target),n=!0;break;case"ArrowUp":this.focusPreviousButton(e.target),n=!0;break;case"ArrowRight":this.isNodeExpanded(o)||this.userChangeNodeExpandStatus(!0,o.value),n=!0;break;case"ArrowLeft":this.isNodeExpanded(o)&&this.userChangeNodeExpandStatus(!1,o.value),n=!0;break}n&&(e.stopPropagation(),e.preventDefault())}focusPreviousButton(e){let o=this.currentLevelExpandButtons.indexOf(e);this.currentLevelExpandButtons[o==0?this.currentLevelExpandButtons.length-1:o-1].focus()}focusNextButton(e){let o=[...this.currentLevelExpandButtons],n=o.indexOf(e);o[n==o.length-1?0:n+1].focus()}isNodeExpanded(e){return!this.userClosedNodes.has(e.value)&&(e.expanded||this.userOpenedNodes.has(e.value))}hasExpandableChildren(e){return e.children.some(o=>o.children.length>0)}toggleExpandAll(){this.isTreeSelectorCollapsed?this.expandAll():this.collapseAll()}expandAll(){this.userClosedNodes=new Set,this.userOpenedNodes=new Set(this.data.rootNodes.flatMap(e=>this.getAllClosedNodes(e))),this.isTreeSelectorCollapsed=!1}getAllClosedNodes(e){return e.children.length!==0?[...e.expanded?[]:[e.value],...e.children.flatMap(o=>this.getAllClosedNodes(o))]:[]}collapseAll(){this.userOpenedNodes=new Set,this.userClosedNodes=new Set(this.data.rootNodes.filter(e=>e.expanded).map(e=>e.value)),this.isTreeSelectorCollapsed=!0}getAriaControlId(e){return e.value.replace(" ","").replace("|","-")+"-children"}};oe.elementDefinitions={"ft-checkbox":ye,"ft-typography":K,"ft-button":ae};oe.styles=Rd;qe([(0,Ae.property)()],oe.prototype,"data",void 0);qe([(0,Ae.state)({hasChanged:zt.hasChanged})],oe.prototype,"userOpenedNodes",void 0);qe([(0,Ae.state)({hasChanged:zt.hasChanged})],oe.prototype,"userClosedNodes",void 0);qe([(0,Ae.queryAll)("[part='expand']")],oe.prototype,"currentLevelExpandButtons",void 0);qe([(0,Ae.state)()],oe.prototype,"currentExpandButtonFocusedIndex",void 0);qe([(0,Ae.state)()],oe.prototype,"isTreeSelectorCollapsed",void 0);qe([(0,Ae.property)()],oe.prototype,"label",void 0);qe([(0,Ae.property)()],oe.prototype,"expandLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"collapseLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"expandParametrizedLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"collapseParametrizedLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"expandAllLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"collapseAllLabel",void 0);qe([(0,Ae.property)()],oe.prototype,"clearLabel",void 0);(0,Td.customElement)("ft-tree-selector")(oe);var Rt={labelFontSize:Re.FtCssVariableFactory.extend("--ft-search-facet-label-font-size","",R.fontSize,"16px"),labelColor:Re.FtCssVariableFactory.extend("--ft-search-facet-label-color","",Re.designSystemVariables.colorOnSurface),contentTextColor:Re.FtCssVariableFactory.extend("--ft-search-facet-text-color","",Re.designSystemVariables.colorOnSurfaceHigh),contentFontSize:Re.FtCssVariableFactory.extend("--ft-search-facet-text-font-size","",R.fontSize)},Id=Ld.css`
    [part="filter"] {
        ${(0,Re.setVariable)(Me.labelColor,Rt.labelColor)};
        ${(0,Re.setVariable)(Me.labelFontSize,Rt.labelFontSize)};
        ${(0,Re.setVariable)(he.textColor,Rt.contentTextColor)};
        ${(0,Re.setVariable)(he.fontSize,Rt.contentFontSize)};
    }

    [part="tree-selector"] {
        color: ${Rt.contentTextColor};
        font-size: ${Rt.contentFontSize};

        ${(0,Re.setVariable)(he.textColor,Rt.contentTextColor)};
        ${(0,Re.setVariable)(he.fontSize,Rt.contentFontSize)};
        ${(0,Re.setVariable)(Ue.labelColor,Rt.labelColor)};
        ${(0,Re.setVariable)(Ue.labelFontSize,Rt.labelFontSize)};
    }
`;function Pd(t){return t.rootNodes.map(e=>_d(e))}function _d(t,e=!1){return{label:t.label,value:t.value,selected:t.selected&&!e,subOptions:t.childNodes.map(o=>_d(o,t.selected)),count:t.totalResultsCount}}var Ye=Cn.build("designedSearchFacet");var Fd=g(N());var Bd=g(D()),Ht=g(V()),st=g(N());var kd=g(D());var Dd=kd.css`
`;var $d=g(N());function In(t){return t.filter(e=>e.key==="ft:lastEdition").filter(e=>!e.valueFilter).map(e=>e.dateFilter?e.dateFilter.type:"CUSTOM").shift()}function Pn(t){var e;return t.dateFilter?{key:t.key,type:"DATE",dateValue:t.dateFilter.type}:t.rangeFilter?{key:t.key,type:"RANGE",from:t.rangeFilter.from,to:t.rangeFilter.to}:{key:t.key,values:(e=t.valueFilter)===null||e===void 0?void 0:e.values}}var _n=class{constructor(e,o){this.store=e,this.ignoreEmptyQuery=!1,this.openExternalDocumentInNewTab=!1,this.enableAnalyticsEvents=!0,this.appName=void 0,this.appVersion=void 0,this.publication=void 0,this.sendEvent=n=>{if(!this.canSendEvent()||!n)return;let a=this.store.getState().request;this.publication==null?this.sendKhubSearchEvent(a,n):this.sendDocumentSearchEvent(a,n)},this.eventsService=o??new mn,this.resultsWatcher=(0,$d.watch)(e,n=>n.results,this.sendEvent)}setEnableAnalyticsEvents(e){this.enableAnalyticsEvents=e}setAppName(e){this.appName=e}setAppVersion(e){this.appVersion=e}setDocumentSearch(e){this.publication=e}canSendEvent(){if(this.appName==null||this.appVersion==null)return console.debug("ft-search-context.eventManager is not initialized. No events will be sent!"),!1;let{editorMode:e}=I.getState();return this.enableAnalyticsEvents&&!e}sendKhubSearchEvent(e,o){let n={offline:!1,appVersion:this.appVersion,appName:this.appName,name:Yr.KHUB__SEARCH,searchResponse:{autocorrect:this.store.getState().spellcheck!=null,nbResults:o.length},searchQuery:{terms:e.query,searchType:e.virtualField,lastUpdate:In(e.metadataFilters),facets:e.metadataFilters.map(a=>Pn(a))}};this.eventsService.sendKhubSearchEvent(n)}sendDocumentSearchEvent(e,o){let n={offline:!1,appVersion:this.appVersion,appName:this.appName,name:Yr.DOCUMENT__SEARCH,searchResponse:{autocorrect:this.store.getState().spellcheck!=null,nbResults:o.length},searchQuery:{terms:e.query,searchType:e.virtualField,lastUpdate:In(e.metadataFilters),facets:e.metadataFilters.map(a=>Pn(a))},publication:this.publication};this.eventsService.sendDocumentSearchEvent(n)}sendResultClickedEvent(e,o){if(!this.canSendEvent())return;let n=this.store.getState().request,a;e.type==xr.TOPIC&&(a={tocId:e.topic.tocId,title:e.topic.title});let i={offline:!1,appVersion:this.appVersion,appName:this.appName,name:Yr.SEARCH_PAGE__SELECT,searchQuery:{terms:n.query,searchType:n.virtualField,lastUpdate:In(n.metadataFilters),facets:n.metadataFilters.map(s=>Pn(s))},searchResult:{rank:o,type:e.type,document:this.convertDocument(e),topic:a},externalLink:this.convertExternalLink(e)};this.eventsService.sendSearchPageSelectEvent(i)}convertDocument(e){switch(e.type){case xr.MAP:return{id:e.map.mapId,title:e.map.title,type:qr.STRUCTURED_DOCUMENT,metadata:e.map.metadata};case xr.TOPIC:return{id:e.topic.mapId,title:e.topic.mapTitle,type:qr.STRUCTURED_DOCUMENT,metadata:e.topic.metadata};case xr.DOCUMENT:return{id:e.document.documentId,title:e.document.title,type:qr.UNSTRUCTURED_DOCUMENT,metadata:e.document.metadata,mimeType:e.document.mimeType};default:throw new TypeError("Unknown type "+e.type)}}convertExternalLink(e){var o,n,a,i,s;return(i=(n=(o=e.map)===null||o===void 0?void 0:o.originUrl)!==null&&n!==void 0?n:(a=e.topic)===null||a===void 0?void 0:a.originUrl)!==null&&i!==void 0?i:(s=e.document)===null||s===void 0?void 0:s.originUrl}};var ke=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},Ja=class extends CustomEvent{constructor(e){super("ft-search-load-error",{detail:e})}},ei=class extends CustomEvent{constructor(e){super("ft-search-request-change",{detail:e})}},ti=class extends CustomEvent{constructor(e,o,n){super("ft-search-results-change",{detail:{request:e,paging:o,spellcheck:n}})}},ne=class extends st.FtLitElementRedux{get stateManager(){if(this._stateManager==null){let e=this.searchServiceProvider?this.searchServiceProvider():void 0;this._stateManager=To.build(this.id||(""+Math.round(Math.random()*999e3)).padStart(6,"0"),e),this._stateManager.errorHandler=o=>this.handleLoadError(o),this.addStore(this.stateManager.store,"search")}return this._stateManager}get eventManager(){return this._eventManager==null&&(this._eventManager=new _n(this.stateManager.store)),this._eventManager}constructor(){super(),this.query="",this.pageSize=20,this.searchInDocumentTitlesOnly=!1,this.ignoreEmptyQuery=!1,this.openExternalDocumentInNewTab=!1,this.filters=[],this.sort=[],this.otherQueryParams={},this.addStore(I)}render(){return Bd.html`
            <slot @register-ft-search-component=${this.registerComponent} @ft-search-result-click="${this.onResultClicked}"></slot>
        `}update(e){super.update(e),e.has("query")&&this.query!==void 0&&this.stateManager.setQuery(this.query),e.has("contentLocale")&&this.contentLocale!==void 0&&this.stateManager.forceContentLocale(this.contentLocale),e.has("filters")&&this.filters!==void 0&&this.stateManager.setFilters(this.filters),e.has("sort")&&this.sort!==void 0&&this.stateManager.setSort(this.sort),e.has("pageSize")&&this.pageSize!==void 0&&this.stateManager.setPageSize(this.pageSize),e.has("searchInDocumentTitlesOnly")&&this.searchInDocumentTitlesOnly!==void 0&&this.stateManager.setSearchInDocumentTitlesOnly(this.searchInDocumentTitlesOnly),e.has("scope")&&this.scope!==void 0&&this.stateManager.setScope(this.scope),e.has("virtualField")&&this.virtualField!==void 0&&this.stateManager.setVirtualField(this.virtualField),e.has("ignoreEmptyQuery")&&this.ignoreEmptyQuery!==void 0&&this.stateManager.setIgnoreEmptyQuery(this.ignoreEmptyQuery),e.has("openExternalDocumentInNewTab")&&this.openExternalDocumentInNewTab!==void 0&&this.stateManager.setOpenExternalDocumentInNewTab(this.openExternalDocumentInNewTab),e.has("otherQueryParams")&&this.otherQueryParams!==void 0&&this.stateManager.setOtherQueryParams(this.otherQueryParams),e.has("session")&&this.session!==void 0&&e.get("session")!=null&&(this.stateManager.service.clearCache(),this.stateManager.initService())}connectedCallback(){super.connectedCallback(),this.stateManager.initService(),this.stateManager.clearResults(),this.stateManager.setQuery(this.query),this.stateManager.forceContentLocale(this.contentLocale),this.stateManager.setFilters(this.filters),this.stateManager.setPageSize(this.pageSize),this.stateManager.setSort(this.sort),this.stateManager.setOtherQueryParams(this.otherQueryParams)}disconnectedCallback(){super.disconnectedCallback(),this.stateManager.clearResults()}contentAvailableCallback(e){super.contentAvailableCallback(e),e.has("request")&&this.request&&this.dispatchEvent(new ei(this.request)),e.has("paging")&&this.paging!==void 0&&this.dispatchEvent(new ti(this.request,this.paging,this.autocorrect))}registerComponent(e){e.stopPropagation();let o=e.composedPath()[0];this.register(o)}register(e){e.setSearchStateManager(this.stateManager)}handleLoadError(e){this.dispatchEvent(new Ja(e))}reloadSavedSearches(){mc.clearMySearches()}clear(){this.stateManager.clear()}onResultClicked(e){this.eventManager.sendResultClickedEvent(e.detail.result,e.detail.rank)}};ne.elementDefinitions={};ne.styles=Dd;ke([(0,st.redux)({store:I.name})],ne.prototype,"session",void 0);ke([(0,Ht.property)()],ne.prototype,"query",void 0);ke([(0,Ht.property)()],ne.prototype,"contentLocale",void 0);ke([(0,Ht.property)({type:Number})],ne.prototype,"pageSize",void 0);ke([(0,Ht.property)({type:Boolean})],ne.prototype,"searchInDocumentTitlesOnly",void 0);ke([(0,Ht.property)()],ne.prototype,"scope",void 0);ke([(0,Ht.property)()],ne.prototype,"virtualField",void 0);ke([(0,Ht.property)({type:Boolean})],ne.prototype,"ignoreEmptyQuery",void 0);ke([(0,st.redux)({store:I.name})],ne.prototype,"openExternalDocumentInNewTab",void 0);ke([(0,st.jsonProperty)([])],ne.prototype,"filters",void 0);ke([(0,st.jsonProperty)([])],ne.prototype,"sort",void 0);ke([(0,st.jsonProperty)({})],ne.prototype,"otherQueryParams",void 0);ke([(0,st.redux)({store:"search"})],ne.prototype,"request",void 0);ke([(0,st.redux)({store:"search"})],ne.prototype,"paging",void 0);ke([(0,st.redux)({store:"search",selector:t=>t.spellcheck})],ne.prototype,"autocorrect",void 0);ke([(0,Ht.property)({attribute:!1})],ne.prototype,"searchServiceProvider",void 0);(0,Fd.customElement)("ft-search-context")(ne);var kn=class{addValueForFacet(e,o){let n=JSON.parse(JSON.stringify(e));return this.selectValue(n,o),n.rootNodes.flatMap(a=>this.factoriseFacetValueWhenAllChildSelected(a))}removeValueForFacet(e,o){let n=JSON.parse(JSON.stringify(e));return this.unselectValue(n,o),n.rootNodes.flatMap(a=>this.factoriseFacetValueWhenAllChildSelected(a))}selectValue(e,o){e.rootNodes.forEach(n=>this.selectEntryValue(n,o))}unselectValue(e,o){e.rootNodes.forEach(n=>this.unselectEntryValue(n,o))}selectEntryValue(e,o){e.value==o?(e.selected=!0,e.childNodes.forEach(n=>this.recurcivlySetSelected(n,!0))):o.startsWith(e.value+"|")&&e.childNodes.forEach(n=>this.selectEntryValue(n,o))}unselectEntryValue(e,o){e.value==o?(e.selected=!1,e.childNodes.forEach(n=>this.recurcivlySetSelected(n,!1))):o.startsWith(e.value+"|")&&(e.childNodes.forEach(n=>this.unselectEntryValue(n,o)),e.childNodes.some(n=>!n.selected)&&(e.selected=!1))}recurcivlySetSelected(e,o){e.selected=o,e.childNodes.forEach(n=>this.recurcivlySetSelected(n,o))}factoriseFacetValueWhenAllChildSelected(e){if(e.selected)return[e.value];{let o=e.childNodes.flatMap(n=>this.factoriseFacetValueWhenAllChildSelected(n))||[];return e.childNodes.length>0&&e.childNodes.every(n=>o.includes(n.value))?[e.value]:o}}allSubEntrySelected(e){return e.childNodes.every(o=>o.selected&&o.childNodes.every(n=>this.allSubEntrySelected(n)))}};var Nt=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},be=class extends Kr(eo){constructor(){super(...arguments),this.facetId="",this.maxValues=7,this.raiseSelectedOptions=!1,this.displayTotalResultsCount=!1,this.displayMode="cascade",this.facetHelper=new kn}setSearchStateManager(e){super.setSearchStateManager(e),this.facetId&&e.addFacet(this.facetId),this.addI18nContext(Ye),this.addStore(I)}render(){return this.facet?(this.facet.hierarchical?this.displayMode:"cascade")=="cascade"?this.renderCascadeFilter(this.facet):this.renderHierarchicalFilter(this.facet):this.editorMode?this.facetId?Cr.html`${Ye.messages.noFilterValuesAvailable()}`:Cr.html`${Ye.messages.noMetadataSelected()}`:Cr.nothing}update(e){var o,n;super.update(e),e.has("facetId")&&((o=this.stateManager)===null||o===void 0||o.replaceFacet(e.get("facetId"),this.facetId)),(e.has("facetId")||e.has("facets"))&&(this.facet=(n=this.facets)===null||n===void 0?void 0:n.find(a=>a.key==this.facetId))}onFacetValueSelected(e){var o;(o=this.stateManager)===null||o===void 0||o.setValueFilter(this.facetId,e.detail)}renderCascadeFilter(e){return Cr.html`
            <ft-filter
                part="filter"
                label="${e.label}"
                .exportpartsPrefixes=${["filter"]}
                id="${this.facetId}"
                ?multivalued=${e.multiSelectionable}
                ?displayCount=${this.displayTotalResultsCount}
                ?raiseSelectedOptions=${this.raiseSelectedOptions}
                .options=${Pd(e)}
                .displayedValuesLimit=${this.maxValues}
                filterPlaceHolder="${Ye.messages.filterInputPlaceHolder(e.label)}"
                clearButtonLabel="${Ye.messages.clearFilterButton()}"
                moreValuesButtonLabel="${Ye.messages.displayMoreFilterValuesButton()}"
                noValuesLabel="${Ye.messages.noFilterValuesAvailable()}"
                @change=${this.onFacetValueSelected}
            ></ft-filter>
        `}renderHierarchicalFilter(e){let o=this.convertFacetToTree(e);return Cr.html`
            <ft-tree-selector
                part="tree-selector"
                .exportpartsPrefixes=${["filter"]}
                data=${o}
                label=${e.label}
                expandLabel="${Ye.messages.expandLabel()}"
                collapseLabel="${Ye.messages.collapseLabel()}"
                expandParametrizedLabel="${Ye.rawMessages.expandParametrizedLabel}"
                collapseParametrizedLabel="${Ye.rawMessages.collapseParametrizedLabel}"
                expandAllLabel="${Ye.messages.expandAllLabel()}"
                collapseAllLabel="${Ye.messages.collapseAllLabel()}"
                @treenode-change="${n=>this.onTreeValueChange(e,n.detail)}"
                @treenode-clear-all="${()=>{var n;return(n=this.stateManager)===null||n===void 0?void 0:n.setValueFilter(this.facetId,[])}}"
            ></ft-tree-selector>
        `}convertFacetToTree(e){return{rootNodes:e.rootNodes.map(o=>this.convertEntryToTreeNode(o))}}convertEntryToTreeNode(e){return{value:e.value,label:e.label+(this.displayTotalResultsCount?` (${e.totalResultsCount})`:""),selected:e.selected,expanded:this.isEntryExpanded(e),indeterminate:e.descendantSelected?e.childNodes.some(o=>!o.selected):!1,children:e.childNodes.map(o=>this.convertEntryToTreeNode(o))}}isEntryExpanded(e){return!e.selected&&e.descendantSelected}onTreeValueChange(e,o){var n;(n=this.stateManager)===null||n===void 0||n.setValueFilter(this.facetId,o.selected?this.facetHelper.addValueForFacet(e,o.value):this.facetHelper.removeValueForFacet(e,o.value))}clearFacet(){var e;(e=this.filter)===null||e===void 0||e.clear()}};be.elementDefinitions={"ft-filter":z,"ft-tree-selector":oe,"ft-typography":K,"ft-button":ae};be.styles=Id;Nt([(0,Tt.property)()],be.prototype,"facetId",void 0);Nt([(0,Tt.property)({type:Number})],be.prototype,"maxValues",void 0);Nt([(0,Tt.property)({type:Boolean})],be.prototype,"raiseSelectedOptions",void 0);Nt([(0,Tt.property)({type:Boolean})],be.prototype,"displayTotalResultsCount",void 0);Nt([(0,Tt.property)()],be.prototype,"displayMode",void 0);Nt([(0,Io.redux)({store:"search"})],be.prototype,"facets",void 0);Nt([(0,Io.redux)({store:I.name})],be.prototype,"editorMode",void 0);Nt([(0,Tt.query)("ft-filter")],be.prototype,"filter",void 0);Nt([(0,Tt.state)()],be.prototype,"facet",void 0);Nt([(0,Io.reduxEventListener)({eventName:Jr.eventName})],be.prototype,"clearFacet",null);(0,Md.customElement)("ft-search-facet")(be);var ri;window.fluidTopicsExternalComponentsInfo=(ri=window.fluidTopicsExternalComponentsInfo)!==null&&ri!==void 0?ri:{};var Dn=class{static navigateTo(e){window.FluidTopicsRouterService.navigateTo(e)}static attachNavigationHook(e){window.FluidTopicsRouterService.attachNavigationHook(e)}static detachNavigationHook(){window.FluidTopicsRouterService.detachNavigationHook()}};var ze=function(t,e,o,n){var a=arguments.length,i=a<3?e:n===null?n=Object.getOwnPropertyDescriptor(e,o):n,s;if(typeof Reflect=="object"&&typeof Reflect.decorate=="function")i=Reflect.decorate(t,e,o,n);else for(var c=t.length-1;c>=0;c--)(s=t[c])&&(i=(a<3?s(i):a>3?s(e,o,i):s(e,o))||i);return a>3&&i&&Object.defineProperty(e,o,i),i},oi=class extends Yt{makeAbsolute(e){return this.api.makeAbsolute(e)}},se=class extends Kr(eo){constructor(e=new oi){super(),this.searchFacetService=e,this.facetId="",this.visibilityFacetId="",this.facetDisplay=ce.CHECKBOX,this.facetVisibility=Ne.ALWAYS,this.visibilityDepth=3,this.maxValues=7,this.raiseSelectedOptions=!1,this.displayTotalResultsCount=!1,this.displayMode="cascade",this.numberValues=this.maxValues,this.addStore(I)}render(){if(!this.isFacetVisible())return ue.nothing;switch(this.facetDisplay){case ce.CHECKBOX:return this.renderProductFacet();case ce.DEEPLINK:return this.renderFacetsAsDeeplink();case ce.BUTTON:return this.renderFacetsAsButton();default:return this.renderProductFacet()}}isFacetVisible(){var e,o;if(this.facetVisibility==Ne.ALWAYS||!this.visibilityFacet)return!0;let n=(o=(e=this.request)===null||e===void 0?void 0:e.metadataFilters)===null||o===void 0?void 0:o.find(s=>s.key==this.visibilityFacetId);return!n||!n.valueFilter?!1:this.getSelectedLevel(this.visibilityFacet.rootNodes,n.valueFilter.values[0]).length==0?!0:this.facetVisibility==Ne.ON_LEAF?!1:this.facetVisibility==Ne.ON_DEPTH?n.valueFilter.values[0].split("|").length>=this.visibilityDepth:!1}renderProductFacet(){return ue.html`
            <ft-search-facet
                facetid="${this.facetId}"
                maxValues="${this.maxValues}"
                raiseSelectedOptions="${this.raiseSelectedOptions}"
                displayTotalResultsCount="${this.displayTotalResultsCount}"
                displayMode="${this.displayMode}"
            ></ft-search-facet>`}renderFacetsAsDeeplink(){var e,o;return ue.html`
            <div class="fp-facet--deeplink">
                <ft-typography class="label" variant="overline" part="title">
                    ${(e=this.facet)===null||e===void 0?void 0:e.label}
                </ft-typography>
                <div class="facets">
                    ${(o=this.facet)===null||o===void 0?void 0:o.rootNodes.slice(0,this.numberValues).map(n=>this.renderFacetAsDeeplink(n))}
                </div>
                <div class="buttons">
                    ${this.displayLessButton()}
                    ${this.displayMoreButton()}
                </div>
            </div>
        `}displayLessButton(){return this.numberValues<=this.maxValues?ue.nothing:ue.html`
            <ft-button
                class="button"
                icon="THIN_ARROW_UP"
                dense=""
                trailingicon=""
                part="controls display-less"
                role="button"
                @click=${()=>this.numberValues=this.numberValues-this.maxValues<this.maxValues?this.maxValues:this.numberValues-this.maxValues}>Less
            </ft-button>`}displayMoreButton(){return this.facet?this.numberValues>=this.facet.rootNodes.length?ue.nothing:ue.html`
            <ft-button
                class="button"
                icon="THIN_ARROW"
                dense=""
                trailingicon=""
                part="controls display-more"
                role="button"
                @click=${()=>this.numberValues=this.numberValues+this.maxValues>this.facet.rootNodes.length?this.facet.rootNodes.length:this.numberValues+this.maxValues}
            >
                More
            </ft-button>`:ue.nothing}renderFacetAsDeeplink(e){return ue.html`
            <div class="facet">
                <a class="link"
                   href="${this.searchFacetService.makeAbsolute(`/access?${encodeURI(this.facetId)}=${encodeURI(e.value)}`)}"
                   @click=${o=>{o.preventDefault(),o.stopPropagation(),!this.editorMode&&Dn.navigateTo(`/access?${encodeURI(this.facetId)}=${encodeURI(e.value)}`)}}
                >${e.value}</a>
                ${this.displayTotalResultsCount?ue.html`<span class="count">${e.totalResultsCount}</span>`:ue.nothing}
            </div`}renderFacetsAsButton(){if(!this.facet)return ue.nothing;let e=this.getSelectedNode();if(e.length==0)return ue.nothing;let o=e.map(n=>this.renderButton(n));return ue.html`
            <div class="fp-facet--buttons">
                <ft-typography class="label" variant="overline" part="title">
                    ${this.facet.label}
                </ft-typography>
                <div class="facets">${o}</div>
            </div>`}getSelectedNode(){var e,o;if(!this.facet)return[];let n=(o=(e=this.request)===null||e===void 0?void 0:e.metadataFilters)===null||o===void 0?void 0:o.find(i=>i.key==this.facetId);if(!n||!n.valueFilter)return this.facet.rootNodes;n.valueFilter.values.length>1&&console.log("multiple selection selecting first one.");let a=n.valueFilter.values[0];return this.getSelectedLevel(this.facet.rootNodes,a)}getSelectedLevel(e,o){for(let n of e){if(o==n.value)return n.childNodes;if(o.startsWith(n.value))return this.getSelectedLevel(n.childNodes,o)}return e}renderButton(e){return ue.html`
            <ft-button class="button"
                       label="${e.label}"
                       @click=${()=>{var o;return(o=this.stateManager)===null||o===void 0?void 0:o.setValueFilter(this.facetId,[e.value])}}
            >
                <span class="button-label">${e.label}</span>
                ${this.displayTotalResultsCount?ue.html`<span class="button-count">${e.totalResultsCount}</span>`:ue.nothing}
            </ft-button>
        `}update(e){var o,n,a,i;super.update(e),this.facetId&&this.stateManager&&this.facets&&!this.facets.some(s=>s.key==this.facetId)&&((o=this.stateManager)===null||o===void 0||o.addFacet(this.facetId)),e.has("facetId")&&this.stateManager&&((n=this.stateManager)===null||n===void 0||n.replaceFacet(e.get("facetId"),this.facetId)),(e.has("facetId")||e.has("facets"))&&(this.facet=(a=this.facets)===null||a===void 0?void 0:a.find(s=>s.key==this.facetId)),(e.has("visibilityFacetId")||e.has("facets"))&&(this.facetVisibility==Ne.ON_LEAF||this.facetVisibility==Ne.ON_DEPTH)&&(this.visibilityFacet=(i=this.facets)===null||i===void 0?void 0:i.find(s=>s.key==this.visibilityFacetId)),e.has("maxValues")&&(this.numberValues=this.maxValues)}};se.elementDefinitions={"ft-search-facet":be,"ft-button":ae,"ft-typography":K};se.styles=gl;ze([(0,Xe.property)()],se.prototype,"facetId",void 0);ze([(0,Xe.property)()],se.prototype,"visibilityFacetId",void 0);ze([(0,Xe.property)()],se.prototype,"facetDisplay",void 0);ze([(0,Xe.property)()],se.prototype,"facetVisibility",void 0);ze([(0,Xe.property)({type:Number})],se.prototype,"visibilityDepth",void 0);ze([(0,Xe.property)({type:Number})],se.prototype,"maxValues",void 0);ze([(0,Xe.property)({type:Boolean})],se.prototype,"raiseSelectedOptions",void 0);ze([(0,Xe.property)({type:Boolean})],se.prototype,"displayTotalResultsCount",void 0);ze([(0,Xe.property)()],se.prototype,"displayMode",void 0);ze([(0,$n.redux)({store:"search"})],se.prototype,"request",void 0);ze([(0,$n.redux)({store:"search"})],se.prototype,"facets",void 0);ze([(0,$n.redux)({store:I.name})],se.prototype,"editorMode",void 0);ze([(0,Xe.state)()],se.prototype,"facet",void 0);ze([(0,Xe.state)()],se.prototype,"visibilityFacet",void 0);ze([(0,Xe.state)()],se.prototype,"numberValues",void 0);function Bn(t,e){return!t.some(o=>o==e.facetDisplay)}function Ud(t,e){return!t.some(o=>o==e.facetVisibility)}(0,zd.customElement)("fp-search-facet")(se);window.fluidTopicsExternalComponentsInfo["fp-search-facet"]={version:"2.0.0",contexts:["HOMEPAGE","CUSTOM","READER","TOPIC_TEMPLATE","SEARCH","SEARCH_RESULT"],displayName:"Search facet",blockContent:{style:{}},asType(){return{model:{defaults:{droppable:!1,draggableRules:["SEARCH_COMPONENT","SEARCH_COMPONENT"],tagName:"ft-search-facet",attributes:{maxValues:"7",customStylesheet:ml.cssText.replace(/ {3}/gm,"").trim()},traits:[{type:"ft-trait-single-metadata-selector",name:"facetId",label:"Metadata"},{type:"ft-trait-radio",name:"facetDisplay",options:[{value:ce.CHECKBOX,name:"Display facet as checkboxes"},{value:ce.DEEPLINK,name:"Display facet as deeplinks"},{value:ce.BUTTON,name:"Display facet as buttons"}]},{type:"ft-trait-number",name:"maxValues",label:"Initial number of displayed values",min:1,hideIf:t=>Bn([ce.CHECKBOX,ce.DEEPLINK],t)},{type:"ft-trait-checkbox",name:"raiseSelectedOptions",label:"Pin selected values to the top",hideIf:t=>Bn([ce.CHECKBOX],t)},{type:"ft-trait-checkbox",name:"displayTotalResultsCount",label:"Display unclustered result count",hideIf:t=>Bn([ce.CHECKBOX,ce.DEEPLINK,ce.BUTTON],t)},{type:"ft-trait-notice",name:"notice",content:"This count stands for all results regardless of clustering. It may differ from the Result count component.",hideIf:t=>Bn([ce.CHECKBOX,ce.DEEPLINK],t)},{type:"ft-trait-section-label",label:"Conditional visibility",name:"visibility"},{type:"ft-trait-radio",name:"facetVisibility",options:[{value:Ne.ALWAYS,name:"Always display the filter"},{value:Ne.ON_LEAF,name:"Display filter when another filter reached its final depth"},{value:Ne.ON_DEPTH,name:"Display filter when another filter reached a selected depth"}]},{type:"ft-trait-single-metadata-selector",name:"visibilityFacetId",label:"Other metadata filter",hideIf:t=>Ud([Ne.ON_LEAF,Ne.ON_DEPTH],t)},{type:"ft-trait-number",name:"visibilityDepth",label:"Other filter depth",value:3,hideIf:t=>Ud([Ne.ON_DEPTH],t)},{type:"custom-css",name:"customStylesheet"}],disabledStyles:["text"],customStyles:[{variable:je.labelColor,label:"Label text color",category:"Text"},{variable:je.labelFontSize,label:"Label font size",category:"Text"},{variable:je.contentTextColor,label:"Link text color",category:"Text"},{variable:je.contentTextColorHover,label:"Link text color on hover",category:"Text"},{variable:je.contentFontSize,label:"Link font size",category:"Text"},{variable:je.buttonColor,label:"Button text color",category:"Button"},{variable:je.buttonRippleColor,label:"Button ripple color",category:"Button"},{variable:je.buttonBackgroundColor,label:"Button background color",category:"Button"}]}}}}};})();
/*! Bundled license information:

lit-html/lit-html.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

lit-html/static.js:
  (**
   * @license
   * Copyright 2020 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/css-tag.js:
  (**
   * @license
   * Copyright 2019 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)
*/
