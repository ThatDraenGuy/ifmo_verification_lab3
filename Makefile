JINJA = jinja
NUXMV = nuXmv
NUXMV_OPTS = -f

SRC_DIR = src
TARGET_DIR = target


target/%.smv: src/%.smv src/sem_base.smv
	$(JINJA) -o $@ $<


test: target/test.smv
	$(NUXMV) $(NUXMV_OPTS) $<

sem_1: target/sem_1.smv
	$(NUXMV) $(NUXMV_OPTS) $<

sem_3: target/sem_3.smv
	$(NUXMV) $(NUXMV_OPTS) $<