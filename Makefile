install:
	cp -rf ./grub-snap /usr/bin/
	cp -rf ./grub-snap-updater.service /usr/lib/systemd/system/
	systemctl daemon-reload
	systemctl --now enable grub-snap-updater

uninstall:
	systemctl --now disable grub-snap-updater
	rm -rf /usr/lib/systemd/system/grub-snap-updater.service
	rm -rf /usr/bin/grub-snap
	systemctl daemon-reload

.PHONY: install uninstall
