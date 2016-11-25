#! /bin/sh

if [ "$HPHP_HOME" != "" ]; then
    echo "Using HPHP_HOME $HPHP_HOME"
    /bin/sh $HPHP_HOME/hphp/tools/hphpize/hphpize
elif [ "`which hphpize 2>/dev/null`" != "" ]; then
    hphpize
else
    echo "HPHP_HOME environment variable must be set!"
    exit 1
fi

cmake . && make

