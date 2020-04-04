all:
	echo 'Nothing to make!'

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f \
		panica \
		panica-run \
		panica-input \
		irc_on_part \
		irc_on_join \
		irc_on_connect \
		${DESTDIR}${PREFIX}/bin
	chmod 755 \
		${DESTDIR}${PREFIX}/bin/panica \
		${DESTDIR}${PREFIX}/bin/panica-run \
		${DESTDIR}${PREFIX}/bin/panica-input \
		${DESTDIR}${PREFIX}/bin/irc_on_part \
		${DESTDIR}${PREFIX}/bin/irc_on_join \
		${DESTDIR}${PREFIX}/bin/irc_on_connect
uninstall:
	rm -f \
		${DESTDIR}${PREFIX}/bin/panica \
		${DESTDIR}${PREFIX}/bin/panica-run \
		${DESTDIR}${PREFIX}/bin/panica-input \
		${DESTDIR}${PREFIX}/bin/irc_on_part \
		${DESTDIR}${PREFIX}/bin/irc_on_join \
		${DESTDIR}${PREFIX}/bin/irc_on_connect
.PHONY: all install uninstall
