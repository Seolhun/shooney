var csrfHeader=$("#csrfHeader").attr("content");
var	csrfToken=$("#csrfToken").attr("content");
var thisRoot="/shooney";
var thisHost=window.location.host;
var thisPort=window.location.port;

$.i18n.init({
    useLocalStorage: false,
    preload : ["ko_KR","en_US"],
    supportedLngs: ["ko_KR","en_US"],
    fallbackLng: 'ko_KR',
    fallbackNS: ['commons'],
    ns: {
        namespaces: ['commons']
	},
	detectLngQS: 'setLng',
	selectorAttr: 'data-lang',
    debug: true,
//    cookieName: 'i18next',
//    useCookie: true,
    useLocalStorage: true,
    localStorageExpirationTime: 60*1000,
    resGetPath: thisRoot+'/resources/language/__ns__-__lng__.json'
}, function (err, t) {
    $('.translation').i18n();
});

var changeLang = function (lang) {
    $.i18n.setLng(lang);
    $('.translation').i18n();
    location.reload();
}

/*
 * i18n Options
lng: undefined,
load: 'all',
preload: [],
lowerCaseLng: false,
returnObjectTrees: false,
fallbackLng: 'dev',
fallbackNS: [],
detectLngQS: 'setLng',
ns: 'translation',
fallbackOnNull: true,
fallbackToDefaultNS: false,
nsseparator: ':',
keyseparator: '.',
selectorAttr: 'data-lang',
debug: false,

resGetPath: 'locales/__lng__/__ns__.json',
resPostPath: 'locales/add/__lng__/__ns__',

getAsync: true,
postAsync: true,

resStore: undefined,
useLocalStorage: false,
localStorageExpirationTime: 7*24*60*60*1000,

dynamicLoad: false,
sendMissing: false,
sendMissingTo: 'fallback', // current | all
sendType: 'POST',

interpolationPrefix: '__',
interpolationSuffix: '__',
reusePrefix: '$t(',
reuseSuffix: ')',
pluralSuffix: '_plural',
pluralNotFound: ['plural_not_found', Math.random()].join(''),
contextNotFound: ['context_not_found', Math.random()].join(''),
escapeInterpolation: false,

setJqueryExt: true,
defaultValueFromContent: true,
useDataAttrOptions: false,
cookieExpirationTime: undefined,
useCookie: true,
cookieName: 'i18next',
cookieDomain: undefined,

postProcess: undefined,
parseMissingKey: undefined,

shortcutFunction: 'sprintf' // or: defaultValue
*/

/* 
 * JSP Example
<div class="translation">
	<a href="javascript:void(0);" onclick="changeLang('en_US');">영어</a> <a
		href="javascript:void(0);" onclick="changeLang('ko_KR');">한국어</a>
	<ul>
		<li data-lang="commons:common.no"></li>
	</ul>
</div>
*/
