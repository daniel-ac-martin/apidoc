#! /bin/sh

DIR="${1}"
FILTER="${2}"
OUTPUT="${3}"

if [ "${1}" == "" ]; then
	echo "Missing DIR name in arguments."
	exit 1
fi

if [ "${2}" == "" ]; then
	FILTER="*"
fi

if [ "${3}" == "" ]; then
	OUTPUT="apidoc.xinclude.xml"
fi

EXEC_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
SCHEMA="${EXEC_DIR}/../schema/apidoc.xsd"

XINCLUDE=`cat <<EOF
<?xml version="1.0" encoding="utf-8"?>
<apidoc xmlns:xi="http://www.w3.org/2001/XInclude">

EOF`

urlencode() {
    # urlencode <string>
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c"
        esac
    done
}

for file in `find "${DIR}" -name "${FILTER}" -type f`
do
	file=`realpath "${file}"`
	
	# Validate
	xmllint --schema "${SCHEMA}" --noout "${file}" || exit 1
	
	# Add to list of xincludes
	file=`urlencode "${file}"`
	XINCLUDE=`echo -e "${XINCLUDE}\n\t<xi:include href=\"${file}\" parse=\"xml\" xpointer=\"xpointer(/apidoc/*)\" />"`
done

XINCLUDE=`echo -e "${XINCLUDE}\n</apidoc>"`

echo "${XINCLUDE}" > "${OUTPUT}"
