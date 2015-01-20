#! /bin/sh

TEMPLATE="${1}"
DIR="${2}"
FILTER="${3}"
OUTPUT="${4}"

if [ "${1}" == "" ]; then
	echo "Missing TEMPLATE name in arguments."
	exit 1
fi

if [ "${2}" == "" ]; then
	echo "Missing DIR name in arguments."
	exit 1
fi

if [ "${3}" == "" ]; then
	FILTER="*"
fi

if [ "${4}" == "" ]; then
	OUTPUT="."
fi

EXEC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
XINCLUDE="${OUTPUT}/apidoc.xinclude.xml"
XML="${OUTPUT}/apidoc.xml"

echo "Searching for files..."
"${EXEC_DIR}/dir2xinclude.sh" "${DIR}" "${FILTER}" "${XINCLUDE}" || exit 1
echo "Collating files..."
xmllint --xinclude -o "${XML}" "${XINCLUDE}" || exit 1
echo "Transforming..."
"${EXEC_DIR}/apply-template.sh" "${TEMPLATE}" "${XML}" "${OUTPUT}/apidoc.${TEMPLATE}.xml"

