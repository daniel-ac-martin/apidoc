#! /bin/sh

TEMPLATE="${1}"
FILE="${2}"
OUTPUT="${3}"

if [ "${1}" == "" ]; then
	echo "Missing TEMPLATE name in arguments."
	exit 1
fi

if [ "${2}" == "" ]; then
	echo "Missing FILE name in arguments."
	exit 1
fi

if [ "${3}" == "" ]; then
	echo "Missing OUTPUT in arguments."
	exit 1
fi

EXEC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
TEMPLATE_DIR="${EXEC_DIR}/../templates"

xsltproc -o "${OUTPUT}" "${TEMPLATE_DIR}/${TEMPLATE}.xsl" "${FILE}"
