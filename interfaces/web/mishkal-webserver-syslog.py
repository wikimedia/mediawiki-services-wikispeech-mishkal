#! /usr/bin/python
# -*- coding: UTF-8 -*-
from __future__ import (absolute_import, division,
                        print_function, unicode_literals)
import sys
import os.path
import re
from glob import glob
sys.path.append(os.path.join(os.path.dirname(sys.argv[0]), '../../support/'))
#sys.path.append(os.path.join(os.path.dirname(sys.argv[0]), '../../mishkal/lib/'))
sys.path.append(os.path.join(os.path.dirname(sys.argv[0]), '../../mishkal'))
sys.path.append(os.path.join(os.path.dirname(sys.argv[0]), './lib'))
sys.path.append(os.path.join(os.path.dirname(sys.argv[0]), '../../'))
from okasha2.baseWebApp import *
from okasha2.utils import fromFs, toFs

from adawaty import *

def test():
    # this requires python-paste package
    import logging
    import logging.handlers
    from paste import httpserver

    d=fromFs(os.path.dirname(sys.argv[0]))
    LOG_FILENAME = os.path.join(d,u'tmp','logging_example.out')
    logging.basicConfig(filename=LOG_FILENAME,level=logging.INFO,)
    myLogger=logging.getLogger('MyTestWebApp')
    h=logging.handlers.SysLogHandler('/dev/log')
    h.setFormatter(logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s"))
    myLogger.addHandler(h)
    myLogger.setLevel(logging.INFO) # in production use logging.INFO
    d=fromFs(os.path.dirname(sys.argv[0]))
    app=webApp(
      os.path.join(d,u'resources/templates'),
      staticBaseDir={u'/_files/':os.path.join(d,u'resources/files')},
	  logger=myLogger
    );
    # for options see http://pythonpaste.org/modules/httpserver.html
    try:
        httpserver.serve(app, host='0.0.0.0', port='8080')
    except:
        httpserver.serve(app, host='0.0.0.0', port='8081')        

if __name__ == '__main__':
	test();
