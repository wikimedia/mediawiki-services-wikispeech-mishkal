#!/usr/bin/env bash

./interfaces/web/mishkal-webserver.py &
PID=$!
sleep 10
if ! kill -0 ${PID}; then
  echo "ERROR: Service process has prematurely ended!"
  exit 1
fi
wget -O /dev/null -o /dev/null "http://localhost:8080/ajaxGet?text=%D8%A5%D9%86%20%D8%AA%D9%81%D8%AA%D8%AD%20%D9%86%D9%88%D8%A7%D9%81%D8%B0%20%D8%A7%D9%84%D8%AD%D8%AC%D8%B1%D8%A9%20%D9%8A%D8%AA%D8%AC%D8%AF%D8%AF%20%D9%87%D9%88%D8%A7%D8%A4%D9%87%D8%A7%20.&action=LightStemmer"
EXIT_CODE=$?
kill ${PID}
if [ ${EXIT_CODE} -ne 0 ]; then
  echo "ERROR: Test failed!"
else
  echo "Test successful!"
fi
EXIT_CODE=$?
kill ${PID}
exit ${EXIT_CODE}

