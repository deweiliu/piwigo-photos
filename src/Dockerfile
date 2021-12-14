FROM linuxserver/piwigo

# Add video plugin https://piwigo.org/ext/extension_view.php?eid=610
RUN wget -O piwigo-videojs.zip https://github.com/Piwigo/piwigo-videojs/archive/master.zip
RUN unzip piwigo-videojs.zip
RUN mv piwigo-videojs-master /gallery/plugins/piwigo-videojs/
RUN rm -f piwigo-videojs.zip
