function truncate(str, maxlength) {
    if (str.length > (maxlength + 3)) {
        let substring = str.substring(0, maxlength - 3);
        str = substring + "...";
    }
}
