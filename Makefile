PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

help:
	@echo "  Options:"
	@echo "    install"
	@echo "    uninstall"

install:
	@echo \  IN $(DESTDIR)$(BINDIR)/streamo
	@install -Dm755 streamo $(DESTDIR)$(BINDIR)/streamo

uninstall:
	@echo \  RM $(DESTDIR)$(BINDIR)/streamo
	@rm -f $(DESTDIR)$(BINDIR)/streamo

