FROM linuxserver/piwigo

RUN wget -O piwigo-videojs.zip https://github.com/Piwigo/piwigo-videojs/archive/master.zip
RUN unzip piwigo-videojs.zip
RUN mv piwigo-videojs-master /plugins/piwigo-videojs
RUN rm -f piwigo-videojs.zip
