#!/bin/sh
# NOTE: mustache templates need \ because they are not awesome.
exec erl -pa ebin edit deps/*/ebin -boot start_sasl \
    -sname jimii_apns \
    -s ssl \
    -s mnesia \
    -s apns \
    -s jimii_apns \
    -s reloader
