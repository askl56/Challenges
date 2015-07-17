function garland(word) {
    for (var len=word.length, i=len-1; i>=0; i--) if (word.substring(0,i) == word.substring(len-i, len)) return i;
}
