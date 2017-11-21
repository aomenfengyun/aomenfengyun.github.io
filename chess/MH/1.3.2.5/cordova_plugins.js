cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "index-ios.js",
        "id": "cordova-plugin-inapppurchase.PaymentsPlugin",
        "pluginId": "cordova-plugin-inapppurchase",
        "clobbers": [
            "inAppPurchase"
        ]
    }/*,
    {
        "file": "ios-wkwebview-exec.js",
        "id": "cordova-plugin-wkwebview-engine.ios-wkwebview-exec",
        "pluginId": "cordova-plugin-wkwebview-engine",
        "clobbers": [
            "cordova.exec"
        ]
    }*/
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-whitelist": "1.2.2",
    "cordova-plugin-inapppurchase": "1.0.0"/*,
    "cordova-plugin-wkwebview-engine": "1.1.0"*/
}
// BOTTOM OF METADATA
});