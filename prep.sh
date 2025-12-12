#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-


function prep_cli_init () {
  export LANG{,UAGE}=en_US.UTF-8  # make error messages search engine-friendly
  prep_fmt_config | tee --append -- "${GITHUB_OUTPUT:-/dev/null}"
}


function prep_fmt_config () {
  echo
  ( sed -nre '/^#* *[Bb]ranch [Cc]onfig$/,/^[A-Za-z]/s~^[ *]*~~p' -- README.md
    echo
    echo "$GH_OUT"
  ) | sed -nre 's~^([A-Za-z ]+)[:=] *~\L\1\E=\n~p' |
    sed -re 's~ +=~=~; s~ ~_~g; N; s~\n~~; s~\x60~~g' | sed -rf <(echo '
    s~^(build_from=)https://github\.com/([^/]+/[^/]+)/tree/(\S+|$\
      )$~\1\2\nbuild_ref=\3~
    ')
}










prep_cli_init "$@"; exit $?
