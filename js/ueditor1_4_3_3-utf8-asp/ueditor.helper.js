//實例化編輯器
//建議使用工廠方法getEditor創建和引用編輯器實例，如果在某個閉包下引用該編輯器，直接調用UE.getEditor('editor')就能拿到相關的實例
var ue = UE.getEditor('editor', { autoHeightEnabled: false });

function isFocus(e) {
    alert(UE.getEditor('editor').isFocus());
    UE.dom.domUtils.preventDefault(e)
}
function setblur(e) {
    UE.getEditor('editor').blur();
    UE.dom.domUtils.preventDefault(e)
}
function insertHtml() {
    var value = prompt('插入html代碼', '');
    UE.getEditor('editor').execCommand('insertHtml', value)
}
function createEditor() {
    UE.getEditor('editor');
}
function getAllHtml() {
    return UE.getEditor('editor').getAllHtml();
}
function getContent() {
    return UE.getEditor('editor').getContent();
}
function getPlainTxt() {
    return UE.getEditor('editor').getPlainTxt();
}
function setContent(isAppendTo) {
    UE.getEditor('editor').setContent('', isAppendTo);
}
function getText() {
    //當你點擊按鈕時編輯區域已經失去瞭焦點，如果直接用getText將不會得到內容，所以要在選回來，然後取得內容
    var range = UE.getEditor('editor').selection.getRange();
    range.select();
    return UE.getEditor('editor').selection.getText();
}
function getContentTxt() {
    return UE.getEditor('editor').getContentTxt();
}
function hasContent() {
    return UE.getEditor('editor').hasContents();
}
function setFocus() {
    UE.getEditor('editor').focus();
}
function deleteEditor() {
    UE.getEditor('editor').destroy();
}
function getLocalData() {
    alert(UE.getEditor('editor').execCommand("getlocaldata"));
}
function clearLocalData() {
    UE.getEditor('editor').execCommand("clearlocaldata");
    alert("已清空草稿箱")
}