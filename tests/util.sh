function assert_in() {
    NEEDLE=$1
    HAYSTACK=$2
    RESULT=$(expr "$HAYSTACK" : ".*$NEEDLE")
    if [[ $RESULT == "" || $RESULT == 0 ]]; then
        true
    else
        false
    fi
}
