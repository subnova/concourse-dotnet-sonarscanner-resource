#!/bin/bash

# Adds a trailing slash to the specified base URL if it has not
# already been added before and returns the sanitized URL.
# $1 URL to be sanitized
function sanitize_base_url {
	url="${1}"
	if [[ "${url:${#url}-1:1}" != "/" ]]; then
		url+="/"
	fi
	echo "${url}"
}