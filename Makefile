BUILT_ENVS= \
 common.env \
 emane-dlep.env \
 emane.env \
 emane-lte.env \
 emane-tutorial.env \
 etce.env \
 letce2.env \
 ostatistic.env \
 otestpoint.env \
 srslte.env

PYTHON=python2
DEV_ROOT=$(HOME)/dev
BIN_ROOT=$(HOME)

edit = sed \
       -e 's|@ENV_ROOT[@]|$(shell pwd)|g' \
       -e 's|@DEV_ROOT[@]|$(DEV_ROOT)|g' \
       -e 's|@BIN_ROOT[@]|$(BIN_ROOT)|g' \
       -e 's|@PYTHON[@]|$(PYTHON)|g'

all: $(BUILT_ENVS)

%.env : %.env.in
	if test -f $@; then chmod u+w $@; fi
	$(edit) $< > $@
	chmod g-w,u-w $@

clean:
	rm -f $(BUILT_ENVS)
