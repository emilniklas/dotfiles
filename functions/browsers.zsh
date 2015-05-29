function safari:p() {
    open -a /Applications/Safari.app http://localhost:$1
}
function chrome:p() {
    open -a /Applications/Google\ Chrome.app http://localhost:$1
}
function dartium:p() {
    open -a /Applications/Chromium.app http://localhost:$1
}